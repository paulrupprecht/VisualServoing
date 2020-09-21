;; Auto-generated. Do not edit!


(when (boundp 'ur_msgs::SetIO)
  (if (not (find-package "UR_MSGS"))
    (make-package "UR_MSGS"))
  (shadow 'SetIO (find-package "UR_MSGS")))
(unless (find-package "UR_MSGS::SETIO")
  (make-package "UR_MSGS::SETIO"))
(unless (find-package "UR_MSGS::SETIOREQUEST")
  (make-package "UR_MSGS::SETIOREQUEST"))
(unless (find-package "UR_MSGS::SETIORESPONSE")
  (make-package "UR_MSGS::SETIORESPONSE"))

(in-package "ROS")





(intern "*FUN_SET_DIGITAL_OUT*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*FUN_SET_DIGITAL_OUT* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*FUN_SET_DIGITAL_OUT* 1)
(intern "*FUN_SET_FLAG*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*FUN_SET_FLAG* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*FUN_SET_FLAG* 2)
(intern "*FUN_SET_ANALOG_OUT*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*FUN_SET_ANALOG_OUT* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*FUN_SET_ANALOG_OUT* 3)
(intern "*FUN_SET_TOOL_VOLTAGE*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*FUN_SET_TOOL_VOLTAGE* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*FUN_SET_TOOL_VOLTAGE* 4)
(intern "*STATE_OFF*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*STATE_OFF* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*STATE_OFF* 0)
(intern "*STATE_ON*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*STATE_ON* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*STATE_ON* 1)
(intern "*STATE_TOOL_VOLTAGE_0V*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*STATE_TOOL_VOLTAGE_0V* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*STATE_TOOL_VOLTAGE_0V* 0)
(intern "*STATE_TOOL_VOLTAGE_12V*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*STATE_TOOL_VOLTAGE_12V* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*STATE_TOOL_VOLTAGE_12V* 12)
(intern "*STATE_TOOL_VOLTAGE_24V*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*STATE_TOOL_VOLTAGE_24V* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*STATE_TOOL_VOLTAGE_24V* 24)
(defclass ur_msgs::SetIORequest
  :super ros::object
  :slots (_fun _pin _state ))

(defmethod ur_msgs::SetIORequest
  (:init
   (&key
    ((:fun __fun) 0)
    ((:pin __pin) 0)
    ((:state __state) 0.0)
    )
   (send-super :init)
   (setq _fun (round __fun))
   (setq _pin (round __pin))
   (setq _state (float __state))
   self)
  (:fun
   (&optional __fun)
   (if __fun (setq _fun __fun)) _fun)
  (:pin
   (&optional __pin)
   (if __pin (setq _pin __pin)) _pin)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; int8 _fun
    1
    ;; int8 _pin
    1
    ;; float32 _state
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _fun
       (write-byte _fun s)
     ;; int8 _pin
       (write-byte _pin s)
     ;; float32 _state
       (sys::poke _state (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _fun
     (setq _fun (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _fun 127) (setq _fun (- _fun 256)))
   ;; int8 _pin
     (setq _pin (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _pin 127) (setq _pin (- _pin 256)))
   ;; float32 _state
     (setq _state (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ur_msgs::SetIOResponse
  :super ros::object
  :slots (_success ))

(defmethod ur_msgs::SetIOResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ur_msgs::SetIO
  :super ros::object
  :slots ())

(setf (get ur_msgs::SetIO :md5sum-) "e1b580ccf43a938f2efbbb98bbe3e277")
(setf (get ur_msgs::SetIO :datatype-) "ur_msgs/SetIO")
(setf (get ur_msgs::SetIO :request) ur_msgs::SetIORequest)
(setf (get ur_msgs::SetIO :response) ur_msgs::SetIOResponse)

(defmethod ur_msgs::SetIORequest
  (:response () (instance ur_msgs::SetIOResponse :init)))

(setf (get ur_msgs::SetIORequest :md5sum-) "e1b580ccf43a938f2efbbb98bbe3e277")
(setf (get ur_msgs::SetIORequest :datatype-) "ur_msgs/SetIORequest")
(setf (get ur_msgs::SetIORequest :definition-)
      "





















int8 FUN_SET_DIGITAL_OUT = 1
int8 FUN_SET_FLAG = 2
int8 FUN_SET_ANALOG_OUT = 3
int8 FUN_SET_TOOL_VOLTAGE = 4


int8 STATE_OFF = 0
int8 STATE_ON = 1


int8 STATE_TOOL_VOLTAGE_0V = 0
int8 STATE_TOOL_VOLTAGE_12V = 12
int8 STATE_TOOL_VOLTAGE_24V = 24


int8 fun
int8 pin
float32 state
---
bool success

")

(setf (get ur_msgs::SetIOResponse :md5sum-) "e1b580ccf43a938f2efbbb98bbe3e277")
(setf (get ur_msgs::SetIOResponse :datatype-) "ur_msgs/SetIOResponse")
(setf (get ur_msgs::SetIOResponse :definition-)
      "





















int8 FUN_SET_DIGITAL_OUT = 1
int8 FUN_SET_FLAG = 2
int8 FUN_SET_ANALOG_OUT = 3
int8 FUN_SET_TOOL_VOLTAGE = 4


int8 STATE_OFF = 0
int8 STATE_ON = 1


int8 STATE_TOOL_VOLTAGE_0V = 0
int8 STATE_TOOL_VOLTAGE_12V = 12
int8 STATE_TOOL_VOLTAGE_24V = 24


int8 fun
int8 pin
float32 state
---
bool success

")



(provide :ur_msgs/SetIO "e1b580ccf43a938f2efbbb98bbe3e277")


