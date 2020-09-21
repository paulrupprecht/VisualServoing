;; Auto-generated. Do not edit!


(when (boundp 'ur_msgs::ToolDataMsg)
  (if (not (find-package "UR_MSGS"))
    (make-package "UR_MSGS"))
  (shadow 'ToolDataMsg (find-package "UR_MSGS")))
(unless (find-package "UR_MSGS::TOOLDATAMSG")
  (make-package "UR_MSGS::TOOLDATAMSG"))

(in-package "ROS")
;;//! \htmlinclude ToolDataMsg.msg.html


(intern "*ANALOG_INPUT_RANGE_CURRENT*" (find-package "UR_MSGS::TOOLDATAMSG"))
(shadow '*ANALOG_INPUT_RANGE_CURRENT* (find-package "UR_MSGS::TOOLDATAMSG"))
(defconstant ur_msgs::ToolDataMsg::*ANALOG_INPUT_RANGE_CURRENT* 0)
(intern "*ANALOG_INPUT_RANGE_VOLTAGE*" (find-package "UR_MSGS::TOOLDATAMSG"))
(shadow '*ANALOG_INPUT_RANGE_VOLTAGE* (find-package "UR_MSGS::TOOLDATAMSG"))
(defconstant ur_msgs::ToolDataMsg::*ANALOG_INPUT_RANGE_VOLTAGE* 1)
(intern "*TOOL_BOOTLOADER_MODE*" (find-package "UR_MSGS::TOOLDATAMSG"))
(shadow '*TOOL_BOOTLOADER_MODE* (find-package "UR_MSGS::TOOLDATAMSG"))
(defconstant ur_msgs::ToolDataMsg::*TOOL_BOOTLOADER_MODE* 249)
(intern "*TOOL_RUNNING_MODE*" (find-package "UR_MSGS::TOOLDATAMSG"))
(shadow '*TOOL_RUNNING_MODE* (find-package "UR_MSGS::TOOLDATAMSG"))
(defconstant ur_msgs::ToolDataMsg::*TOOL_RUNNING_MODE* 253)
(intern "*TOOL_IDLE_MODE*" (find-package "UR_MSGS::TOOLDATAMSG"))
(shadow '*TOOL_IDLE_MODE* (find-package "UR_MSGS::TOOLDATAMSG"))
(defconstant ur_msgs::ToolDataMsg::*TOOL_IDLE_MODE* 255)
(defclass ur_msgs::ToolDataMsg
  :super ros::object
  :slots (_analog_input_range2 _analog_input_range3 _analog_input2 _analog_input3 _tool_voltage_48v _tool_output_voltage _tool_current _tool_temperature _tool_mode ))

(defmethod ur_msgs::ToolDataMsg
  (:init
   (&key
    ((:analog_input_range2 __analog_input_range2) 0)
    ((:analog_input_range3 __analog_input_range3) 0)
    ((:analog_input2 __analog_input2) 0.0)
    ((:analog_input3 __analog_input3) 0.0)
    ((:tool_voltage_48v __tool_voltage_48v) 0.0)
    ((:tool_output_voltage __tool_output_voltage) 0)
    ((:tool_current __tool_current) 0.0)
    ((:tool_temperature __tool_temperature) 0.0)
    ((:tool_mode __tool_mode) 0)
    )
   (send-super :init)
   (setq _analog_input_range2 (round __analog_input_range2))
   (setq _analog_input_range3 (round __analog_input_range3))
   (setq _analog_input2 (float __analog_input2))
   (setq _analog_input3 (float __analog_input3))
   (setq _tool_voltage_48v (float __tool_voltage_48v))
   (setq _tool_output_voltage (round __tool_output_voltage))
   (setq _tool_current (float __tool_current))
   (setq _tool_temperature (float __tool_temperature))
   (setq _tool_mode (round __tool_mode))
   self)
  (:analog_input_range2
   (&optional __analog_input_range2)
   (if __analog_input_range2 (setq _analog_input_range2 __analog_input_range2)) _analog_input_range2)
  (:analog_input_range3
   (&optional __analog_input_range3)
   (if __analog_input_range3 (setq _analog_input_range3 __analog_input_range3)) _analog_input_range3)
  (:analog_input2
   (&optional __analog_input2)
   (if __analog_input2 (setq _analog_input2 __analog_input2)) _analog_input2)
  (:analog_input3
   (&optional __analog_input3)
   (if __analog_input3 (setq _analog_input3 __analog_input3)) _analog_input3)
  (:tool_voltage_48v
   (&optional __tool_voltage_48v)
   (if __tool_voltage_48v (setq _tool_voltage_48v __tool_voltage_48v)) _tool_voltage_48v)
  (:tool_output_voltage
   (&optional __tool_output_voltage)
   (if __tool_output_voltage (setq _tool_output_voltage __tool_output_voltage)) _tool_output_voltage)
  (:tool_current
   (&optional __tool_current)
   (if __tool_current (setq _tool_current __tool_current)) _tool_current)
  (:tool_temperature
   (&optional __tool_temperature)
   (if __tool_temperature (setq _tool_temperature __tool_temperature)) _tool_temperature)
  (:tool_mode
   (&optional __tool_mode)
   (if __tool_mode (setq _tool_mode __tool_mode)) _tool_mode)
  (:serialization-length
   ()
   (+
    ;; int8 _analog_input_range2
    1
    ;; int8 _analog_input_range3
    1
    ;; float64 _analog_input2
    8
    ;; float64 _analog_input3
    8
    ;; float32 _tool_voltage_48v
    4
    ;; uint8 _tool_output_voltage
    1
    ;; float32 _tool_current
    4
    ;; float32 _tool_temperature
    4
    ;; uint8 _tool_mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _analog_input_range2
       (write-byte _analog_input_range2 s)
     ;; int8 _analog_input_range3
       (write-byte _analog_input_range3 s)
     ;; float64 _analog_input2
       (sys::poke _analog_input2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _analog_input3
       (sys::poke _analog_input3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _tool_voltage_48v
       (sys::poke _tool_voltage_48v (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _tool_output_voltage
       (write-byte _tool_output_voltage s)
     ;; float32 _tool_current
       (sys::poke _tool_current (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tool_temperature
       (sys::poke _tool_temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _tool_mode
       (write-byte _tool_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _analog_input_range2
     (setq _analog_input_range2 (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _analog_input_range2 127) (setq _analog_input_range2 (- _analog_input_range2 256)))
   ;; int8 _analog_input_range3
     (setq _analog_input_range3 (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _analog_input_range3 127) (setq _analog_input_range3 (- _analog_input_range3 256)))
   ;; float64 _analog_input2
     (setq _analog_input2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _analog_input3
     (setq _analog_input3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _tool_voltage_48v
     (setq _tool_voltage_48v (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _tool_output_voltage
     (setq _tool_output_voltage (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _tool_current
     (setq _tool_current (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tool_temperature
     (setq _tool_temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _tool_mode
     (setq _tool_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ur_msgs::ToolDataMsg :md5sum-) "404fc266f37d89f75b372d12fa94a122")
(setf (get ur_msgs::ToolDataMsg :datatype-) "ur_msgs/ToolDataMsg")
(setf (get ur_msgs::ToolDataMsg :definition-)
      "# This data structure contains the ToolData structure
# used by the Universal Robots controller

int8 ANALOG_INPUT_RANGE_CURRENT = 0
int8 ANALOG_INPUT_RANGE_VOLTAGE = 1

int8 analog_input_range2 # one of ANALOG_INPUT_RANGE_*
int8 analog_input_range3 # one of ANALOG_INPUT_RANGE_*
float64 analog_input2
float64 analog_input3
float32 tool_voltage_48v
uint8 tool_output_voltage
float32 tool_current
float32 tool_temperature

uint8 TOOL_BOOTLOADER_MODE = 249
uint8 TOOL_RUNNING_MODE = 253
uint8 TOOL_IDLE_MODE = 255

uint8 tool_mode # one of TOOL_*

")



(provide :ur_msgs/ToolDataMsg "404fc266f37d89f75b372d12fa94a122")


