;; Auto-generated. Do not edit!


(when (boundp 'ur_msgs::MasterboardDataMsg)
  (if (not (find-package "UR_MSGS"))
    (make-package "UR_MSGS"))
  (shadow 'MasterboardDataMsg (find-package "UR_MSGS")))
(unless (find-package "UR_MSGS::MASTERBOARDDATAMSG")
  (make-package "UR_MSGS::MASTERBOARDDATAMSG"))

(in-package "ROS")
;;//! \htmlinclude MasterboardDataMsg.msg.html


(defclass ur_msgs::MasterboardDataMsg
  :super ros::object
  :slots (_digital_input_bits _digital_output_bits _analog_input_range0 _analog_input_range1 _analog_input0 _analog_input1 _analog_output_domain0 _analog_output_domain1 _analog_output0 _analog_output1 _masterboard_temperature _robot_voltage_48V _robot_current _master_io_current _master_safety_state _master_onoff_state ))

(defmethod ur_msgs::MasterboardDataMsg
  (:init
   (&key
    ((:digital_input_bits __digital_input_bits) 0)
    ((:digital_output_bits __digital_output_bits) 0)
    ((:analog_input_range0 __analog_input_range0) 0)
    ((:analog_input_range1 __analog_input_range1) 0)
    ((:analog_input0 __analog_input0) 0.0)
    ((:analog_input1 __analog_input1) 0.0)
    ((:analog_output_domain0 __analog_output_domain0) 0)
    ((:analog_output_domain1 __analog_output_domain1) 0)
    ((:analog_output0 __analog_output0) 0.0)
    ((:analog_output1 __analog_output1) 0.0)
    ((:masterboard_temperature __masterboard_temperature) 0.0)
    ((:robot_voltage_48V __robot_voltage_48V) 0.0)
    ((:robot_current __robot_current) 0.0)
    ((:master_io_current __master_io_current) 0.0)
    ((:master_safety_state __master_safety_state) 0)
    ((:master_onoff_state __master_onoff_state) 0)
    )
   (send-super :init)
   (setq _digital_input_bits (round __digital_input_bits))
   (setq _digital_output_bits (round __digital_output_bits))
   (setq _analog_input_range0 (round __analog_input_range0))
   (setq _analog_input_range1 (round __analog_input_range1))
   (setq _analog_input0 (float __analog_input0))
   (setq _analog_input1 (float __analog_input1))
   (setq _analog_output_domain0 (round __analog_output_domain0))
   (setq _analog_output_domain1 (round __analog_output_domain1))
   (setq _analog_output0 (float __analog_output0))
   (setq _analog_output1 (float __analog_output1))
   (setq _masterboard_temperature (float __masterboard_temperature))
   (setq _robot_voltage_48V (float __robot_voltage_48V))
   (setq _robot_current (float __robot_current))
   (setq _master_io_current (float __master_io_current))
   (setq _master_safety_state (round __master_safety_state))
   (setq _master_onoff_state (round __master_onoff_state))
   self)
  (:digital_input_bits
   (&optional __digital_input_bits)
   (if __digital_input_bits (setq _digital_input_bits __digital_input_bits)) _digital_input_bits)
  (:digital_output_bits
   (&optional __digital_output_bits)
   (if __digital_output_bits (setq _digital_output_bits __digital_output_bits)) _digital_output_bits)
  (:analog_input_range0
   (&optional __analog_input_range0)
   (if __analog_input_range0 (setq _analog_input_range0 __analog_input_range0)) _analog_input_range0)
  (:analog_input_range1
   (&optional __analog_input_range1)
   (if __analog_input_range1 (setq _analog_input_range1 __analog_input_range1)) _analog_input_range1)
  (:analog_input0
   (&optional __analog_input0)
   (if __analog_input0 (setq _analog_input0 __analog_input0)) _analog_input0)
  (:analog_input1
   (&optional __analog_input1)
   (if __analog_input1 (setq _analog_input1 __analog_input1)) _analog_input1)
  (:analog_output_domain0
   (&optional __analog_output_domain0)
   (if __analog_output_domain0 (setq _analog_output_domain0 __analog_output_domain0)) _analog_output_domain0)
  (:analog_output_domain1
   (&optional __analog_output_domain1)
   (if __analog_output_domain1 (setq _analog_output_domain1 __analog_output_domain1)) _analog_output_domain1)
  (:analog_output0
   (&optional __analog_output0)
   (if __analog_output0 (setq _analog_output0 __analog_output0)) _analog_output0)
  (:analog_output1
   (&optional __analog_output1)
   (if __analog_output1 (setq _analog_output1 __analog_output1)) _analog_output1)
  (:masterboard_temperature
   (&optional __masterboard_temperature)
   (if __masterboard_temperature (setq _masterboard_temperature __masterboard_temperature)) _masterboard_temperature)
  (:robot_voltage_48V
   (&optional __robot_voltage_48V)
   (if __robot_voltage_48V (setq _robot_voltage_48V __robot_voltage_48V)) _robot_voltage_48V)
  (:robot_current
   (&optional __robot_current)
   (if __robot_current (setq _robot_current __robot_current)) _robot_current)
  (:master_io_current
   (&optional __master_io_current)
   (if __master_io_current (setq _master_io_current __master_io_current)) _master_io_current)
  (:master_safety_state
   (&optional __master_safety_state)
   (if __master_safety_state (setq _master_safety_state __master_safety_state)) _master_safety_state)
  (:master_onoff_state
   (&optional __master_onoff_state)
   (if __master_onoff_state (setq _master_onoff_state __master_onoff_state)) _master_onoff_state)
  (:serialization-length
   ()
   (+
    ;; uint32 _digital_input_bits
    4
    ;; uint32 _digital_output_bits
    4
    ;; int8 _analog_input_range0
    1
    ;; int8 _analog_input_range1
    1
    ;; float64 _analog_input0
    8
    ;; float64 _analog_input1
    8
    ;; int8 _analog_output_domain0
    1
    ;; int8 _analog_output_domain1
    1
    ;; float64 _analog_output0
    8
    ;; float64 _analog_output1
    8
    ;; float32 _masterboard_temperature
    4
    ;; float32 _robot_voltage_48V
    4
    ;; float32 _robot_current
    4
    ;; float32 _master_io_current
    4
    ;; uint8 _master_safety_state
    1
    ;; uint8 _master_onoff_state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _digital_input_bits
       (write-long _digital_input_bits s)
     ;; uint32 _digital_output_bits
       (write-long _digital_output_bits s)
     ;; int8 _analog_input_range0
       (write-byte _analog_input_range0 s)
     ;; int8 _analog_input_range1
       (write-byte _analog_input_range1 s)
     ;; float64 _analog_input0
       (sys::poke _analog_input0 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _analog_input1
       (sys::poke _analog_input1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8 _analog_output_domain0
       (write-byte _analog_output_domain0 s)
     ;; int8 _analog_output_domain1
       (write-byte _analog_output_domain1 s)
     ;; float64 _analog_output0
       (sys::poke _analog_output0 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _analog_output1
       (sys::poke _analog_output1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _masterboard_temperature
       (sys::poke _masterboard_temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _robot_voltage_48V
       (sys::poke _robot_voltage_48V (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _robot_current
       (sys::poke _robot_current (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _master_io_current
       (sys::poke _master_io_current (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _master_safety_state
       (write-byte _master_safety_state s)
     ;; uint8 _master_onoff_state
       (write-byte _master_onoff_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _digital_input_bits
     (setq _digital_input_bits (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _digital_output_bits
     (setq _digital_output_bits (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _analog_input_range0
     (setq _analog_input_range0 (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _analog_input_range0 127) (setq _analog_input_range0 (- _analog_input_range0 256)))
   ;; int8 _analog_input_range1
     (setq _analog_input_range1 (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _analog_input_range1 127) (setq _analog_input_range1 (- _analog_input_range1 256)))
   ;; float64 _analog_input0
     (setq _analog_input0 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _analog_input1
     (setq _analog_input1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8 _analog_output_domain0
     (setq _analog_output_domain0 (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _analog_output_domain0 127) (setq _analog_output_domain0 (- _analog_output_domain0 256)))
   ;; int8 _analog_output_domain1
     (setq _analog_output_domain1 (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _analog_output_domain1 127) (setq _analog_output_domain1 (- _analog_output_domain1 256)))
   ;; float64 _analog_output0
     (setq _analog_output0 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _analog_output1
     (setq _analog_output1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _masterboard_temperature
     (setq _masterboard_temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _robot_voltage_48V
     (setq _robot_voltage_48V (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _robot_current
     (setq _robot_current (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _master_io_current
     (setq _master_io_current (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _master_safety_state
     (setq _master_safety_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _master_onoff_state
     (setq _master_onoff_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ur_msgs::MasterboardDataMsg :md5sum-) "807af5dc427082b111fa23d1fd2cd585")
(setf (get ur_msgs::MasterboardDataMsg :datatype-) "ur_msgs/MasterboardDataMsg")
(setf (get ur_msgs::MasterboardDataMsg :definition-)
      "# This data structure contains the MasterboardData structure
# used by the Universal Robots controller
#
# MasterboardData is part of the data structure being send on the 
# secondary client communications interface
# 
# This data structure is send at 10 Hz on TCP port 30002
# 
# Documentation can be found on the Universal Robots Support site, article
# number 16496.

uint32 digital_input_bits
uint32 digital_output_bits
int8 analog_input_range0
int8 analog_input_range1
float64 analog_input0
float64 analog_input1
int8 analog_output_domain0
int8 analog_output_domain1
float64 analog_output0
float64 analog_output1
float32 masterboard_temperature
float32 robot_voltage_48V
float32 robot_current
float32 master_io_current
uint8 master_safety_state
uint8 master_onoff_state

")



(provide :ur_msgs/MasterboardDataMsg "807af5dc427082b111fa23d1fd2cd585")


