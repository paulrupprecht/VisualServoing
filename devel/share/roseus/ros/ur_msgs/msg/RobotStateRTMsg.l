;; Auto-generated. Do not edit!


(when (boundp 'ur_msgs::RobotStateRTMsg)
  (if (not (find-package "UR_MSGS"))
    (make-package "UR_MSGS"))
  (shadow 'RobotStateRTMsg (find-package "UR_MSGS")))
(unless (find-package "UR_MSGS::ROBOTSTATERTMSG")
  (make-package "UR_MSGS::ROBOTSTATERTMSG"))

(in-package "ROS")
;;//! \htmlinclude RobotStateRTMsg.msg.html


(defclass ur_msgs::RobotStateRTMsg
  :super ros::object
  :slots (_time _q_target _qd_target _qdd_target _i_target _m_target _q_actual _qd_actual _i_actual _tool_acc_values _tcp_force _tool_vector _tcp_speed _digital_input_bits _motor_temperatures _controller_timer _test_value _robot_mode _joint_modes ))

(defmethod ur_msgs::RobotStateRTMsg
  (:init
   (&key
    ((:time __time) 0.0)
    ((:q_target __q_target) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:qd_target __qd_target) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:qdd_target __qdd_target) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:i_target __i_target) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:m_target __m_target) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:q_actual __q_actual) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:qd_actual __qd_actual) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:i_actual __i_actual) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:tool_acc_values __tool_acc_values) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:tcp_force __tcp_force) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:tool_vector __tool_vector) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:tcp_speed __tcp_speed) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:digital_input_bits __digital_input_bits) 0.0)
    ((:motor_temperatures __motor_temperatures) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:controller_timer __controller_timer) 0.0)
    ((:test_value __test_value) 0.0)
    ((:robot_mode __robot_mode) 0.0)
    ((:joint_modes __joint_modes) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _time (float __time))
   (setq _q_target __q_target)
   (setq _qd_target __qd_target)
   (setq _qdd_target __qdd_target)
   (setq _i_target __i_target)
   (setq _m_target __m_target)
   (setq _q_actual __q_actual)
   (setq _qd_actual __qd_actual)
   (setq _i_actual __i_actual)
   (setq _tool_acc_values __tool_acc_values)
   (setq _tcp_force __tcp_force)
   (setq _tool_vector __tool_vector)
   (setq _tcp_speed __tcp_speed)
   (setq _digital_input_bits (float __digital_input_bits))
   (setq _motor_temperatures __motor_temperatures)
   (setq _controller_timer (float __controller_timer))
   (setq _test_value (float __test_value))
   (setq _robot_mode (float __robot_mode))
   (setq _joint_modes __joint_modes)
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:q_target
   (&optional __q_target)
   (if __q_target (setq _q_target __q_target)) _q_target)
  (:qd_target
   (&optional __qd_target)
   (if __qd_target (setq _qd_target __qd_target)) _qd_target)
  (:qdd_target
   (&optional __qdd_target)
   (if __qdd_target (setq _qdd_target __qdd_target)) _qdd_target)
  (:i_target
   (&optional __i_target)
   (if __i_target (setq _i_target __i_target)) _i_target)
  (:m_target
   (&optional __m_target)
   (if __m_target (setq _m_target __m_target)) _m_target)
  (:q_actual
   (&optional __q_actual)
   (if __q_actual (setq _q_actual __q_actual)) _q_actual)
  (:qd_actual
   (&optional __qd_actual)
   (if __qd_actual (setq _qd_actual __qd_actual)) _qd_actual)
  (:i_actual
   (&optional __i_actual)
   (if __i_actual (setq _i_actual __i_actual)) _i_actual)
  (:tool_acc_values
   (&optional __tool_acc_values)
   (if __tool_acc_values (setq _tool_acc_values __tool_acc_values)) _tool_acc_values)
  (:tcp_force
   (&optional __tcp_force)
   (if __tcp_force (setq _tcp_force __tcp_force)) _tcp_force)
  (:tool_vector
   (&optional __tool_vector)
   (if __tool_vector (setq _tool_vector __tool_vector)) _tool_vector)
  (:tcp_speed
   (&optional __tcp_speed)
   (if __tcp_speed (setq _tcp_speed __tcp_speed)) _tcp_speed)
  (:digital_input_bits
   (&optional __digital_input_bits)
   (if __digital_input_bits (setq _digital_input_bits __digital_input_bits)) _digital_input_bits)
  (:motor_temperatures
   (&optional __motor_temperatures)
   (if __motor_temperatures (setq _motor_temperatures __motor_temperatures)) _motor_temperatures)
  (:controller_timer
   (&optional __controller_timer)
   (if __controller_timer (setq _controller_timer __controller_timer)) _controller_timer)
  (:test_value
   (&optional __test_value)
   (if __test_value (setq _test_value __test_value)) _test_value)
  (:robot_mode
   (&optional __robot_mode)
   (if __robot_mode (setq _robot_mode __robot_mode)) _robot_mode)
  (:joint_modes
   (&optional __joint_modes)
   (if __joint_modes (setq _joint_modes __joint_modes)) _joint_modes)
  (:serialization-length
   ()
   (+
    ;; float64 _time
    8
    ;; float64[] _q_target
    (* 8    (length _q_target)) 4
    ;; float64[] _qd_target
    (* 8    (length _qd_target)) 4
    ;; float64[] _qdd_target
    (* 8    (length _qdd_target)) 4
    ;; float64[] _i_target
    (* 8    (length _i_target)) 4
    ;; float64[] _m_target
    (* 8    (length _m_target)) 4
    ;; float64[] _q_actual
    (* 8    (length _q_actual)) 4
    ;; float64[] _qd_actual
    (* 8    (length _qd_actual)) 4
    ;; float64[] _i_actual
    (* 8    (length _i_actual)) 4
    ;; float64[] _tool_acc_values
    (* 8    (length _tool_acc_values)) 4
    ;; float64[] _tcp_force
    (* 8    (length _tcp_force)) 4
    ;; float64[] _tool_vector
    (* 8    (length _tool_vector)) 4
    ;; float64[] _tcp_speed
    (* 8    (length _tcp_speed)) 4
    ;; float64 _digital_input_bits
    8
    ;; float64[] _motor_temperatures
    (* 8    (length _motor_temperatures)) 4
    ;; float64 _controller_timer
    8
    ;; float64 _test_value
    8
    ;; float64 _robot_mode
    8
    ;; float64[] _joint_modes
    (* 8    (length _joint_modes)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _q_target
     (write-long (length _q_target) s)
     (dotimes (i (length _q_target))
       (sys::poke (elt _q_target i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _qd_target
     (write-long (length _qd_target) s)
     (dotimes (i (length _qd_target))
       (sys::poke (elt _qd_target i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _qdd_target
     (write-long (length _qdd_target) s)
     (dotimes (i (length _qdd_target))
       (sys::poke (elt _qdd_target i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _i_target
     (write-long (length _i_target) s)
     (dotimes (i (length _i_target))
       (sys::poke (elt _i_target i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _m_target
     (write-long (length _m_target) s)
     (dotimes (i (length _m_target))
       (sys::poke (elt _m_target i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _q_actual
     (write-long (length _q_actual) s)
     (dotimes (i (length _q_actual))
       (sys::poke (elt _q_actual i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _qd_actual
     (write-long (length _qd_actual) s)
     (dotimes (i (length _qd_actual))
       (sys::poke (elt _qd_actual i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _i_actual
     (write-long (length _i_actual) s)
     (dotimes (i (length _i_actual))
       (sys::poke (elt _i_actual i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _tool_acc_values
     (write-long (length _tool_acc_values) s)
     (dotimes (i (length _tool_acc_values))
       (sys::poke (elt _tool_acc_values i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _tcp_force
     (write-long (length _tcp_force) s)
     (dotimes (i (length _tcp_force))
       (sys::poke (elt _tcp_force i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _tool_vector
     (write-long (length _tool_vector) s)
     (dotimes (i (length _tool_vector))
       (sys::poke (elt _tool_vector i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _tcp_speed
     (write-long (length _tcp_speed) s)
     (dotimes (i (length _tcp_speed))
       (sys::poke (elt _tcp_speed i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _digital_input_bits
       (sys::poke _digital_input_bits (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _motor_temperatures
     (write-long (length _motor_temperatures) s)
     (dotimes (i (length _motor_temperatures))
       (sys::poke (elt _motor_temperatures i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _controller_timer
       (sys::poke _controller_timer (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _test_value
       (sys::poke _test_value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _robot_mode
       (sys::poke _robot_mode (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _joint_modes
     (write-long (length _joint_modes) s)
     (dotimes (i (length _joint_modes))
       (sys::poke (elt _joint_modes i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _q_target
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _q_target (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _q_target i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _qd_target
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _qd_target (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _qd_target i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _qdd_target
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _qdd_target (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _qdd_target i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _i_target
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _i_target (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _i_target i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _m_target
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _m_target (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _m_target i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _q_actual
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _q_actual (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _q_actual i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _qd_actual
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _qd_actual (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _qd_actual i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _i_actual
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _i_actual (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _i_actual i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _tool_acc_values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tool_acc_values (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _tool_acc_values i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _tcp_force
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tcp_force (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _tcp_force i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _tool_vector
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tool_vector (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _tool_vector i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _tcp_speed
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tcp_speed (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _tcp_speed i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _digital_input_bits
     (setq _digital_input_bits (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _motor_temperatures
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor_temperatures (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _motor_temperatures i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _controller_timer
     (setq _controller_timer (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _test_value
     (setq _test_value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _robot_mode
     (setq _robot_mode (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _joint_modes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_modes (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_modes i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get ur_msgs::RobotStateRTMsg :md5sum-) "ce6feddd3ccb4ca7dbcd0ff105b603c7")
(setf (get ur_msgs::RobotStateRTMsg :datatype-) "ur_msgs/RobotStateRTMsg")
(setf (get ur_msgs::RobotStateRTMsg :definition-)
      "# Data structure for the realtime communications interface (aka Matlab interface)
# used by the Universal Robots controller
# 
# This data structure is send at 125 Hz on TCP port 30003
# 
# Dokumentation can be found on the Universal Robots Support Wiki
# (http://wiki03.lynero.net/Technical/RealTimeClientInterface?rev=9)

float64 time
float64[] q_target
float64[] qd_target
float64[] qdd_target
float64[] i_target
float64[] m_target
float64[] q_actual
float64[] qd_actual
float64[] i_actual
float64[] tool_acc_values
float64[] tcp_force
float64[] tool_vector
float64[] tcp_speed
float64 digital_input_bits
float64[] motor_temperatures
float64 controller_timer
float64 test_value
float64 robot_mode
float64[] joint_modes

")



(provide :ur_msgs/RobotStateRTMsg "ce6feddd3ccb4ca7dbcd0ff105b603c7")


