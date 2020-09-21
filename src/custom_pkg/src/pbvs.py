#!/usr/bin/env python
import rospy
from std_msgs.msg import String
from std_msgs.msg import Header
import tf2_ros
import geometry_msgs.msg
import numpy as np
import math
from scipy.spatial.transform import Rotation as R
from gazebo_msgs.msg import ModelState
from geometry_msgs.msg import Pose
from geometry_msgs.msg import Point
from geometry_msgs.msg import Quaternion
from geometry_msgs.msg import Vector3
from geometry_msgs.msg import Twist
from geometry_msgs.msg import Transform
from fiducial_msgs.msg import FiducialTransform
from fiducial_msgs.msg import FiducialTransformArray
from pyquaternion import Quaternion as calcQuaternion # for calculations with quaternions
import moveit_commander
import moveit_msgs.msg
from moveit_commander.conversions import pose_to_list

# p-controller
# u(t) = Kp* e(t)
# e(t) -> camera CS -> arrControlDevTrans
# u(t) -> base CS -> finalPose

# pose camera-marker
fiduCamMarker = FiducialTransformArray(Header(), 0, [])
# target pose camera-marker without offset
arrTargetPoseCamMarker = np.array([0,0,0,0,0,0,1])

def callback(data):
	global fiduCamMarker 
	fiduCamMarker = data

