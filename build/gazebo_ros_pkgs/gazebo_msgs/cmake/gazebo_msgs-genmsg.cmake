# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "gazebo_msgs: 9 messages, 23 services")

set(MSG_I_FLAGS "-Igazebo_msgs:/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/melodic/share/trajectory_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(gazebo_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetJointProperties.srv" NAME_WE)
add_custom_target(_gazebo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_msgs" "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetJointProperties.srv" "gazebo_msgs/ODEJointProperties"
)

get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEJointProperties.msg" NAME_WE)
add_custom_target(_gazebo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_msgs" "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEJointProperties.msg" ""
)

get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/LinkStates.msg" NAME_WE)
add_custom_target(_gazebo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_msgs" "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/LinkStates.msg" "geometry_msgs/Vector3:geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Twist:geometry_msgs/Point"
)

get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SpawnModel.srv" NAME_WE)
add_custom_target(_gazebo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_msgs" "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SpawnModel.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetJointProperties.srv" NAME_WE)
add_custom_target(_gazebo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_msgs" "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetJointProperties.srv" ""
)

get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEPhysics.msg" NAME_WE)
add_custom_target(_gazebo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_msgs" "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEPhysics.msg" ""
)

get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ContactState.msg" NAME_WE)
add_custom_target(_gazebo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_msgs" "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ContactState.msg" "geometry_msgs/Wrench:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/JointRequest.srv" NAME_WE)
add_custom_target(_gazebo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_msgs" "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/JointRequest.srv" ""
)

get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetModelState.srv" NAME_WE)
add_custom_target(_gazebo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_msgs" "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetModelState.srv" "geometry_msgs/Twist:geometry_msgs/Vector3:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/ApplyBodyWrench.srv" NAME_WE)
add_custom_target(_gazebo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_msgs" "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/ApplyBodyWrench.srv" "geometry_msgs/Vector3:geometry_msgs/Wrench:geometry_msgs/Point"
)

get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLightProperties.srv" NAME_WE)
add_custom_target(_gazebo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_msgs" "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLightProperties.srv" "std_msgs/ColorRGBA"
)

get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetModelProperties.srv" NAME_WE)
add_custom_target(_gazebo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_msgs" "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetModelProperties.srv" ""
)

get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/LinkState.msg" NAME_WE)
add_custom_target(_gazebo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_msgs" "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/LinkState.msg" "geometry_msgs/Vector3:geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Twist:geometry_msgs/Point"
)

get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/DeleteModel.srv" NAME_WE)
add_custom_target(_gazebo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_msgs" "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/DeleteModel.srv" ""
)

get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelStates.msg" NAME_WE)
add_custom_target(_gazebo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_msgs" "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelStates.msg" "geometry_msgs/Vector3:geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Twist:geometry_msgs/Point"
)

get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetModelState.srv" NAME_WE)
add_custom_target(_gazebo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_msgs" "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetModelState.srv" "geometry_msgs/Twist:geometry_msgs/Vector3:geometry_msgs/Pose:gazebo_msgs/ModelState:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLinkProperties.srv" NAME_WE)
add_custom_target(_gazebo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_msgs" "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLinkProperties.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/BodyRequest.srv" NAME_WE)
add_custom_target(_gazebo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_msgs" "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/BodyRequest.srv" ""
)

get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLinkState.srv" NAME_WE)
add_custom_target(_gazebo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_msgs" "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLinkState.srv" "gazebo_msgs/LinkState:geometry_msgs/Twist:geometry_msgs/Vector3:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelState.msg" NAME_WE)
add_custom_target(_gazebo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_msgs" "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelState.msg" "geometry_msgs/Vector3:geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Twist:geometry_msgs/Point"
)

get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLinkProperties.srv" NAME_WE)
add_custom_target(_gazebo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_msgs" "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLinkProperties.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/WorldState.msg" NAME_WE)
add_custom_target(_gazebo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_msgs" "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/WorldState.msg" "geometry_msgs/Twist:geometry_msgs/Vector3:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Wrench:geometry_msgs/Point"
)

get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetPhysicsProperties.srv" NAME_WE)
add_custom_target(_gazebo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_msgs" "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetPhysicsProperties.srv" "gazebo_msgs/ODEPhysics:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLinkState.srv" NAME_WE)
add_custom_target(_gazebo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_msgs" "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLinkState.srv" "gazebo_msgs/LinkState:geometry_msgs/Twist:geometry_msgs/Vector3:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLightProperties.srv" NAME_WE)
add_custom_target(_gazebo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_msgs" "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLightProperties.srv" "std_msgs/ColorRGBA"
)

get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ContactsState.msg" NAME_WE)
add_custom_target(_gazebo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_msgs" "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ContactsState.msg" "gazebo_msgs/ContactState:geometry_msgs/Vector3:geometry_msgs/Wrench:std_msgs/Header"
)

get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/DeleteLight.srv" NAME_WE)
add_custom_target(_gazebo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_msgs" "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/DeleteLight.srv" ""
)

get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetWorldProperties.srv" NAME_WE)
add_custom_target(_gazebo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_msgs" "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetWorldProperties.srv" ""
)

get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetModelConfiguration.srv" NAME_WE)
add_custom_target(_gazebo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_msgs" "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetModelConfiguration.srv" ""
)

get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetJointTrajectory.srv" NAME_WE)
add_custom_target(_gazebo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_msgs" "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetJointTrajectory.srv" "trajectory_msgs/JointTrajectory:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:trajectory_msgs/JointTrajectoryPoint:geometry_msgs/Point"
)

get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetPhysicsProperties.srv" NAME_WE)
add_custom_target(_gazebo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_msgs" "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetPhysicsProperties.srv" "gazebo_msgs/ODEPhysics:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/ApplyJointEffort.srv" NAME_WE)
add_custom_target(_gazebo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_msgs" "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/ApplyJointEffort.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEPhysics.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_cpp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_cpp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ContactState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_cpp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/WorldState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_cpp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEJointProperties.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_cpp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/LinkState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_cpp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelStates.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_cpp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/LinkStates.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_cpp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ContactsState.msg"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ContactState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_msgs
)

### Generating Services
_generate_srv_cpp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetJointProperties.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEJointProperties.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_cpp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SpawnModel.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_cpp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetJointProperties.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_cpp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/JointRequest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_cpp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetModelState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_cpp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/ApplyBodyWrench.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_cpp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLightProperties.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_cpp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetModelProperties.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_cpp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/DeleteModel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_cpp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetModelState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_cpp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLinkProperties.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_cpp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/BodyRequest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_cpp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLinkState.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/LinkState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_cpp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/DeleteLight.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_cpp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLinkProperties.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_cpp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetPhysicsProperties.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEPhysics.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_cpp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLinkState.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/LinkState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_cpp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLightProperties.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_cpp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetWorldProperties.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_cpp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetModelConfiguration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_cpp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetJointTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_cpp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetPhysicsProperties.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEPhysics.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_cpp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/ApplyJointEffort.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_msgs
)

### Generating Module File
_generate_module_cpp(gazebo_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(gazebo_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(gazebo_msgs_generate_messages gazebo_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetJointProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_cpp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEJointProperties.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_cpp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/LinkStates.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_cpp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SpawnModel.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_cpp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetJointProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_cpp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEPhysics.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_cpp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ContactState.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_cpp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/JointRequest.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_cpp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetModelState.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_cpp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/ApplyBodyWrench.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_cpp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLightProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_cpp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetModelProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_cpp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/LinkState.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_cpp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/DeleteModel.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_cpp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelStates.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_cpp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetModelState.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_cpp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLinkProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_cpp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/BodyRequest.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_cpp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLinkState.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_cpp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelState.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_cpp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLinkProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_cpp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/WorldState.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_cpp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetPhysicsProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_cpp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLinkState.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_cpp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLightProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_cpp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ContactsState.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_cpp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/DeleteLight.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_cpp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetWorldProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_cpp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetModelConfiguration.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_cpp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetJointTrajectory.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_cpp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetPhysicsProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_cpp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/ApplyJointEffort.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_cpp _gazebo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gazebo_msgs_gencpp)
add_dependencies(gazebo_msgs_gencpp gazebo_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gazebo_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEPhysics.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_eus(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_eus(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ContactState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_eus(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/WorldState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_eus(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEJointProperties.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_eus(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/LinkState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_eus(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelStates.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_eus(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/LinkStates.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_eus(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ContactsState.msg"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ContactState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_msgs
)

### Generating Services
_generate_srv_eus(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetJointProperties.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEJointProperties.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_eus(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SpawnModel.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_eus(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetJointProperties.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_eus(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/JointRequest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_eus(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetModelState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_eus(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/ApplyBodyWrench.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_eus(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLightProperties.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_eus(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetModelProperties.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_eus(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/DeleteModel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_eus(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetModelState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_eus(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLinkProperties.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_eus(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/BodyRequest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_eus(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLinkState.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/LinkState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_eus(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/DeleteLight.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_eus(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLinkProperties.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_eus(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetPhysicsProperties.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEPhysics.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_eus(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLinkState.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/LinkState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_eus(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLightProperties.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_eus(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetWorldProperties.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_eus(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetModelConfiguration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_eus(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetJointTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_eus(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetPhysicsProperties.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEPhysics.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_eus(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/ApplyJointEffort.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_msgs
)

### Generating Module File
_generate_module_eus(gazebo_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(gazebo_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(gazebo_msgs_generate_messages gazebo_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetJointProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_eus _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEJointProperties.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_eus _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/LinkStates.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_eus _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SpawnModel.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_eus _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetJointProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_eus _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEPhysics.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_eus _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ContactState.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_eus _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/JointRequest.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_eus _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetModelState.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_eus _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/ApplyBodyWrench.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_eus _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLightProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_eus _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetModelProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_eus _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/LinkState.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_eus _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/DeleteModel.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_eus _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelStates.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_eus _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetModelState.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_eus _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLinkProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_eus _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/BodyRequest.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_eus _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLinkState.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_eus _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelState.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_eus _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLinkProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_eus _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/WorldState.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_eus _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetPhysicsProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_eus _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLinkState.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_eus _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLightProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_eus _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ContactsState.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_eus _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/DeleteLight.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_eus _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetWorldProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_eus _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetModelConfiguration.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_eus _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetJointTrajectory.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_eus _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetPhysicsProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_eus _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/ApplyJointEffort.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_eus _gazebo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gazebo_msgs_geneus)
add_dependencies(gazebo_msgs_geneus gazebo_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gazebo_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEPhysics.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_lisp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_lisp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ContactState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_lisp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/WorldState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_lisp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEJointProperties.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_lisp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/LinkState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_lisp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelStates.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_lisp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/LinkStates.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_lisp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ContactsState.msg"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ContactState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_msgs
)

### Generating Services
_generate_srv_lisp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetJointProperties.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEJointProperties.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_lisp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SpawnModel.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_lisp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetJointProperties.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_lisp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/JointRequest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_lisp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetModelState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_lisp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/ApplyBodyWrench.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_lisp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLightProperties.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_lisp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetModelProperties.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_lisp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/DeleteModel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_lisp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetModelState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_lisp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLinkProperties.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_lisp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/BodyRequest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_lisp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLinkState.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/LinkState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_lisp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/DeleteLight.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_lisp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLinkProperties.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_lisp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetPhysicsProperties.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEPhysics.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_lisp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLinkState.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/LinkState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_lisp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLightProperties.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_lisp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetWorldProperties.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_lisp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetModelConfiguration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_lisp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetJointTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_lisp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetPhysicsProperties.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEPhysics.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_lisp(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/ApplyJointEffort.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_msgs
)

### Generating Module File
_generate_module_lisp(gazebo_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(gazebo_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(gazebo_msgs_generate_messages gazebo_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetJointProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_lisp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEJointProperties.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_lisp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/LinkStates.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_lisp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SpawnModel.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_lisp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetJointProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_lisp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEPhysics.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_lisp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ContactState.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_lisp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/JointRequest.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_lisp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetModelState.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_lisp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/ApplyBodyWrench.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_lisp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLightProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_lisp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetModelProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_lisp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/LinkState.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_lisp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/DeleteModel.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_lisp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelStates.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_lisp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetModelState.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_lisp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLinkProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_lisp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/BodyRequest.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_lisp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLinkState.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_lisp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelState.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_lisp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLinkProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_lisp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/WorldState.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_lisp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetPhysicsProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_lisp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLinkState.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_lisp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLightProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_lisp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ContactsState.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_lisp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/DeleteLight.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_lisp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetWorldProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_lisp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetModelConfiguration.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_lisp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetJointTrajectory.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_lisp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetPhysicsProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_lisp _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/ApplyJointEffort.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_lisp _gazebo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gazebo_msgs_genlisp)
add_dependencies(gazebo_msgs_genlisp gazebo_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gazebo_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEPhysics.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_nodejs(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_nodejs(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ContactState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_nodejs(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/WorldState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_nodejs(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEJointProperties.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_nodejs(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/LinkState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_nodejs(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelStates.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_nodejs(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/LinkStates.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_nodejs(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ContactsState.msg"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ContactState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_msgs
)

### Generating Services
_generate_srv_nodejs(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetJointProperties.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEJointProperties.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_nodejs(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SpawnModel.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_nodejs(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetJointProperties.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_nodejs(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/JointRequest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_nodejs(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetModelState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_nodejs(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/ApplyBodyWrench.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_nodejs(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLightProperties.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_nodejs(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetModelProperties.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_nodejs(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/DeleteModel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_nodejs(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetModelState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_nodejs(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLinkProperties.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_nodejs(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/BodyRequest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_nodejs(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLinkState.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/LinkState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_nodejs(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/DeleteLight.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_nodejs(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLinkProperties.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_nodejs(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetPhysicsProperties.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEPhysics.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_nodejs(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLinkState.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/LinkState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_nodejs(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLightProperties.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_nodejs(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetWorldProperties.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_nodejs(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetModelConfiguration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_nodejs(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetJointTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_nodejs(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetPhysicsProperties.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEPhysics.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_nodejs(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/ApplyJointEffort.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_msgs
)

### Generating Module File
_generate_module_nodejs(gazebo_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(gazebo_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(gazebo_msgs_generate_messages gazebo_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetJointProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_nodejs _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEJointProperties.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_nodejs _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/LinkStates.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_nodejs _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SpawnModel.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_nodejs _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetJointProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_nodejs _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEPhysics.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_nodejs _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ContactState.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_nodejs _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/JointRequest.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_nodejs _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetModelState.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_nodejs _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/ApplyBodyWrench.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_nodejs _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLightProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_nodejs _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetModelProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_nodejs _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/LinkState.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_nodejs _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/DeleteModel.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_nodejs _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelStates.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_nodejs _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetModelState.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_nodejs _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLinkProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_nodejs _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/BodyRequest.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_nodejs _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLinkState.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_nodejs _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelState.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_nodejs _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLinkProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_nodejs _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/WorldState.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_nodejs _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetPhysicsProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_nodejs _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLinkState.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_nodejs _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLightProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_nodejs _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ContactsState.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_nodejs _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/DeleteLight.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_nodejs _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetWorldProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_nodejs _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetModelConfiguration.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_nodejs _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetJointTrajectory.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_nodejs _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetPhysicsProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_nodejs _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/ApplyJointEffort.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_nodejs _gazebo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gazebo_msgs_gennodejs)
add_dependencies(gazebo_msgs_gennodejs gazebo_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gazebo_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEPhysics.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_py(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_py(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ContactState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_py(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/WorldState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_py(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEJointProperties.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_py(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/LinkState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_py(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelStates.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_py(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/LinkStates.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs
)
_generate_msg_py(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ContactsState.msg"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ContactState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs
)

### Generating Services
_generate_srv_py(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetJointProperties.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEJointProperties.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_py(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SpawnModel.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_py(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetJointProperties.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_py(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/JointRequest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_py(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetModelState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_py(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/ApplyBodyWrench.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_py(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLightProperties.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_py(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetModelProperties.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_py(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/DeleteModel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_py(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetModelState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_py(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLinkProperties.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_py(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/BodyRequest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_py(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLinkState.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/LinkState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_py(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/DeleteLight.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_py(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLinkProperties.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_py(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetPhysicsProperties.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEPhysics.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_py(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLinkState.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/LinkState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_py(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLightProperties.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_py(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetWorldProperties.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_py(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetModelConfiguration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_py(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetJointTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_py(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetPhysicsProperties.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEPhysics.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs
)
_generate_srv_py(gazebo_msgs
  "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/ApplyJointEffort.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs
)

### Generating Module File
_generate_module_py(gazebo_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(gazebo_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(gazebo_msgs_generate_messages gazebo_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetJointProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_py _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEJointProperties.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_py _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/LinkStates.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_py _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SpawnModel.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_py _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetJointProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_py _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ODEPhysics.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_py _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ContactState.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_py _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/JointRequest.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_py _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetModelState.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_py _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/ApplyBodyWrench.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_py _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLightProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_py _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetModelProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_py _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/LinkState.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_py _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/DeleteModel.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_py _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelStates.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_py _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetModelState.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_py _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLinkProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_py _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/BodyRequest.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_py _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLinkState.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_py _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelState.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_py _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetLinkProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_py _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/WorldState.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_py _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetPhysicsProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_py _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLinkState.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_py _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetLightProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_py _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ContactsState.msg" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_py _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/DeleteLight.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_py _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetWorldProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_py _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetModelConfiguration.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_py _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/SetJointTrajectory.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_py _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/GetPhysicsProperties.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_py _gazebo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/srv/ApplyJointEffort.srv" NAME_WE)
add_dependencies(gazebo_msgs_generate_messages_py _gazebo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gazebo_msgs_genpy)
add_dependencies(gazebo_msgs_genpy gazebo_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gazebo_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(gazebo_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(gazebo_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(gazebo_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET trajectory_msgs_generate_messages_cpp)
  add_dependencies(gazebo_msgs_generate_messages_cpp trajectory_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(gazebo_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(gazebo_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(gazebo_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET trajectory_msgs_generate_messages_eus)
  add_dependencies(gazebo_msgs_generate_messages_eus trajectory_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(gazebo_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(gazebo_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(gazebo_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET trajectory_msgs_generate_messages_lisp)
  add_dependencies(gazebo_msgs_generate_messages_lisp trajectory_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(gazebo_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(gazebo_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(gazebo_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET trajectory_msgs_generate_messages_nodejs)
  add_dependencies(gazebo_msgs_generate_messages_nodejs trajectory_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(gazebo_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(gazebo_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(gazebo_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET trajectory_msgs_generate_messages_py)
  add_dependencies(gazebo_msgs_generate_messages_py trajectory_msgs_generate_messages_py)
endif()
