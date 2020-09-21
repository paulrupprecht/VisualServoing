# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ur_dashboard_msgs: 10 messages, 10 services")

set(MSG_I_FLAGS "-Iur_dashboard_msgs:/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg;-Iur_dashboard_msgs:/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ur_dashboard_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetLoadedProgram.srv" NAME_WE)
add_custom_target(_ur_dashboard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur_dashboard_msgs" "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetLoadedProgram.srv" ""
)

get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/RawRequest.srv" NAME_WE)
add_custom_target(_ur_dashboard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur_dashboard_msgs" "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/RawRequest.srv" ""
)

get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/AddToLog.srv" NAME_WE)
add_custom_target(_ur_dashboard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur_dashboard_msgs" "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/AddToLog.srv" ""
)

get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeFeedback.msg" NAME_WE)
add_custom_target(_ur_dashboard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur_dashboard_msgs" "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeFeedback.msg" ""
)

get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/RobotMode.msg" NAME_WE)
add_custom_target(_ur_dashboard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur_dashboard_msgs" "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/RobotMode.msg" ""
)

get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionGoal.msg" NAME_WE)
add_custom_target(_ur_dashboard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur_dashboard_msgs" "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionGoal.msg" "actionlib_msgs/GoalID:ur_dashboard_msgs/SetModeGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeGoal.msg" NAME_WE)
add_custom_target(_ur_dashboard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur_dashboard_msgs" "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeGoal.msg" ""
)

get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/IsProgramRunning.srv" NAME_WE)
add_custom_target(_ur_dashboard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur_dashboard_msgs" "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/IsProgramRunning.srv" ""
)

get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/Popup.srv" NAME_WE)
add_custom_target(_ur_dashboard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur_dashboard_msgs" "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/Popup.srv" ""
)

get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionResult.msg" NAME_WE)
add_custom_target(_ur_dashboard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur_dashboard_msgs" "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionResult.msg" "actionlib_msgs/GoalID:ur_dashboard_msgs/SetModeResult:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetSafetyMode.srv" NAME_WE)
add_custom_target(_ur_dashboard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur_dashboard_msgs" "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetSafetyMode.srv" "ur_dashboard_msgs/SafetyMode"
)

get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/Load.srv" NAME_WE)
add_custom_target(_ur_dashboard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur_dashboard_msgs" "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/Load.srv" ""
)

get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeResult.msg" NAME_WE)
add_custom_target(_ur_dashboard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur_dashboard_msgs" "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeResult.msg" ""
)

get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetProgramState.srv" NAME_WE)
add_custom_target(_ur_dashboard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur_dashboard_msgs" "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetProgramState.srv" "ur_dashboard_msgs/ProgramState"
)

get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/IsProgramSaved.srv" NAME_WE)
add_custom_target(_ur_dashboard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur_dashboard_msgs" "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/IsProgramSaved.srv" ""
)

get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeAction.msg" NAME_WE)
add_custom_target(_ur_dashboard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur_dashboard_msgs" "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeAction.msg" "actionlib_msgs/GoalID:ur_dashboard_msgs/SetModeActionResult:ur_dashboard_msgs/SetModeActionFeedback:actionlib_msgs/GoalStatus:ur_dashboard_msgs/SetModeResult:ur_dashboard_msgs/SetModeGoal:ur_dashboard_msgs/SetModeActionGoal:ur_dashboard_msgs/SetModeFeedback:std_msgs/Header"
)

get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionFeedback.msg" NAME_WE)
add_custom_target(_ur_dashboard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur_dashboard_msgs" "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionFeedback.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:ur_dashboard_msgs/SetModeFeedback:std_msgs/Header"
)

get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/ProgramState.msg" NAME_WE)
add_custom_target(_ur_dashboard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur_dashboard_msgs" "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/ProgramState.msg" ""
)

get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetRobotMode.srv" NAME_WE)
add_custom_target(_ur_dashboard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur_dashboard_msgs" "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetRobotMode.srv" "ur_dashboard_msgs/RobotMode"
)

get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/SafetyMode.msg" NAME_WE)
add_custom_target(_ur_dashboard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur_dashboard_msgs" "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/SafetyMode.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/ProgramState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_cpp(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/RobotMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_cpp(ur_dashboard_msgs
  "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_cpp(ur_dashboard_msgs
  "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_cpp(ur_dashboard_msgs
  "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_cpp(ur_dashboard_msgs
  "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_cpp(ur_dashboard_msgs
  "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionResult.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeResult.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeGoal.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionGoal.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_cpp(ur_dashboard_msgs
  "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_cpp(ur_dashboard_msgs
  "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_cpp(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/SafetyMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_dashboard_msgs
)

### Generating Services
_generate_srv_cpp(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/AddToLog.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_cpp(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/IsProgramRunning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_cpp(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/Popup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_cpp(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetSafetyMode.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/SafetyMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_cpp(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/Load.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_cpp(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/RawRequest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_cpp(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetProgramState.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/ProgramState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_cpp(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/IsProgramSaved.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_cpp(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetRobotMode.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/RobotMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_cpp(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetLoadedProgram.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_dashboard_msgs
)

### Generating Module File
_generate_module_cpp(ur_dashboard_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_dashboard_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ur_dashboard_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ur_dashboard_msgs_generate_messages ur_dashboard_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetLoadedProgram.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_cpp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/RawRequest.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_cpp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/AddToLog.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_cpp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeFeedback.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_cpp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/RobotMode.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_cpp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionGoal.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_cpp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeGoal.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_cpp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/IsProgramRunning.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_cpp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/Popup.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_cpp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionResult.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_cpp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetSafetyMode.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_cpp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/Load.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_cpp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeResult.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_cpp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetProgramState.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_cpp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/IsProgramSaved.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_cpp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeAction.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_cpp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionFeedback.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_cpp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/ProgramState.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_cpp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetRobotMode.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_cpp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/SafetyMode.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_cpp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ur_dashboard_msgs_gencpp)
add_dependencies(ur_dashboard_msgs_gencpp ur_dashboard_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ur_dashboard_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/ProgramState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_eus(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/RobotMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_eus(ur_dashboard_msgs
  "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_eus(ur_dashboard_msgs
  "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_eus(ur_dashboard_msgs
  "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_eus(ur_dashboard_msgs
  "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_eus(ur_dashboard_msgs
  "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionResult.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeResult.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeGoal.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionGoal.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_eus(ur_dashboard_msgs
  "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_eus(ur_dashboard_msgs
  "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_eus(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/SafetyMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur_dashboard_msgs
)

### Generating Services
_generate_srv_eus(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/AddToLog.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_eus(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/IsProgramRunning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_eus(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/Popup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_eus(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetSafetyMode.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/SafetyMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_eus(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/Load.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_eus(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/RawRequest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_eus(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetProgramState.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/ProgramState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_eus(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/IsProgramSaved.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_eus(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetRobotMode.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/RobotMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_eus(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetLoadedProgram.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur_dashboard_msgs
)

### Generating Module File
_generate_module_eus(ur_dashboard_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur_dashboard_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ur_dashboard_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ur_dashboard_msgs_generate_messages ur_dashboard_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetLoadedProgram.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_eus _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/RawRequest.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_eus _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/AddToLog.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_eus _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeFeedback.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_eus _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/RobotMode.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_eus _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionGoal.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_eus _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeGoal.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_eus _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/IsProgramRunning.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_eus _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/Popup.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_eus _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionResult.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_eus _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetSafetyMode.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_eus _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/Load.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_eus _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeResult.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_eus _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetProgramState.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_eus _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/IsProgramSaved.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_eus _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeAction.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_eus _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionFeedback.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_eus _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/ProgramState.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_eus _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetRobotMode.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_eus _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/SafetyMode.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_eus _ur_dashboard_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ur_dashboard_msgs_geneus)
add_dependencies(ur_dashboard_msgs_geneus ur_dashboard_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ur_dashboard_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/ProgramState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_lisp(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/RobotMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_lisp(ur_dashboard_msgs
  "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_lisp(ur_dashboard_msgs
  "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_lisp(ur_dashboard_msgs
  "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_lisp(ur_dashboard_msgs
  "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_lisp(ur_dashboard_msgs
  "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionResult.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeResult.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeGoal.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionGoal.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_lisp(ur_dashboard_msgs
  "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_lisp(ur_dashboard_msgs
  "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_lisp(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/SafetyMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_dashboard_msgs
)

### Generating Services
_generate_srv_lisp(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/AddToLog.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_lisp(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/IsProgramRunning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_lisp(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/Popup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_lisp(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetSafetyMode.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/SafetyMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_lisp(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/Load.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_lisp(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/RawRequest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_lisp(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetProgramState.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/ProgramState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_lisp(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/IsProgramSaved.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_lisp(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetRobotMode.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/RobotMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_lisp(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetLoadedProgram.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_dashboard_msgs
)

### Generating Module File
_generate_module_lisp(ur_dashboard_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_dashboard_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ur_dashboard_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ur_dashboard_msgs_generate_messages ur_dashboard_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetLoadedProgram.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_lisp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/RawRequest.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_lisp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/AddToLog.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_lisp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeFeedback.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_lisp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/RobotMode.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_lisp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionGoal.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_lisp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeGoal.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_lisp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/IsProgramRunning.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_lisp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/Popup.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_lisp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionResult.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_lisp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetSafetyMode.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_lisp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/Load.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_lisp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeResult.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_lisp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetProgramState.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_lisp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/IsProgramSaved.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_lisp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeAction.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_lisp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionFeedback.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_lisp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/ProgramState.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_lisp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetRobotMode.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_lisp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/SafetyMode.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_lisp _ur_dashboard_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ur_dashboard_msgs_genlisp)
add_dependencies(ur_dashboard_msgs_genlisp ur_dashboard_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ur_dashboard_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/ProgramState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_nodejs(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/RobotMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_nodejs(ur_dashboard_msgs
  "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_nodejs(ur_dashboard_msgs
  "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_nodejs(ur_dashboard_msgs
  "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_nodejs(ur_dashboard_msgs
  "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_nodejs(ur_dashboard_msgs
  "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionResult.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeResult.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeGoal.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionGoal.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_nodejs(ur_dashboard_msgs
  "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_nodejs(ur_dashboard_msgs
  "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_nodejs(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/SafetyMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur_dashboard_msgs
)

### Generating Services
_generate_srv_nodejs(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/AddToLog.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_nodejs(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/IsProgramRunning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_nodejs(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/Popup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_nodejs(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetSafetyMode.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/SafetyMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_nodejs(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/Load.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_nodejs(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/RawRequest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_nodejs(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetProgramState.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/ProgramState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_nodejs(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/IsProgramSaved.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_nodejs(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetRobotMode.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/RobotMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_nodejs(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetLoadedProgram.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur_dashboard_msgs
)

### Generating Module File
_generate_module_nodejs(ur_dashboard_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur_dashboard_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ur_dashboard_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ur_dashboard_msgs_generate_messages ur_dashboard_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetLoadedProgram.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_nodejs _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/RawRequest.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_nodejs _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/AddToLog.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_nodejs _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeFeedback.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_nodejs _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/RobotMode.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_nodejs _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionGoal.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_nodejs _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeGoal.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_nodejs _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/IsProgramRunning.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_nodejs _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/Popup.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_nodejs _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionResult.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_nodejs _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetSafetyMode.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_nodejs _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/Load.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_nodejs _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeResult.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_nodejs _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetProgramState.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_nodejs _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/IsProgramSaved.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_nodejs _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeAction.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_nodejs _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionFeedback.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_nodejs _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/ProgramState.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_nodejs _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetRobotMode.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_nodejs _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/SafetyMode.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_nodejs _ur_dashboard_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ur_dashboard_msgs_gennodejs)
add_dependencies(ur_dashboard_msgs_gennodejs ur_dashboard_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ur_dashboard_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/ProgramState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_py(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/RobotMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_py(ur_dashboard_msgs
  "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_py(ur_dashboard_msgs
  "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_py(ur_dashboard_msgs
  "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_py(ur_dashboard_msgs
  "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_py(ur_dashboard_msgs
  "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionResult.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeResult.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeGoal.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionGoal.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_py(ur_dashboard_msgs
  "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_py(ur_dashboard_msgs
  "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_msg_py(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/SafetyMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_dashboard_msgs
)

### Generating Services
_generate_srv_py(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/AddToLog.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_py(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/IsProgramRunning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_py(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/Popup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_py(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetSafetyMode.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/SafetyMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_py(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/Load.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_py(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/RawRequest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_py(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetProgramState.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/ProgramState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_py(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/IsProgramSaved.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_py(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetRobotMode.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/RobotMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_dashboard_msgs
)
_generate_srv_py(ur_dashboard_msgs
  "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetLoadedProgram.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_dashboard_msgs
)

### Generating Module File
_generate_module_py(ur_dashboard_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_dashboard_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ur_dashboard_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ur_dashboard_msgs_generate_messages ur_dashboard_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetLoadedProgram.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_py _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/RawRequest.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_py _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/AddToLog.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_py _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeFeedback.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_py _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/RobotMode.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_py _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionGoal.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_py _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeGoal.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_py _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/IsProgramRunning.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_py _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/Popup.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_py _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionResult.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_py _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetSafetyMode.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_py _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/Load.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_py _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeResult.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_py _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetProgramState.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_py _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/IsProgramSaved.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_py _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeAction.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_py _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg/SetModeActionFeedback.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_py _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/ProgramState.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_py _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/srv/GetRobotMode.srv" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_py _ur_dashboard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg/SafetyMode.msg" NAME_WE)
add_dependencies(ur_dashboard_msgs_generate_messages_py _ur_dashboard_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ur_dashboard_msgs_genpy)
add_dependencies(ur_dashboard_msgs_genpy ur_dashboard_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ur_dashboard_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_dashboard_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_dashboard_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ur_dashboard_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(ur_dashboard_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur_dashboard_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur_dashboard_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ur_dashboard_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(ur_dashboard_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_dashboard_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_dashboard_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ur_dashboard_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(ur_dashboard_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur_dashboard_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur_dashboard_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ur_dashboard_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(ur_dashboard_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_dashboard_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_dashboard_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_dashboard_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ur_dashboard_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(ur_dashboard_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
