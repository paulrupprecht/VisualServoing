;; Auto-generated. Do not edit!


(when (boundp 'gazebo_msgs::GetJointProperties)
  (if (not (find-package "GAZEBO_MSGS"))
    (make-package "GAZEBO_MSGS"))
  (shadow 'GetJointProperties (find-package "GAZEBO_MSGS")))
(unless (find-package "GAZEBO_MSGS::GETJOINTPROPERTIES")
  (make-package "GAZEBO_MSGS::GETJOINTPROPERTIES"))
(unless (find-package "GAZEBO_MSGS::GETJOINTPROPERTIESREQUEST")
  (make-package "GAZEBO_MSGS::GETJOINTPROPERTIESREQUEST"))
(unless (find-package "GAZEBO_MSGS::GETJOINTPROPERTIESRESPONSE")
  (make-package "GAZEBO_MSGS::GETJOINTPROPERTIESRESPONSE"))

(in-package "ROS")





(defclass gazebo_msgs::GetJointPropertiesRequest
  :super ros::object
  :slots (_joint_name ))

(defmethod gazebo_msgs::GetJointPropertiesRequest
  (:init
   (&key
    ((:joint_name __joint_name) "")
    )
   (send-super :init)
   (setq _joint_name (string __joint_name))
   self)
  (:joint_name
   (&optional __joint_name)
   (if __joint_name (setq _joint_name __joint_name)) _joint_name)
  (:serialization-length
   ()
   (+
    ;; string _joint_name
    4 (length _joint_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _joint_name
       (write-long (length _joint_name) s) (princ _joint_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _joint_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _joint_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(intern "*REVOLUTE*" (find-package "GAZEBO_MSGS::GETJOINTPROPERTIESRESPONSE"))
(shadow '*REVOLUTE* (find-package "GAZEBO_MSGS::GETJOINTPROPERTIESRESPONSE"))
(defconstant gazebo_msgs::GetJointPropertiesResponse::*REVOLUTE* 0)
(intern "*CONTINUOUS*" (find-package "GAZEBO_MSGS::GETJOINTPROPERTIESRESPONSE"))
(shadow '*CONTINUOUS* (find-package "GAZEBO_MSGS::GETJOINTPROPERTIESRESPONSE"))
(defconstant gazebo_msgs::GetJointPropertiesResponse::*CONTINUOUS* 1)
(intern "*PRISMATIC*" (find-package "GAZEBO_MSGS::GETJOINTPROPERTIESRESPONSE"))
(shadow '*PRISMATIC* (find-package "GAZEBO_MSGS::GETJOINTPROPERTIESRESPONSE"))
(defconstant gazebo_msgs::GetJointPropertiesResponse::*PRISMATIC* 2)
(intern "*FIXED*" (find-package "GAZEBO_MSGS::GETJOINTPROPERTIESRESPONSE"))
(shadow '*FIXED* (find-package "GAZEBO_MSGS::GETJOINTPROPERTIESRESPONSE"))
(defconstant gazebo_msgs::GetJointPropertiesResponse::*FIXED* 3)
(intern "*BALL*" (find-package "GAZEBO_MSGS::GETJOINTPROPERTIESRESPONSE"))
(shadow '*BALL* (find-package "GAZEBO_MSGS::GETJOINTPROPERTIESRESPONSE"))
(defconstant gazebo_msgs::GetJointPropertiesResponse::*BALL* 4)
(intern "*UNIVERSAL*" (find-package "GAZEBO_MSGS::GETJOINTPROPERTIESRESPONSE"))
(shadow '*UNIVERSAL* (find-package "GAZEBO_MSGS::GETJOINTPROPERTIESRESPONSE"))
(defconstant gazebo_msgs::GetJointPropertiesResponse::*UNIVERSAL* 5)
(defclass gazebo_msgs::GetJointPropertiesResponse
  :super ros::object
  :slots (_type _damping _position _rate _success _status_message ))

(defmethod gazebo_msgs::GetJointPropertiesResponse
  (:init
   (&key
    ((:type __type) 0)
    ((:damping __damping) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:position __position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:rate __rate) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:success __success) nil)
    ((:status_message __status_message) "")
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _damping __damping)
   (setq _position __position)
   (setq _rate __rate)
   (setq _success __success)
   (setq _status_message (string __status_message))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:damping
   (&optional __damping)
   (if __damping (setq _damping __damping)) _damping)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:rate
   (&optional __rate)
   (if __rate (setq _rate __rate)) _rate)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:status_message
   (&optional __status_message)
   (if __status_message (setq _status_message __status_message)) _status_message)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ;; float64[] _damping
    (* 8    (length _damping)) 4
    ;; float64[] _position
    (* 8    (length _position)) 4
    ;; float64[] _rate
    (* 8    (length _rate)) 4
    ;; bool _success
    1
    ;; string _status_message
    4 (length _status_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;; float64[] _damping
     (write-long (length _damping) s)
     (dotimes (i (length _damping))
       (sys::poke (elt _damping i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _position
     (write-long (length _position) s)
     (dotimes (i (length _position))
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _rate
     (write-long (length _rate) s)
     (dotimes (i (length _rate))
       (sys::poke (elt _rate i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _status_message
       (write-long (length _status_message) s) (princ _status_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64[] _damping
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _damping (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _damping i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _rate
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rate (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _rate i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _status_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass gazebo_msgs::GetJointProperties
  :super ros::object
  :slots ())

(setf (get gazebo_msgs::GetJointProperties :md5sum-) "7b30be900f50aa21efec4a0ec92d91c9")
(setf (get gazebo_msgs::GetJointProperties :datatype-) "gazebo_msgs/GetJointProperties")
(setf (get gazebo_msgs::GetJointProperties :request) gazebo_msgs::GetJointPropertiesRequest)
(setf (get gazebo_msgs::GetJointProperties :response) gazebo_msgs::GetJointPropertiesResponse)

(defmethod gazebo_msgs::GetJointPropertiesRequest
  (:response () (instance gazebo_msgs::GetJointPropertiesResponse :init)))

(setf (get gazebo_msgs::GetJointPropertiesRequest :md5sum-) "7b30be900f50aa21efec4a0ec92d91c9")
(setf (get gazebo_msgs::GetJointPropertiesRequest :datatype-) "gazebo_msgs/GetJointPropertiesRequest")
(setf (get gazebo_msgs::GetJointPropertiesRequest :definition-)
      "string joint_name
---

uint8 type
uint8 REVOLUTE    = 0
uint8 CONTINUOUS  = 1
uint8 PRISMATIC   = 2
uint8 FIXED       = 3
uint8 BALL        = 4
uint8 UNIVERSAL   = 5

float64[] damping

float64[] position
float64[] rate

bool success
string status_message

")

(setf (get gazebo_msgs::GetJointPropertiesResponse :md5sum-) "7b30be900f50aa21efec4a0ec92d91c9")
(setf (get gazebo_msgs::GetJointPropertiesResponse :datatype-) "gazebo_msgs/GetJointPropertiesResponse")
(setf (get gazebo_msgs::GetJointPropertiesResponse :definition-)
      "string joint_name
---

uint8 type
uint8 REVOLUTE    = 0
uint8 CONTINUOUS  = 1
uint8 PRISMATIC   = 2
uint8 FIXED       = 3
uint8 BALL        = 4
uint8 UNIVERSAL   = 5

float64[] damping

float64[] position
float64[] rate

bool success
string status_message

")



(provide :gazebo_msgs/GetJointProperties "7b30be900f50aa21efec4a0ec92d91c9")


