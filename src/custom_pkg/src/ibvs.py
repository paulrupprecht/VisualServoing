#!/usr/bin/env python
import rospy
from custom_pkg.msg import floatList
from sensor_msgs.msg import JointState
import numpy as np
import math
from math import *
from std_msgs.msg import Header
from control_msgs.msg import *
from trajectory_msgs.msg import *
import cv2
from fiducial_msgs.msg import FiducialArray
from fiducial_msgs.msg import Fiducial
from fiducial_msgs.msg import FiducialTransform
from fiducial_msgs.msg import FiducialTransformArray
from moveit_msgs.msg import RobotTrajectory, Grasp, PlaceLocation, Constraints, RobotState
import moveit_commander
from moveit_commander import MoveGroupCommander
from tf.transformations import euler_from_quaternion
from geometry_msgs.msg import Transform
from geometry_msgs.msg import Quaternion
from geometry_msgs.msg import Vector3
from pyquaternion import Quaternion as calcQuaternion
from scipy.spatial.transform import Rotation as R
import tf2_ros

# create variables
joint_positions = None
pixel = None
z = float
fidu_trans = FiducialTransform()


#Client function for moveit-ur_driver-communication
JOINT_NAMES=['elbow_joint', 'shoulder_lift_joint', 'shoulder_pan_joint', 'wrist_1_joint', 'wrist_2_joint', 'wrist_3_joint']

def ur_client(position1, position2):
    if position1 and position2 != None:
        ###

        position1 = np.asarray(position1)
        position2 = np.asarray(position2)

        #integration joint_velocities with frequenz
        position2 = position2 * 0.1
        #print('joint_velocities', position2)

        position_new = position1 + (position2)

        #JointGoal
        joint_goal = move_group.get_current_joint_values()
        joint_goal[0] =  position_new[2]            
        joint_goal[1] =  position_new[1]            
        joint_goal[2] =  position_new[0]            
        joint_goal[3] =  position_new[3]            
        joint_goal[4] =  position_new[4]            
        joint_goal[5] =  position_new[5]            

        move_group.go(joint_goal, wait=False)


# get the jacobian_matrix from moveit
def get_jacobian_matrix(self, joint_values):
    """ Get the jacobian matrix of the group as a list"""
    return self._g.get_jacobian_matrix(joint_values)

