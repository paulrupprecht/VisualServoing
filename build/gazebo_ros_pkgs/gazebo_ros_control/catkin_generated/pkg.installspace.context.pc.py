# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;std_msgs;controller_manager;control_toolbox;pluginlib;hardware_interface;transmission_interface;joint_limits_interface;urdf;angles".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lgazebo_ros_control;-ldefault_robot_hw_sim".split(';') if "-lgazebo_ros_control;-ldefault_robot_hw_sim" != "" else []
PROJECT_NAME = "gazebo_ros_control"
PROJECT_SPACE_DIR = "/home/studi/catkin_ws/install"
PROJECT_VERSION = "2.5.19"
