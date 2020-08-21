# VisualServoing
UR5 Control based on two different VS concepts: PBVS, IBVS.
The project goal is to evaluate both concepts for several given tasks. Generally, the task is defined as following an aruco marker and ensure a robot pose which is defined with a static offset. Based on the generated images visual information will be used to feed both control strategies. 
Whereas the IBVS concept solely uses image information in order to calculate the control deviation, the position based control concept transforms the captured information (image information) into a marker pose relatively from camera to the marker. Accordingly, the calculated pose is used to calculate the deviation to a specific target pose.  

## Folder Structure

The catkin_ws (workspace) contains 3 main folders: build, devel and src. The folder content will be described briefly next.

#### build

#### devel

#### src

The main development of the robot control can be found in the src folder.

The src folder, which contains both, third-party scripts and custom scripts is structured as follows:
- aruco_detect                    --> aruco marker detection logik, third-party computer vision scripts
- fiducial_msgs                   --> header files for fiducial messages 
- fiducials                       -->
- fiducial_slam                   -->
- fmauch_universal_robot          --> MoveIt configuration and UR driver files
- gazebo_ros_pkgs                 --> Gazebo-ROS connection files
- Universal_Robots_ROS_Driver     --> ROS Driver
- custom_pkg                      --> Logic files for controlling UR5 as well as evaluation files (target trajectories to be evaluated for report)

The custom_pkg folder contains all relevant files that handle the visual servoing control logic. Programming language used is Python.
Within the custom_pkg folder multiple launch files can be found, such as:
- my_aruco_detect.launch
- my_move_group.launch
- my_ur5_bringup.launch

Further, a .sdf file is included in the custom_pkg folder. This file defines the simulation environment for Gazebo. The environmant contains both, the camera as endeffector as well as the aruco marker, which is the object to be detected within the control loop.

Within the custom_pkg folder another folder called src contains all the relevant control and evaluation .py files. 

###### ursim_gazebo.py

Main Goal: Establish connection between Ursim and Gazebo. 

This script captures the actual pose of the endeffector in world coordinates (base) and defines a message for the simulation environment. The messages includes information regarding pose and relevant coorinate system. As a result, the camera object will be displayed in the simulation environment according to its actual pose in the space.

###### pbvs_controller.py

Main Goal: Realize a position based robot control by processing visual data and planning a trajectory based on the deviation between target pose and actual pose between camera and marker.

The PBVS controller is designed as a P-Controller (proportional). The main logic is implemented in the listener() function and executed in a Python main function. Firstly, the actual camera pose (base cs) and the transformed pose from marker to camera (aruco_detect ) are subscribed and stored in variables. Secondly, in case a marker was detected, the desired rotation and translation are calculated seperately.

Rotation: The relative rotation from camera to marker gets transformed from the aruco coordinate system to the endeffector (camera) coordinate system (deviation). If the rotation between camera and marker exceeds a defined tolerance (1 degree per axis), a new target rotation is calculated (base coordinate system). 

Translation: In parallel the translatory deviation from camera to marker is calculated and multiplied with the Kp-factor (P-controller). In order to transform the identified deviation to the base coordinate system, the transformation matrix is used. 

Finally, the rotation and the translation results are combined and published as a new message. Based on that message, MoveIt will handle the trajectory planning. 

Caution: An accurate description of how this script is executed can be found within the script itself (comments).

##### ibvs_controller.py

tbd

##### reset.py

Main Goal: Resetting camera and marker into a default pose. All tests can be carried out by starting them from the default pose.

##### marker_rectangle.py

Main Goal: 

##### marcer_circle.py

Main Goal:

##### topic_logger.py

Main Goal: 










