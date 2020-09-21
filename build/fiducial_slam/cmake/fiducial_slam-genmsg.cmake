# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "fiducial_slam: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(fiducial_slam_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_slam/srv/AddFiducial.srv" NAME_WE)
add_custom_target(_fiducial_slam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fiducial_slam" "/home/studi/catkin_ws/src/fiducial_slam/srv/AddFiducial.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(fiducial_slam
  "/home/studi/catkin_ws/src/fiducial_slam/srv/AddFiducial.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fiducial_slam
)

### Generating Module File
_generate_module_cpp(fiducial_slam
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fiducial_slam
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(fiducial_slam_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(fiducial_slam_generate_messages fiducial_slam_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_slam/srv/AddFiducial.srv" NAME_WE)
add_dependencies(fiducial_slam_generate_messages_cpp _fiducial_slam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fiducial_slam_gencpp)
add_dependencies(fiducial_slam_gencpp fiducial_slam_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fiducial_slam_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(fiducial_slam
  "/home/studi/catkin_ws/src/fiducial_slam/srv/AddFiducial.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fiducial_slam
)

### Generating Module File
_generate_module_eus(fiducial_slam
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fiducial_slam
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(fiducial_slam_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(fiducial_slam_generate_messages fiducial_slam_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_slam/srv/AddFiducial.srv" NAME_WE)
add_dependencies(fiducial_slam_generate_messages_eus _fiducial_slam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fiducial_slam_geneus)
add_dependencies(fiducial_slam_geneus fiducial_slam_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fiducial_slam_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(fiducial_slam
  "/home/studi/catkin_ws/src/fiducial_slam/srv/AddFiducial.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fiducial_slam
)

### Generating Module File
_generate_module_lisp(fiducial_slam
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fiducial_slam
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(fiducial_slam_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(fiducial_slam_generate_messages fiducial_slam_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_slam/srv/AddFiducial.srv" NAME_WE)
add_dependencies(fiducial_slam_generate_messages_lisp _fiducial_slam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fiducial_slam_genlisp)
add_dependencies(fiducial_slam_genlisp fiducial_slam_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fiducial_slam_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(fiducial_slam
  "/home/studi/catkin_ws/src/fiducial_slam/srv/AddFiducial.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fiducial_slam
)

### Generating Module File
_generate_module_nodejs(fiducial_slam
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fiducial_slam
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(fiducial_slam_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(fiducial_slam_generate_messages fiducial_slam_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_slam/srv/AddFiducial.srv" NAME_WE)
add_dependencies(fiducial_slam_generate_messages_nodejs _fiducial_slam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fiducial_slam_gennodejs)
add_dependencies(fiducial_slam_gennodejs fiducial_slam_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fiducial_slam_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(fiducial_slam
  "/home/studi/catkin_ws/src/fiducial_slam/srv/AddFiducial.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fiducial_slam
)

### Generating Module File
_generate_module_py(fiducial_slam
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fiducial_slam
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(fiducial_slam_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(fiducial_slam_generate_messages fiducial_slam_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/studi/catkin_ws/src/fiducial_slam/srv/AddFiducial.srv" NAME_WE)
add_dependencies(fiducial_slam_generate_messages_py _fiducial_slam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fiducial_slam_genpy)
add_dependencies(fiducial_slam_genpy fiducial_slam_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fiducial_slam_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fiducial_slam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fiducial_slam
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(fiducial_slam_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fiducial_slam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fiducial_slam
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(fiducial_slam_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fiducial_slam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fiducial_slam
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(fiducial_slam_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fiducial_slam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fiducial_slam
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(fiducial_slam_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fiducial_slam)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fiducial_slam\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fiducial_slam
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(fiducial_slam_generate_messages_py std_msgs_generate_messages_py)
endif()