def listener():

	########## INSTANTIATION ##########
	rospy.init_node('pbvs_controller', anonymous=True)
	tfBuffer = tf2_ros.Buffer()
	listener = tf2_ros.TransformListener(tfBuffer)
	group_name = "manipulator"
	move_group = moveit_commander.MoveGroupCommander(group_name)		
	move_group.allow_replanning(True)

	# for TOLERANCE check 1: rotation and translation tolerances
	rotationTolerance = 1
	translationTolerance = 0.01
	# variable to store pose for move group
	finalPose = geometry_msgs.msg.Pose()
	# k-factor for controller
	kP = 1.0
	# bool variable to optimize control flow
	no_movement = False
	cycle = 1
	# dummy variables to store last cycle information
	lastTargetQuat = np.array([0., 0., 0., 1.])
	lastTargetPosition = np.array([10, 10, 10, 1])
	# value for comparing quaternions 
	devQuat = 0.1
	
	# insert table - access scene- and robotinterface
	scene = moveit_commander.PlanningSceneInterface()
	robot = moveit_commander.RobotCommander()
	# create pose of table (= Quadermittelpunkt)
	pose_table = geometry_msgs.msg.PoseStamped()
	pose_table.header.frame_id = robot.get_planning_frame()
	pose_table.pose.position.x = 0
	pose_table.pose.position.y = 0
	pose_table.pose.position.z = -0.8
	# add table to scene and define size of the table [x, y, z]
	scene.add_box("table", pose_table, (3, 3, 1))

	
	while not rospy.is_shutdown():
		# cycle time controller in sec
		rospy.sleep(0.1)
		print('Cycle: ',cycle)

		########### SUBSCRIBE RELEVANT DATA ##########  
		try:
			# subscribe actual camera pose in world coordinate-system
			tfCamWorld = tfBuffer.lookup_transform('base', 'tool0_controller', rospy.Time())
		except (tf2_ros.LookupException, tf2_ros.ConnectivityException, tf2_ros.ExtrapolationException):
			rospy.sleep(0.1)
			continue

		# subscribe rel pose camera-marker (aruco coordinate-system)
		rospy.Subscriber('/fiducial_transforms', FiducialTransformArray, callback)		

		########## CONTROL LOGIC ##########
		if cycle > 1:
			# if 1 marker detected	
			if len(fiduCamMarker.transforms) == 1:

				########## ROTATION ##########
				# create calcQuat to extract information from fiduCamMarker (= list element [0])
				calcCamMarkerNoRotation = calcQuaternion(fiduCamMarker.transforms[0].transform.rotation.w, fiduCamMarker.transforms[0].transform.rotation.x, fiduCamMarker.transforms[0].transform.rotation.y, fiduCamMarker.transforms[0].transform.rotation.z)
				# define 180 degree rotation on x axis (transformation from aruco to camera coordinate-system)
				calcX180 = calcQuaternion(axis=[1, 0, 0], angle = np.pi)
				calcCamMarker =  calcCamMarkerNoRotation * calcX180
				rotCamMarker = R.from_quat([calcCamMarker.x, calcCamMarker.y, calcCamMarker.z, calcCamMarker.w])
				eulerCamMarker = rotCamMarker.as_euler('xyz', degrees=True)				
				# P-Controller
				eulerCamMarkerKp = eulerCamMarker * kP
				r = R.from_euler('xyz', [eulerCamMarkerKp[0], eulerCamMarkerKp[1], eulerCamMarkerKp[2]], degrees=True)
				quat = r.as_quat()
				calcCamMarker = calcQuaternion(quat[3], quat[0],quat[1], quat[2])

				########## TOLERANCE CHECK 1 ##########
				if (abs(eulerCamMarker[0]) < rotationTolerance) and (abs(eulerCamMarker[1]) < rotationTolerance) and (abs(eulerCamMarker[2]) < rotationTolerance):
					# --> no combination of rotations
					calcWorldMarker = calcQuaternion(tfCamWorld.transform.rotation.w, tfCamWorld.transform.rotation.x, tfCamWorld.transform.rotation.y, tfCamWorld.transform.rotation.z)
				else:
					# --> combine current rotation(world coordinate-system) with desired rotation(camera coordinate-system) 
					calcWorldMarker =  calcQuaternion(tfCamWorld.transform.rotation.w, tfCamWorld.transform.rotation.x, tfCamWorld.transform.rotation.y, tfCamWorld.transform.rotation.z) * calcCamMarker
				
				########## TRANSLATION ##########
				# transform rel pose to array 	
				arrCamMarkerTrans = np.array([fiduCamMarker.transforms[0].transform.translation.x, fiduCamMarker.transforms[0].transform.translation.y, fiduCamMarker.transforms[0].transform.translation.z])
				# calculate translation from camera actual to target (Bp)
				arrControlDevTrans = np.array([arrCamMarkerTrans[0]+arrTargetPoseCamMarker[0], arrCamMarkerTrans[1]+arrTargetPoseCamMarker[1], arrCamMarkerTrans[2]+arrTargetPoseCamMarker[2], 1])
				# P-Controller
				arrControlDevTrans = arrControlDevTrans * kP					
				# calculate translation from base to camera (0pBORG)
				arrWorldCamTrans = np.array([tfCamWorld.transform.translation.x, tfCamWorld.transform.translation.y, tfCamWorld.transform.translation.z])
				# determine rotation matrix (base-camera) 
				rotationWorldCam = R.from_quat([tfCamWorld.transform.rotation.x, tfCamWorld.transform.rotation.y, tfCamWorld.transform.rotation.z, tfCamWorld.transform.rotation.w]) 
				rotationMatWorldCam = rotationWorldCam.as_dcm()
				# create transformation-matrix (world-camera) 
				trafoMat = np.array([[rotationMatWorldCam[0,0], rotationMatWorldCam[0,1], rotationMatWorldCam[0,2], arrWorldCamTrans[0]],
									[rotationMatWorldCam[1,0], rotationMatWorldCam[1,1], rotationMatWorldCam[1,2], arrWorldCamTrans[1]],
									[rotationMatWorldCam[2,0], rotationMatWorldCam[2,1], rotationMatWorldCam[2,2], arrWorldCamTrans[2]],
									[0,0,0,1]])	
				# multiply trafomatrix with arrControlDevTrans (--> result in world CS)
				markerPosition = np.dot(trafoMat, arrControlDevTrans)			
				arrMarkerPosition = np.array([markerPosition[0],markerPosition[1],markerPosition[2]])	
				
				
				#################################################################################################################################

				# transform rel pose to array 	
				arrCamMarkerTrans2 = np.array([fiduCamMarker.transforms[0].transform.translation.x, fiduCamMarker.transforms[0].transform.translation.y, fiduCamMarker.transforms[0].transform.translation.z])
				# calculate translation from camera actual to target (Bp)
				arrControlDevTrans2 = np.array([arrCamMarkerTrans2[0]+arrTargetPoseCamMarker[0], arrCamMarkerTrans2[1]+arrTargetPoseCamMarker[1], arrCamMarkerTrans2[2]+arrTargetPoseCamMarker[2], 1])
				# calculate translation from base to camera (0pBORG)
				arrWorldCamTrans2 = np.array([tfCamWorld.transform.translation.x, tfCamWorld.transform.translation.y, tfCamWorld.transform.translation.z])
				# determine rotation matrix (base-camera) 
				rotationWorldCam2 = R.from_quat([tfCamWorld.transform.rotation.x, tfCamWorld.transform.rotation.y, tfCamWorld.transform.rotation.z, tfCamWorld.transform.rotation.w]) 
				rotationMatWorldCam2 = rotationWorldCam.as_dcm()
				# create transformation-matrix (world-camera) 
				trafoMat2 = np.array([[rotationMatWorldCam2[0,0], rotationMatWorldCam2[0,1], rotationMatWorldCam2[0,2], arrWorldCamTrans2[0]],
									[rotationMatWorldCam2[1,0], rotationMatWorldCam2[1,1], rotationMatWorldCam2[1,2], arrWorldCamTrans2[1]],
									[rotationMatWorldCam2[2,0], rotationMatWorldCam2[2,1], rotationMatWorldCam2[2,2], arrWorldCamTrans2[2]],
									[0,0,0,1]])
				# multiply trafomatrix with arrControlDevTrans (--> result in world CS)
				markerPosition2 = np.dot(trafoMat2, arrControlDevTrans2)			
				arrMarkerPosition2 = np.array([markerPosition2[0],markerPosition2[1],markerPosition2[2]])

				#################################################################################################################################
				
				########## OFFSET TRANSFORMATION TO BASE CS ##########
				# determine rotation matrix (base-marker/newcamera): rot =  calcWorldMarker, trans = arrMarkerPosition
				rotationWorldMarker = R.from_quat([calcWorldMarker.x, calcWorldMarker.y, calcWorldMarker.z, calcWorldMarker.w]) 
				rotationMatWorldMarker = rotationWorldMarker.as_dcm()
				trafoMatWorldMarker2 = np.array([[rotationMatWorldMarker[0,0], rotationMatWorldMarker[0,1], rotationMatWorldMarker[0,2], arrMarkerPosition2[0]],
												[rotationMatWorldMarker[1,0], rotationMatWorldMarker[1,1], rotationMatWorldMarker[1,2], arrMarkerPosition2[1]],
												[rotationMatWorldMarker[2,0], rotationMatWorldMarker[2,1], rotationMatWorldMarker[2,2], arrMarkerPosition2[2]],
												[0,0,0,1]])
				# multiply with offset (trans) 
				arrOffsetTrans = np.array([0,0,-0.5,1])
				targetPosition2 = np.dot(trafoMatWorldMarker2, arrOffsetTrans)
				arrTargetPosition2 = np.array([targetPosition2[0],targetPosition2[1],targetPosition2[2]])

				########## COORDINATE SYSTEM TRANSFORMATION (TCP->BASE) ##########
				rotateTCP = R.from_euler('xyz', [0, -90, 90], degrees=True)
				quatRotateTCP = rotateTCP.as_quat()
				calcQuatRotateTCP = calcQuaternion(quatRotateTCP[3],quatRotateTCP[0],quatRotateTCP[1],quatRotateTCP[2])	   
				calcGoalQuat = calcQuaternion([calcWorldMarker.w, calcWorldMarker.x, calcWorldMarker.y, calcWorldMarker.z]) * calcQuatRotateTCP		

				########## DEFINE FINAL POSE ##########
				finalPose.position.x = arrTargetPosition2[0] 
				finalPose.position.y = arrTargetPosition2[1] 
				finalPose.position.z = arrTargetPosition2[2]
				finalPose.orientation.x = calcGoalQuat.x
				finalPose.orientation.y = calcGoalQuat.y
				finalPose.orientation.z = calcGoalQuat.z
				finalPose.orientation.w = calcGoalQuat.w

				########## TOLERANCE CHECK 1: compare new goal to global tolerances ##########
				condition_1 = (abs(arrTargetPosition2[0] - tfCamWorld.transform.translation.x) < translationTolerance)
				condition_2 = (abs(arrTargetPosition2[1] - tfCamWorld.transform.translation.y) < translationTolerance)
				condition_3 = (abs(arrTargetPosition2[2] - tfCamWorld.transform.translation.z) < translationTolerance)
				condition_4 = (abs(eulerCamMarker[0]) < rotationTolerance)
				condition_5 = (abs(eulerCamMarker[1]) < rotationTolerance)
				condition_6 = (abs(eulerCamMarker[2]) < rotationTolerance)

				# check if new pose exceeds tolerance limits for required movement 
				if  condition_1 and condition_2 and condition_3 and condition_4 and condition_5 and condition_6:
					print('NO MOVEMENT')
					move_group.stop()
					no_movement = True
				else:					
					arrGoalQuat = np.array([calcGoalQuat.x, calcGoalQuat.y, calcGoalQuat.z, calcGoalQuat.w])
					########## TOLERANCE CHECK 2: compare new goal to goal from last cycle ##########
					condition_a = (abs(arrGoalQuat.dot(lastTargetQuat)) < 1-devQuat)
					condition_b = abs(eulerCamMarkerKp[2]) > 3*rotationTolerance
					condition_c = abs(arrTargetPosition2[0] - lastTargetPosition[0]) > 3*translationTolerance
					condition_d = abs(arrTargetPosition2[1] - lastTargetPosition[1]) > 3*translationTolerance
					condition_e = abs(arrTargetPosition2[2] - lastTargetPosition[2]) > 3*translationTolerance
					# plan new trajectory if any of the defined conditions is met
					if condition_a or condition_b or condition_c or condition_d or condition_e or no_movement:
						print("NEW TRAJECTORY")
						move_group.set_pose_target(finalPose)
						move_group.go(wait=False)
						no_movement = False
						# assign new values to last cylce variables (for next cycle tolerance check 2 can be evaluated again)
						lastTargetPosition = arrTargetPosition2				
						lastTargetQuat = np.array([calcGoalQuat.x, calcGoalQuat.y, calcGoalQuat.z, calcGoalQuat.w])	
					else:
						# resolve last pose target and do not update finalPose
						print("OLD TRAJECTORY")
						continue

				print('----------------------------------------------')
			else:
				print("NO MARKER")

		cycle += 1


if __name__== '__main__':
	listener()



