# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "controller_interface;hardware_interface;joint_trajectory_controller;pluginlib;realtime_tools;std_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lur_controllers".split(';') if "-lur_controllers" != "" else []
PROJECT_NAME = "ur_controllers"
PROJECT_SPACE_DIR = "/home/studi/catkin_ws/install"
PROJECT_VERSION = "0.0.2"
