# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "fiducial_msgs: 6 messages, 1 services")

set(MSG_I_FLAGS "-Ifiducial_msgs:/home/studi/catkin_ws/src/fiducial_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(fiducial_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntryArray.msg" NAME_WE)
add_custom_target(_fiducial_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fiducial_msgs" "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntryArray.msg" "fiducial_msgs/FiducialMapEntry"
)

get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialTransform.msg" NAME_WE)
add_custom_target(_fiducial_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fiducial_msgs" "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialTransform.msg" "geometry_msgs/Transform:geometry_msgs/Quaternion:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialArray.msg" NAME_WE)
add_custom_target(_fiducial_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fiducial_msgs" "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialArray.msg" "fiducial_msgs/Fiducial:std_msgs/Header"
)

get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialTransformArray.msg" NAME_WE)
add_custom_target(_fiducial_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fiducial_msgs" "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialTransformArray.msg" "geometry_msgs/Vector3:geometry_msgs/Transform:geometry_msgs/Quaternion:fiducial_msgs/FiducialTransform:std_msgs/Header"
)

get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/srv/InitializeMap.srv" NAME_WE)
add_custom_target(_fiducial_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fiducial_msgs" "/home/studi/catkin_ws/src/fiducial_msgs/srv/InitializeMap.srv" "fiducial_msgs/FiducialMapEntry:fiducial_msgs/FiducialMapEntryArray"
)

get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntry.msg" NAME_WE)
add_custom_target(_fiducial_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fiducial_msgs" "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntry.msg" ""
)

get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/Fiducial.msg" NAME_WE)
add_custom_target(_fiducial_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fiducial_msgs" "/home/studi/catkin_ws/src/fiducial_msgs/msg/Fiducial.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(fiducial_msgs
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntryArray.msg"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntry.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fiducial_msgs
)
_generate_msg_cpp(fiducial_msgs
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialTransform.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fiducial_msgs
)
_generate_msg_cpp(fiducial_msgs
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialArray.msg"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/Fiducial.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fiducial_msgs
)
_generate_msg_cpp(fiducial_msgs
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialTransformArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialTransform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fiducial_msgs
)
_generate_msg_cpp(fiducial_msgs
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fiducial_msgs
)
_generate_msg_cpp(fiducial_msgs
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/Fiducial.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fiducial_msgs
)

### Generating Services
_generate_srv_cpp(fiducial_msgs
  "/home/studi/catkin_ws/src/fiducial_msgs/srv/InitializeMap.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntry.msg;/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntryArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fiducial_msgs
)

### Generating Module File
_generate_module_cpp(fiducial_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fiducial_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(fiducial_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(fiducial_msgs_generate_messages fiducial_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntryArray.msg" NAME_WE)
add_dependencies(fiducial_msgs_generate_messages_cpp _fiducial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialTransform.msg" NAME_WE)
add_dependencies(fiducial_msgs_generate_messages_cpp _fiducial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialArray.msg" NAME_WE)
add_dependencies(fiducial_msgs_generate_messages_cpp _fiducial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialTransformArray.msg" NAME_WE)
add_dependencies(fiducial_msgs_generate_messages_cpp _fiducial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/srv/InitializeMap.srv" NAME_WE)
add_dependencies(fiducial_msgs_generate_messages_cpp _fiducial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntry.msg" NAME_WE)
add_dependencies(fiducial_msgs_generate_messages_cpp _fiducial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/Fiducial.msg" NAME_WE)
add_dependencies(fiducial_msgs_generate_messages_cpp _fiducial_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fiducial_msgs_gencpp)
add_dependencies(fiducial_msgs_gencpp fiducial_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fiducial_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(fiducial_msgs
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntryArray.msg"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntry.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fiducial_msgs
)
_generate_msg_eus(fiducial_msgs
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialTransform.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fiducial_msgs
)
_generate_msg_eus(fiducial_msgs
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialArray.msg"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/Fiducial.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fiducial_msgs
)
_generate_msg_eus(fiducial_msgs
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialTransformArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialTransform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fiducial_msgs
)
_generate_msg_eus(fiducial_msgs
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fiducial_msgs
)
_generate_msg_eus(fiducial_msgs
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/Fiducial.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fiducial_msgs
)

### Generating Services
_generate_srv_eus(fiducial_msgs
  "/home/studi/catkin_ws/src/fiducial_msgs/srv/InitializeMap.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntry.msg;/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntryArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fiducial_msgs
)

### Generating Module File
_generate_module_eus(fiducial_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fiducial_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(fiducial_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(fiducial_msgs_generate_messages fiducial_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntryArray.msg" NAME_WE)
add_dependencies(fiducial_msgs_generate_messages_eus _fiducial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialTransform.msg" NAME_WE)
add_dependencies(fiducial_msgs_generate_messages_eus _fiducial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialArray.msg" NAME_WE)
add_dependencies(fiducial_msgs_generate_messages_eus _fiducial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialTransformArray.msg" NAME_WE)
add_dependencies(fiducial_msgs_generate_messages_eus _fiducial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/srv/InitializeMap.srv" NAME_WE)
add_dependencies(fiducial_msgs_generate_messages_eus _fiducial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntry.msg" NAME_WE)
add_dependencies(fiducial_msgs_generate_messages_eus _fiducial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/Fiducial.msg" NAME_WE)
add_dependencies(fiducial_msgs_generate_messages_eus _fiducial_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fiducial_msgs_geneus)
add_dependencies(fiducial_msgs_geneus fiducial_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fiducial_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(fiducial_msgs
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntryArray.msg"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntry.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fiducial_msgs
)
_generate_msg_lisp(fiducial_msgs
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialTransform.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fiducial_msgs
)
_generate_msg_lisp(fiducial_msgs
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialArray.msg"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/Fiducial.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fiducial_msgs
)
_generate_msg_lisp(fiducial_msgs
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialTransformArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialTransform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fiducial_msgs
)
_generate_msg_lisp(fiducial_msgs
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fiducial_msgs
)
_generate_msg_lisp(fiducial_msgs
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/Fiducial.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fiducial_msgs
)

### Generating Services
_generate_srv_lisp(fiducial_msgs
  "/home/studi/catkin_ws/src/fiducial_msgs/srv/InitializeMap.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntry.msg;/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntryArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fiducial_msgs
)

### Generating Module File
_generate_module_lisp(fiducial_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fiducial_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(fiducial_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(fiducial_msgs_generate_messages fiducial_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntryArray.msg" NAME_WE)
add_dependencies(fiducial_msgs_generate_messages_lisp _fiducial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialTransform.msg" NAME_WE)
add_dependencies(fiducial_msgs_generate_messages_lisp _fiducial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialArray.msg" NAME_WE)
add_dependencies(fiducial_msgs_generate_messages_lisp _fiducial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialTransformArray.msg" NAME_WE)
add_dependencies(fiducial_msgs_generate_messages_lisp _fiducial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/srv/InitializeMap.srv" NAME_WE)
add_dependencies(fiducial_msgs_generate_messages_lisp _fiducial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntry.msg" NAME_WE)
add_dependencies(fiducial_msgs_generate_messages_lisp _fiducial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/Fiducial.msg" NAME_WE)
add_dependencies(fiducial_msgs_generate_messages_lisp _fiducial_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fiducial_msgs_genlisp)
add_dependencies(fiducial_msgs_genlisp fiducial_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fiducial_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(fiducial_msgs
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntryArray.msg"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntry.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fiducial_msgs
)
_generate_msg_nodejs(fiducial_msgs
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialTransform.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fiducial_msgs
)
_generate_msg_nodejs(fiducial_msgs
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialArray.msg"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/Fiducial.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fiducial_msgs
)
_generate_msg_nodejs(fiducial_msgs
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialTransformArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialTransform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fiducial_msgs
)
_generate_msg_nodejs(fiducial_msgs
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fiducial_msgs
)
_generate_msg_nodejs(fiducial_msgs
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/Fiducial.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fiducial_msgs
)

### Generating Services
_generate_srv_nodejs(fiducial_msgs
  "/home/studi/catkin_ws/src/fiducial_msgs/srv/InitializeMap.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntry.msg;/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntryArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fiducial_msgs
)

### Generating Module File
_generate_module_nodejs(fiducial_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fiducial_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(fiducial_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(fiducial_msgs_generate_messages fiducial_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntryArray.msg" NAME_WE)
add_dependencies(fiducial_msgs_generate_messages_nodejs _fiducial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialTransform.msg" NAME_WE)
add_dependencies(fiducial_msgs_generate_messages_nodejs _fiducial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialArray.msg" NAME_WE)
add_dependencies(fiducial_msgs_generate_messages_nodejs _fiducial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialTransformArray.msg" NAME_WE)
add_dependencies(fiducial_msgs_generate_messages_nodejs _fiducial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/srv/InitializeMap.srv" NAME_WE)
add_dependencies(fiducial_msgs_generate_messages_nodejs _fiducial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntry.msg" NAME_WE)
add_dependencies(fiducial_msgs_generate_messages_nodejs _fiducial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/Fiducial.msg" NAME_WE)
add_dependencies(fiducial_msgs_generate_messages_nodejs _fiducial_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fiducial_msgs_gennodejs)
add_dependencies(fiducial_msgs_gennodejs fiducial_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fiducial_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(fiducial_msgs
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntryArray.msg"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntry.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fiducial_msgs
)
_generate_msg_py(fiducial_msgs
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialTransform.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fiducial_msgs
)
_generate_msg_py(fiducial_msgs
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialArray.msg"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/Fiducial.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fiducial_msgs
)
_generate_msg_py(fiducial_msgs
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialTransformArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialTransform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fiducial_msgs
)
_generate_msg_py(fiducial_msgs
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fiducial_msgs
)
_generate_msg_py(fiducial_msgs
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/Fiducial.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fiducial_msgs
)

### Generating Services
_generate_srv_py(fiducial_msgs
  "/home/studi/catkin_ws/src/fiducial_msgs/srv/InitializeMap.srv"
  "${MSG_I_FLAGS}"
  "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntry.msg;/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntryArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fiducial_msgs
)

### Generating Module File
_generate_module_py(fiducial_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fiducial_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(fiducial_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(fiducial_msgs_generate_messages fiducial_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntryArray.msg" NAME_WE)
add_dependencies(fiducial_msgs_generate_messages_py _fiducial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialTransform.msg" NAME_WE)
add_dependencies(fiducial_msgs_generate_messages_py _fiducial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialArray.msg" NAME_WE)
add_dependencies(fiducial_msgs_generate_messages_py _fiducial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialTransformArray.msg" NAME_WE)
add_dependencies(fiducial_msgs_generate_messages_py _fiducial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/srv/InitializeMap.srv" NAME_WE)
add_dependencies(fiducial_msgs_generate_messages_py _fiducial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/FiducialMapEntry.msg" NAME_WE)
add_dependencies(fiducial_msgs_generate_messages_py _fiducial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_msgs/msg/Fiducial.msg" NAME_WE)
add_dependencies(fiducial_msgs_generate_messages_py _fiducial_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fiducial_msgs_genpy)
add_dependencies(fiducial_msgs_genpy fiducial_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fiducial_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fiducial_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fiducial_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(fiducial_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(fiducial_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fiducial_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fiducial_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(fiducial_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(fiducial_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fiducial_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fiducial_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(fiducial_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(fiducial_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fiducial_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fiducial_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(fiducial_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(fiducial_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fiducial_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fiducial_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fiducial_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(fiducial_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(fiducial_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
