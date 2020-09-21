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

if __name__ == '__main__':
    rospy.init_node('repeater_tf_gazebo')

    tfBuffer = tf2_ros.Buffer()
    listener = tf2_ros.TransformListener(tfBuffer)
    
    pub = rospy.Publisher('/gazebo/set_model_state', ModelState, queue_size=10)

    while not rospy.is_shutdown():
        try:
            trans = tfBuffer.lookup_transform('base', 'tool0_controller', rospy.Time())
        except (tf2_ros.LookupException, tf2_ros.ConnectivityException, tf2_ros.ExtrapolationException):
            rospy.sleep(1)
            continue
	
	point = Point(trans.transform.translation.x, trans.transform.translation.y, trans.transform.translation.z)	
	quaternion =Quaternion(trans.transform.rotation.x,trans.transform.rotation.y,trans.transform.rotation.z,trans.transform.rotation.w)	
	pose = Pose(point,quaternion)

	vector=Vector3(0,0,0)
	twist =Twist(vector,vector)
	

	msg = ModelState('camera', pose ,twist, 'world')
	rospy.loginfo(msg)
	pub.publish(msg)

    rospy.sleep(0.1)


