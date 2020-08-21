# VisualServoing
UR5 Control based on two different VS concepts: PBVS, IBVS

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