# calculation of the joint_velocities
# step 1: calculation of error from desired and detected points
def joint_velocities(joint_angles, points,Z):
    if joint_angles and points != None:
        int_matrix = None
        # focallength of the camera derived from our camera object
        fl = 692.82 
        #desired points u,v from our image plane in pixel values and z = 0.5m for all points
        desired_points = np.array([339, 339, 460, 339, 460, 460, 339, 460])  #fov 1.047

        # detected point from aruco_detect_node
        detected_points = np.arange(8)
        detected_points[0] = points.x0
        detected_points[1] = points.y0
        detected_points[2] = points.x1
        detected_points[3] = points.y1
        detected_points[4] = points.x2
        detected_points[5] = points.y2
        detected_points[6] = points.x3
        detected_points[7] = points.y3

        # calculate error from desired and detected points
        error = np.subtract(desired_points, detected_points)
        #tolerance error as Mean Error for visual servoing task
        mean_error = (sum(abs(error)))/8

        if mean_error <10:
            print("NO MOVEMENT")
            error = np.array([0,0,0,0,0,0,0,0])

        error = np.matrix(error)
        error_trans = np.ndarray.transpose(error)
        #norm_error for lambda scaling
        norm_error = np.linalg.norm(error_trans)
        print ('norm_error \n', norm_error)
        # lambda scale between 0.1 and 1
        lamb1000 = norm_error / 100
        print('lamb1000: ',lamb1000)

        #############################  calculatioins of image_jacobians  #################################################################

        z1 = Z[0][2]
        z2 = Z[1][2]
        z3 = Z[2][2]
        z4 = Z[3][2]

        ##### image_jacobian at current points
        c_image_jacobian = func_image_jacobian(points.x0,points.y0,points.x1,points.y1,points.x2,points.y2,points.x3,points.y3,z1,z2,z3,z4)
        ##### image_jacobian at desired points
        d_image_jacobian = func_image_jacobian(desired_points[0],desired_points[1],desired_points[2],desired_points[3],desired_points[4],desired_points[5],desired_points[6],desired_points[7],z1,z2,z3,z4)

        ##################          Calculation of camera velocity      ################
        alpha=1
        beta=1
        
        ##### method 5 from paper "Generalizations to Control Laws of Image-Based Visual Servoing"  https://www.tandfonline.com/doi/full/10.1080/15599610903144161 ####
        A = (alpha*alpha) * (np.dot(np.transpose(c_image_jacobian), c_image_jacobian)) + (beta*beta) * (np.dot(np.transpose(d_image_jacobian), d_image_jacobian))
        B = (alpha*alpha) * c_image_jacobian + (beta*beta) * d_image_jacobian
        L = np.dot(np.linalg.inv(A), np.transpose(B))
        cam_vel = -lamb1000 * L * error_trans
        cam_vel = np.asarray(cam_vel)

        ############ Transformation from cam_world in base_world for cam_vel ######################################
        
        # COMMENT MISSING
        cam_vel_trans=np.array([cam_vel[0],cam_vel[1]*(-1) ,cam_vel[2]*(-1),0]).transpose()
        # subscribe actual camera pose world 
        try:
            tfCamWorld = tfBuffer.lookup_transform('base', 'tool0_controller', rospy.Time())
        except (tf2_ros.LookupException, tf2_ros.ConnectivityException, tf2_ros.ExtrapolationException):
            print("Could not subscribe tf information")
            
        # calculate translation from base to camera (0pBORG)
        arrWorldCamTrans = np.array([tfCamWorld.transform.translation.x, tfCamWorld.transform.translation.y, tfCamWorld.transform.translation.z])

        # determine rotation matrix (base-camera) 
        rotationWorldCam = R.from_quat([tfCamWorld.transform.rotation.x, tfCamWorld.transform.rotation.y, tfCamWorld.transform.rotation.z, tfCamWorld.transform.rotation.w]) 
        rotationMatWorldCam = rotationWorldCam.as_dcm()
        # create trafo mat 
        trafoMat = np.array([[rotationMatWorldCam[0,0], rotationMatWorldCam[0,1], rotationMatWorldCam[0,2], arrWorldCamTrans[0]],
                            [rotationMatWorldCam[1,0], rotationMatWorldCam[1,1], rotationMatWorldCam[1,2], arrWorldCamTrans[1]],
                            [rotationMatWorldCam[2,0], rotationMatWorldCam[2,1], rotationMatWorldCam[2,2], arrWorldCamTrans[2]],
                            [0,0,0,1]])
        
        # multiply trafomatrix with cam_vel_trans to get cam_vel in base (world CS)
        base_cam_vel = np.dot(trafoMat, cam_vel_trans)
        base_cam_vel = np.squeeze(np.asarray(base_cam_vel))	
        cam_vel_rot=np.array([cam_vel[3],cam_vel[4]*(-1) ,cam_vel[5]*(-1),0]).transpose()
        cam_vel_base_rot = np.dot(trafoMat, cam_vel_rot) 

        # fill base_cam_vel with angle values for rotation (alpha, beta, gamma)
        base_cam_vel_final=np.array([base_cam_vel[0],base_cam_vel[1],base_cam_vel[2],cam_vel_base_rot[0],cam_vel_base_rot[1],cam_vel_base_rot[2]])

        #########################joint velocity##########################

        # joint_angles to list and switch joints for moveIt handling 
        joints = list(joint_angles)
        elbow = joints[0]
        shoulder_pan = joints[2]
        joints[0] = shoulder_pan
        joints[2] = elbow
        #MoveIt Jacobian
        robot_jacobian = get_jacobian_matrix(move_group, joints)
        robot_jacobian = np.matrix(robot_jacobian)
        robot_jacobian_det = np.linalg.det(robot_jacobian)

        if robot_jacobian_det == 0:
            print ("robot_jacobian is not invertible")
            exit()

        ### cam_vel with Levenberg-Marquardt and robot_jacobian
        joint_vel = np.linalg.inv(robot_jacobian) * base_cam_vel_final
        
        ##### changing joint_velocities for MoveIt #####
        elbow = joint_vel[0,0]
        shoulder_pan = joint_vel[2,0]
        joint_vel[2,0] = elbow
        joint_vel[0,0] = shoulder_pan      
        joint_vel = np.ndarray.transpose(joint_vel)
        joint_vel = np.squeeze(np.asarray(joint_vel))

        return list(joint_vel)


def func_image_jacobian (u1,v1,u2,v2,u3,v3,u4,v4,z1,z2,z3,z4):
    fl = 692.82
    interaction_matrix =    np.matrix([[ fl/z1,  0,    -u1/z1,     -u1*v1/fl,     (fl*fl+u1*u1)/fl,  -v1],
                                       [    0,  fl/z1, -v1/z1, -(fl*fl+u1*u1)/fl,      u1*v1/fl,      u1],
                                       [ fl/z2,  0,    -u2/z2,     -u2*v2/fl,     (fl*fl+u2*u2)/fl,  -v2],
                                       [    0,  fl/z2, -v2/z2, -(fl*fl+u2*u2)/fl,      u2*v2/fl,      u2],
                                       [ fl/z3,  0,    -u3/z3,     -u3*v3/fl,     (fl*fl+u3*u3)/fl,  -v3],
                                       [    0,  fl/z3, -v3/z3, -(fl*fl+u3*u3)/fl,      u3*v3/fl,      u3],
                                       [ fl/z4,  0,    -u4/z4,     -u4*v4/fl,     (fl*fl+u4*u4)/fl,  -v4],
                                       [    0,  fl/z4, -v4/z4, -(fl*fl+u4*u4)/fl,      u4*v4/fl,      u4]
                                    ])
    return interaction_matrix

