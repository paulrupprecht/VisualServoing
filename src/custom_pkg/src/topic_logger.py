#!/usr/bin/env python
import rospy
from std_msgs.msg import String
from std_msgs.msg import Header
import tf2_ros
from sensor_msgs.msg import JointState
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
from pyquaternion import Quaternion as calcQuaternion
import moveit_commander
import moveit_msgs.msg
from moveit_commander.conversions import pose_to_list
import csv
from gazebo_msgs.srv import GetModelState

with open('trajectories.csv', mode='w') as res_file:
    # create variables
    joint_positions = None

    def position_callback(states):
        global joint_positions
        joint_positions = states.position


    res_writer = csv.writer(res_file, delimiter=';')

    if __name__ == '__main__':
        
        rospy.init_node('topic_logger')
        tfBuffer = tf2_ros.Buffer()
        listener = tf2_ros.TransformListener(tfBuffer)
        pub = rospy.Publisher('/poseresult', String, queue_size=10)

        fiduCamMarker = FiducialTransformArray(Header(), 0, [])

        def callback(data):
            global fiduCamMarker 
            fiduCamMarker = data
        
        while not rospy.is_shutdown():
            try:
                robot_pose = tfBuffer.lookup_transform('base', 'tool0_controller', rospy.Time())
            except (tf2_ros.LookupException, tf2_ros.ConnectivityException, tf2_ros.ExtrapolationException):
                rospy.sleep(1)
                print('EXCEPTION')
                continue
            
            # joint states
            rospy.Subscriber("/joint_states", JointState, position_callback,queue_size=1)
            
            # subscribe rel pose camera-marker (aruco coordinate-system)
            rospy.Subscriber('/fiducial_transforms', FiducialTransformArray, callback)	
            if len(fiduCamMarker.transforms) == 1:
                ########## ROTATION ##########
                # create calcQuat to extract information from fiduCamMarker (= list element [0])
                calcCamMarkerNoRotation = calcQuaternion(fiduCamMarker.transforms[0].transform.rotation.w, fiduCamMarker.transforms[0].transform.rotation.x, fiduCamMarker.transforms[0].transform.rotation.y, fiduCamMarker.transforms[0].transform.rotation.z)
                calcX180 = calcQuaternion(axis=[1, 0, 0], angle = np.pi)
                calcCamMarker =  calcCamMarkerNoRotation * calcX180
                rotCamMarker = R.from_quat([calcCamMarker.x, calcCamMarker.y, calcCamMarker.z, calcCamMarker.w])
                eulerCamMarker = rotCamMarker.as_euler('xyz', degrees=True)	
                arrCamMarkerTrans = np.array([fiduCamMarker.transforms[0].transform.translation.x, fiduCamMarker.transforms[0].transform.translation.y, fiduCamMarker.transforms[0].transform.translation.z])
            else:
                continue


            model_coordinates = rospy.ServiceProxy( '/gazebo/get_model_state', GetModelState)             
            object_coordinates = model_coordinates("aruco_visual_marker_5", "")   

            # TIME
            actual_time = rospy.get_rostime() 

            # ROBOT
            calc_robot_pose =  calcQuaternion(robot_pose.transform.rotation.w, robot_pose.transform.rotation.x, robot_pose.transform.rotation.y, robot_pose.transform.rotation.z) 
            rot_robot_pose = R.from_quat([calc_robot_pose.x, calc_robot_pose.y, calc_robot_pose.z, calc_robot_pose.w])
            euler_robot_pose = rot_robot_pose.as_euler('xyz', degrees=True)

            # MARKER (base cs)
            z_position = object_coordinates.pose.position.z             
            y_position = object_coordinates.pose.position.y             
            x_position = object_coordinates.pose.position.x
            x_orientation = object_coordinates.pose.orientation.x
            y_orientation = object_coordinates.pose.orientation.y
            z_orientation = object_coordinates.pose.orientation.z
            w_orientation = object_coordinates.pose.orientation.w

            calcWorldMarker =  calcQuaternion(w_orientation, x_orientation, y_orientation, z_orientation) 

            ########## OFFSET TRANSFORMATION TO BASE CS ##########
            targetRotationWorldCam = R.from_quat([calcWorldMarker.x, calcWorldMarker.y, calcWorldMarker.z, calcWorldMarker.w]) 
            rotMat = targetRotationWorldCam.as_dcm()
            trafoMatWorldCamTarget = np.array([[rotMat[0,0], rotMat[0,1], rotMat[0,2], x_position],
                                            [rotMat[1,0], rotMat[1,1], rotMat[1,2], y_position],
                                            [rotMat[2,0], rotMat[2,1], rotMat[2,2], z_position],
                                            [0,0,0,1]])
                
            # multiply with offset (trans) , rotation remains identical
            arrOffsetTrans = np.array([0,0,-0.5,1])
            targetPosition = np.dot(trafoMatWorldCamTarget, arrOffsetTrans)

            # target position => goal positoin of camera based on true marker pose
            arrTargetPosition = np.array([targetPosition[0],targetPosition[1],targetPosition[2]])  

            # write data
            data = [actual_time.secs, actual_time.nsecs, robot_pose.transform.translation.x, robot_pose.transform.translation.y, robot_pose.transform.translation.z, euler_robot_pose[0], euler_robot_pose[1], euler_robot_pose[2],arrTargetPosition[0], arrTargetPosition[1], arrTargetPosition[2], eulerCamMarker[0], eulerCamMarker[1] ,eulerCamMarker[2], arrCamMarkerTrans[0], arrCamMarkerTrans[1],arrCamMarkerTrans[2], joint_positions[0],joint_positions[1],joint_positions[2],joint_positions[3],joint_positions[4],joint_positions[5]]
            res_writer.writerow(data)
            rospy.sleep(0.05)