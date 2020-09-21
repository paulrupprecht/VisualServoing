execute_process(COMMAND "/home/studi/catkin_ws/build/fmauch_universal_robot/ur_driver/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/studi/catkin_ws/build/fmauch_universal_robot/ur_driver/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