def calculate_coordinates_markerCorners(fidu_trans):
    if fidu_trans.transform.rotation.x and fidu_trans.transform.translation.y and fidu_trans.transform.rotation.z and fidu_trans.transform.rotation.w !=None:
        # translation Cam to marker
        tvec_=np.array ([fidu_trans.transform.translation.x, fidu_trans.transform.translation.y, fidu_trans.transform.translation.z])
        # rotation cam to marker
        rotationCamMarker = R.from_quat([fidu_trans.transform.rotation.x, fidu_trans.transform.rotation.y, fidu_trans.transform.rotation.z,fidu_trans.transform.rotation.w])
        rotationMatCamMarker =rotationCamMarker.as_dcm()
        # trnasformation matrix
        trafoMat = np.array([[rotationMatCamMarker[0,0], rotationMatCamMarker[0,1], rotationMatCamMarker[0,2], tvec_[0]],
                            [rotationMatCamMarker[1,0], rotationMatCamMarker[1,1], rotationMatCamMarker[1,2], tvec_[1]],
                            [rotationMatCamMarker[2,0], rotationMatCamMarker[2,1], rotationMatCamMarker[2,2], tvec_[2]],
                            [0,0,0,1]])

        # coordinates of the markercorners in markerframe, markersize 0.09*0.09m
        arrMarkerCornersMarker = np.array(  [[-0.045,  0.045, 0, 1],    
                                            [ 0.045,  0.045, 0, 1],    
                                            [ 0.045, -0.045, 0, 1],       
                                            [-0.045, -0.045, 0, 1]]    
                                        )
        # create Matrix for arrMarkerCorners in cameraframe 
        arrMarkerCornersCam = np.zeros([4,3])

        # calculation of the markercorners in cameraframe
        for i in range (len(arrMarkerCornersMarker)):
            markerPosition = np.dot(trafoMat, arrMarkerCornersMarker[i])
            arrMarkerCornersCam[i] = np.array([markerPosition[0],markerPosition[1],markerPosition[2]])
        
        return arrMarkerCornersCam 


# callback functions client
def joint_velocity_callback(data):
    global joint_vel_old
    global joint_vel_new

    joint_vel_old = data.old
    joint_vel_new = data.new


# callback functions ibvs
def pixel_coordinate_callback (data):
    global pixel
    pixel = data.fiducials[0]

def position_callback(states):
    global joint_positions
    joint_positions = states.position

def callback_fiducial_transform(data):
    global fidu_trans
    fidu_trans = data.transforms[0]


if __name__ == '__main__':
    try:
        global j_velocity 
        global move_group
        cycle = 1
        rospy.init_node('vs_ur5')
        #Creating the publisher
        cam_pub=rospy.Publisher('ur5_joint_velocities',floatList,queue_size=10)

        ### Tranformation from cam_world in base_world for cam_vel
        tfBuffer = tf2_ros.Buffer()
        listener = tf2_ros.TransformListener(tfBuffer)
        #Moveit
        moveit_commander.roscpp_initialize(sys.argv)
        move_group = MoveGroupCommander("manipulator")

        #Subscriber for calculation of markercorners for startvalues
        rospy.Subscriber("/fiducial_transforms", FiducialTransformArray, callback_fiducial_transform) 
        #rospy.sleep(0.1)

        ### insert table
        # access scene- and robotinterface
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
        
            print('Cycle: ',cycle)
            #Subscribers
            rospy.Subscriber('/fiducial_vertices', FiducialArray,pixel_coordinate_callback,queue_size=1)
            rospy.Subscriber("/joint_states", JointState, position_callback,queue_size=1)
            rospy.Subscriber("/fiducial_transforms", FiducialTransformArray, callback_fiducial_transform)            

            # get marker corner coordinates
            corners = calculate_coordinates_markerCorners(fidu_trans)
            # calculate required joint velocity
            j_velocity = joint_velocities(joint_positions,pixel, corners)
            #j_velocity

            ur_client(joint_positions, j_velocity)

            
            cycle += 1
            rospy.sleep(0.1)

    except rospy.ROSInterruptException:
        pass