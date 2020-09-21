;; Auto-generated. Do not edit!


(when (boundp 'ur_msgs::RobotModeDataMsg)
  (if (not (find-package "UR_MSGS"))
    (make-package "UR_MSGS"))
  (shadow 'RobotModeDataMsg (find-package "UR_MSGS")))
(unless (find-package "UR_MSGS::ROBOTMODEDATAMSG")
  (make-package "UR_MSGS::ROBOTMODEDATAMSG"))

(in-package "ROS")
;;//! \htmlinclude RobotModeDataMsg.msg.html


(defclass ur_msgs::RobotModeDataMsg
  :super ros::object
  :slots (_timestamp _is_robot_connected _is_real_robot_enabled _is_power_on_robot _is_emergency_stopped _is_protective_stopped _is_program_running _is_program_paused ))

(defmethod ur_msgs::RobotModeDataMsg
  (:init
   (&key
    ((:timestamp __timestamp) 0)
    ((:is_robot_connected __is_robot_connected) nil)
    ((:is_real_robot_enabled __is_real_robot_enabled) nil)
    ((:is_power_on_robot __is_power_on_robot) nil)
    ((:is_emergency_stopped __is_emergency_stopped) nil)
    ((:is_protective_stopped __is_protective_stopped) nil)
    ((:is_program_running __is_program_running) nil)
    ((:is_program_paused __is_program_paused) nil)
    )
   (send-super :init)
   (setq _timestamp (round __timestamp))
   (setq _is_robot_connected __is_robot_connected)
   (setq _is_real_robot_enabled __is_real_robot_enabled)
   (setq _is_power_on_robot __is_power_on_robot)
   (setq _is_emergency_stopped __is_emergency_stopped)
   (setq _is_protective_stopped __is_protective_stopped)
   (setq _is_program_running __is_program_running)
   (setq _is_program_paused __is_program_paused)
   self)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:is_robot_connected
   (&optional __is_robot_connected)
   (if __is_robot_connected (setq _is_robot_connected __is_robot_connected)) _is_robot_connected)
  (:is_real_robot_enabled
   (&optional __is_real_robot_enabled)
   (if __is_real_robot_enabled (setq _is_real_robot_enabled __is_real_robot_enabled)) _is_real_robot_enabled)
  (:is_power_on_robot
   (&optional __is_power_on_robot)
   (if __is_power_on_robot (setq _is_power_on_robot __is_power_on_robot)) _is_power_on_robot)
  (:is_emergency_stopped
   (&optional __is_emergency_stopped)
   (if __is_emergency_stopped (setq _is_emergency_stopped __is_emergency_stopped)) _is_emergency_stopped)
  (:is_protective_stopped
   (&optional __is_protective_stopped)
   (if __is_protective_stopped (setq _is_protective_stopped __is_protective_stopped)) _is_protective_stopped)
  (:is_program_running
   (&optional __is_program_running)
   (if __is_program_running (setq _is_program_running __is_program_running)) _is_program_running)
  (:is_program_paused
   (&optional __is_program_paused)
   (if __is_program_paused (setq _is_program_paused __is_program_paused)) _is_program_paused)
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp
    8
    ;; bool _is_robot_connected
    1
    ;; bool _is_real_robot_enabled
    1
    ;; bool _is_power_on_robot
    1
    ;; bool _is_emergency_stopped
    1
    ;; bool _is_protective_stopped
    1
    ;; bool _is_program_running
    1
    ;; bool _is_program_paused
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _timestamp
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _timestamp (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _timestamp) (= (length (_timestamp . bv)) 2)) ;; bignum
              (write-long (ash (elt (_timestamp . bv) 0) 0) s)
              (write-long (ash (elt (_timestamp . bv) 1) -1) s))
             ((and (class _timestamp) (= (length (_timestamp . bv)) 1)) ;; big1
              (write-long (elt (_timestamp . bv) 0) s)
              (write-long (if (>= _timestamp 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _timestamp s)(write-long (if (>= _timestamp 0) 0 #xffffffff) s)))
     ;; bool _is_robot_connected
       (if _is_robot_connected (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_real_robot_enabled
       (if _is_real_robot_enabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_power_on_robot
       (if _is_power_on_robot (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_emergency_stopped
       (if _is_emergency_stopped (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_protective_stopped
       (if _is_protective_stopped (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_program_running
       (if _is_program_running (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_program_paused
       (if _is_program_paused (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _timestamp
     
#+(or :alpha :irix6 :x86_64)
      (setf _timestamp (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _timestamp (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; bool _is_robot_connected
     (setq _is_robot_connected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_real_robot_enabled
     (setq _is_real_robot_enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_power_on_robot
     (setq _is_power_on_robot (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_emergency_stopped
     (setq _is_emergency_stopped (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_protective_stopped
     (setq _is_protective_stopped (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_program_running
     (setq _is_program_running (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_program_paused
     (setq _is_program_paused (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ur_msgs::RobotModeDataMsg :md5sum-) "867308ca39e2cc0644b50db27deb661f")
(setf (get ur_msgs::RobotModeDataMsg :datatype-) "ur_msgs/RobotModeDataMsg")
(setf (get ur_msgs::RobotModeDataMsg :definition-)
      "# This data structure contains the RobotModeData structure
# used by the Universal Robots controller
#
# This data structure is send at 10 Hz on TCP port 30002
#
# Note: this message does not carry all fields from the RobotModeData structure as broadcast by the robot controller, but a subset.

uint64 timestamp
bool is_robot_connected
bool is_real_robot_enabled
bool is_power_on_robot
bool is_emergency_stopped
bool is_protective_stopped
bool is_program_running
bool is_program_paused

")



(provide :ur_msgs/RobotModeDataMsg "867308ca39e2cc0644b50db27deb661f")


