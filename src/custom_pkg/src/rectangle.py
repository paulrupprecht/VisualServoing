#!/usr/bin/env python
import rospy
from std_msgs.msg import String
import tf2_ros
import geometry_msgs.msg

from gazebo_msgs.msg import ModelState
from geometry_msgs.msg import Pose
from geometry_msgs.msg import Point
from geometry_msgs.msg import Quaternion
from geometry_msgs.msg import Vector3
from geometry_msgs.msg import Twist
from scipy.spatial.transform import Rotation as R
import numpy as np

if __name__ == '__main__':

	rospy.init_node('markermove_gazebo', anonymous=True)
	pub = rospy.Publisher('/gazebo/set_model_state', ModelState, queue_size=10)
	counter = 0
	transy = 0
	transz = 0

	# define start point
	y0 = 0	#-.02496
	z0 = 0.527

	while not rospy.is_shutdown():

		if counter < 301:
			transz=transz+0.001
			z = z0 - transz
			y = y0
			print('move Z')
			print(z)	 
		elif counter > 300 and counter < 501:	
			transy=transy+0.001
			y = y0 - transy
			print('move Y')	
			print(y)
		else: 
			print('finished')
			break 
		
		point = Point(0.83, y, z)
		quaternion = Quaternion(1,1,1,1)
		pose = Pose(point,quaternion)
		vector = Vector3(0,0,0)
		twist = Twist(vector,vector)
		
		msg = ModelState('aruco_visual_marker_5', pose ,twist, 'world')
		rospy.loginfo(msg)
		pub.publish(msg)

		counter+=1
		# speed	
		rospy.sleep(0.05)


