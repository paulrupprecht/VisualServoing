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

    rospy.init_node('follow_object', anonymous=True)
    pub = rospy.Publisher('/gazebo/set_model_state', ModelState, queue_size=10)
    counter = 0
    trans = 0
    z_start = 0.527

    # define marker position
    r = R.from_euler('xyz', [90, 0, 90], degrees=True)
    quat = r.as_quat()
    quaternion = Quaternion(quat[0],quat[1],quat[2],quat[3])	
    vector=Vector3(0,0,0)


    while not rospy.is_shutdown():    
             
        if counter < 301:
            z = z_start + trans
        else: 
            print('finished')
            break 

        # update marker position
        point = Point(0.83, 0, z)	
        pose = Pose(point,quaternion)
        twist =Twist(vector,vector)
        msg = ModelState('aruco_visual_marker_5', pose ,twist, 'world')
        rospy.loginfo(msg)
        pub.publish(msg)

        # update counter and z-variable
        counter+=1
        trans = trans + 0.001
        rospy.sleep(0.05)



if __name__ == '__main__':
    try:
        reset_position()
    except rospy.ROSInterruptException:
        pass

