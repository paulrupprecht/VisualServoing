#!/usr/bin/env python

import sys
import copy
import rospy
from std_msgs.msg import String
import tf2_ros
import geometry_msgs.msg
import moveit_commander
import moveit_msgs.msg
from gazebo_msgs.msg import ModelState
from geometry_msgs.msg import Pose
from geometry_msgs.msg import Point
from geometry_msgs.msg import Quaternion
from geometry_msgs.msg import Vector3
from geometry_msgs.msg import Twist
from pyquaternion import Quaternion as calcQuaternion
from scipy.spatial.transform import Rotation as R
import numpy as np

def reset_position():

    rospy.init_node('reset', anonymous=True)
    pub = rospy.Publisher('/gazebo/set_model_state', ModelState, queue_size=10)
	
    # istantiate robot
    moveit_commander.roscpp_initialize(sys.argv)
    group_name = "manipulator"
    move_group = moveit_commander.MoveGroupCommander(group_name)

	### INSERT TABLE ###
    '''
	# access scene- and robotinterface
    scene = moveit_commander.PlanningSceneInterface()
    robot = moveit_commander.RobotCommander()
    rospy.sleep(2)
	# create pose of table (= Quadermittelpunkt)
    pose_table = geometry_msgs.msg.PoseStamped()
    pose_table.header.frame_id = robot.get_planning_frame()
    pose_table.pose.position.x = 0
    pose_table.pose.position.y = 0
    pose_table.pose.position.z = -0.8
	# add table to szene and define size of the table [x, y, z]
    scene.add_box("table", pose_table, (3, 3, 1))
    '''

	### ROBOT POSITIONING ###
    '''
    pose_goal = geometry_msgs.msg.Pose()
    orientation_x = 0
    orientation_y = 0
    orientation_z = 0
    orientation_w = 1
    position_x = 0.3
    position_y = 0.3
    position_z = 0.6

    rotateTCP = R.from_euler('xyz', [0, -90, 0], degrees=True)
    quatRotateTCP = rotateTCP.as_quat()
    calcQuatRotateTCP = calcQuaternion(quatRotateTCP[3],quatRotateTCP[0],quatRotateTCP[1],quatRotateTCP[2])	   
    
    calcGoalQuat = calcQuaternion([orientation_w, orientation_x, orientation_y, orientation_z]) * calcQuatRotateTCP
    pose_goal = [position_x, position_y, position_z, calcGoalQuat.x, calcGoalQuat.y, calcGoalQuat.z, calcGoalQuat.w]

    move_group.set_pose_target(pose_goal)
    plan = move_group.go(wait=True)
    '''

    #JointGoal
    joint_goal = move_group.get_current_joint_values()
    joint_goal[0] =  0.455705470000169  #0.32166418        #-1.33
    joint_goal[1] =  -1.1677998         #-1.174083          #-7.39
    joint_goal[2] =  -2.09474417        #-2.09107898            #-100.2
    joint_goal[3] =  0.1216494          #0.1242674            # 17.6
    joint_goal[4] =  1.1154399          #1.2494812            # 89.94
    joint_goal[5] =  1.5706218          # 1.33

    move_group.go(joint_goal, wait=True)
    

    move_group.stop()
    move_group.clear_pose_targets()

    counter = 0
    while not rospy.is_shutdown() and counter < 5:    
        
        # MARKER
        r = R.from_euler('xyz', [90, 0, 90], degrees=True)
        #r = R.from_euler('xyz', [0, -90, 90], degrees=True)
        quat = r.as_quat()
        point = Point(0.83, 0, 0.527)	
        quaternion = Quaternion(quat[0],quat[1],quat[2],quat[3])	
        
        pose = Pose(point,quaternion)
        vector=Vector3(0,0,0)
        twist =Twist(vector,vector)
        msg = ModelState('aruco_visual_marker_5', pose ,twist, 'world')
        rospy.loginfo(msg)
        pub.publish(msg)
        counter+=1

        rospy.sleep(1)



if __name__ == '__main__':
    try:
        reset_position()
    except rospy.ROSInterruptException:
        pass

