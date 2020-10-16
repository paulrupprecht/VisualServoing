# VisualServoing
UR5 Control based on two different VS concepts: PBVS, IBVS.
The project goal is to evaluate both concepts for several given tasks. Generally, the task is defined as following an aruco marker and ensure a robot pose which is defined with a static offset. Based on the generated images visual information will be used to feed both control strategies. 
Whereas the IBVS concept solely uses image information in order to calculate the control deviation, the position based control concept transforms the captured information (image information) into a marker pose relatively from camera to the marker. Accordingly, the calculated pose is used to calculate the deviation to a specific target pose.  

## Custom Files 

###### ursim_gazebo.py

Main Goal: Establish connection between Ursim and Gazebo. 

This script captures the actual pose of the endeffector in world coordinates (base) and defines a message for the simulation environment. The messages includes information regarding pose and relevant coorinate system. As a result, the camera object will be displayed in the simulation environment according to its actual pose in the space.

###### pbvs_controller.py

Main Goal: Realize a position based robot control by processing visual data and planning a trajectory based on the deviation between target pose and actual pose between camera and marker.

The PBVS controller is designed as a P-Controller (proportional). The main logic is implemented in the listener() function and executed in a Python main function. Firstly, the actual camera pose (base cs) and the relative pose from marker to camera (aruco_detect) are subscribed and stored in variables. Secondly, in case a marker was detected, the desired rotation and translation are calculated seperately.

Rotation: The relative rotation from camera to marker gets transformed from the aruco coordinate system to the endeffector (camera) coordinate system (deviation). If the rotation between camera and marker exceeds a defined tolerance (1 degree per axis), a new target rotation is calculated (base coordinate system). 

Translation: In parallel the translatory deviation from camera to marker is calculated and multiplied with the Kp-factor (P-controller). In order to transform the identified deviation to the base coordinate system, the transformation matrix is used. 

Finally, the rotation and the translation results are combined and published as a new message. Based on that message, MoveIt will handle the trajectory planning. However, if ht new target pose does not deviate from the target pose from the last control cycle, MoveIt will not receive any new information and fulfill the last relevant pose. 

Caution: An accurate description of how this script is executed can be found within the script itself (comments).

##### ibvs_controller.py

Main Goal: Realize a image based robot control by processing visual data and calculating required joint velocities.

Firstly, all relevant data are subscribed, namely, the pixel coordinates of the acquired 2D image (/fiducia_vertices), the current robot joint states (/joint_states) as well as pose of the marker (/fiducial_transforms).

As a next step, the distances from the marker corners to the camera are calculated (z-axis). Based on that, the necessary joint velocities are calculated in order to ensure a correct camera pose. To determine the velocities, the deviations of the marker corners in the 2D image plane are calculated. Using the image Jacobian this deviation is transformed into required camera velocities. However, these velocities have to be transformed from camera coordinate to base coordinate system. 

Using the robot Jacobian, joint velocities can be extracted from the camera velocity. For each joint, the new joint goal can be published to MoveIt using a mathematical integration of the velocities. 

##### start_position.py

Main Goal: Resetting camera and marker into a default pose. All tests can be carried out by starting them from the default pose.

##### rectangle.py

Main Goal: Experiment trajectory of marker. Both controllers should follow the marker until it stops. 

##### jump.py

Main Goal:  Further experiment, where the marker jumps from one pose to another. Both controllers will realize a corresponding pose and ensure that the given offset is met. 

##### topic_logger.py

Main Goal: This is a support script that subscribes relevant data. The script was used for logging information in order to evaluete the controllers. 

