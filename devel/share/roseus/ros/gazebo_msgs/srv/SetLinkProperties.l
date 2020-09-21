;; Auto-generated. Do not edit!


(when (boundp 'gazebo_msgs::SetLinkProperties)
  (if (not (find-package "GAZEBO_MSGS"))
    (make-package "GAZEBO_MSGS"))
  (shadow 'SetLinkProperties (find-package "GAZEBO_MSGS")))
(unless (find-package "GAZEBO_MSGS::SETLINKPROPERTIES")
  (make-package "GAZEBO_MSGS::SETLINKPROPERTIES"))
(unless (find-package "GAZEBO_MSGS::SETLINKPROPERTIESREQUEST")
  (make-package "GAZEBO_MSGS::SETLINKPROPERTIESREQUEST"))
(unless (find-package "GAZEBO_MSGS::SETLINKPROPERTIESRESPONSE")
  (make-package "GAZEBO_MSGS::SETLINKPROPERTIESRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass gazebo_msgs::SetLinkPropertiesRequest
  :super ros::object
  :slots (_link_name _com _gravity_mode _mass _ixx _ixy _ixz _iyy _iyz _izz ))

(defmethod gazebo_msgs::SetLinkPropertiesRequest
  (:init
   (&key
    ((:link_name __link_name) "")
    ((:com __com) (instance geometry_msgs::Pose :init))
    ((:gravity_mode __gravity_mode) nil)
    ((:mass __mass) 0.0)
    ((:ixx __ixx) 0.0)
    ((:ixy __ixy) 0.0)
    ((:ixz __ixz) 0.0)
    ((:iyy __iyy) 0.0)
    ((:iyz __iyz) 0.0)
    ((:izz __izz) 0.0)
    )
   (send-super :init)
   (setq _link_name (string __link_name))
   (setq _com __com)
   (setq _gravity_mode __gravity_mode)
   (setq _mass (float __mass))
   (setq _ixx (float __ixx))
   (setq _ixy (float __ixy))
   (setq _ixz (float __ixz))
   (setq _iyy (float __iyy))
   (setq _iyz (float __iyz))
   (setq _izz (float __izz))
   self)
  (:link_name
   (&optional __link_name)
   (if __link_name (setq _link_name __link_name)) _link_name)
  (:com
   (&rest __com)
   (if (keywordp (car __com))
       (send* _com __com)
     (progn
       (if __com (setq _com (car __com)))
       _com)))
  (:gravity_mode
   (&optional __gravity_mode)
   (if __gravity_mode (setq _gravity_mode __gravity_mode)) _gravity_mode)
  (:mass
   (&optional __mass)
   (if __mass (setq _mass __mass)) _mass)
  (:ixx
   (&optional __ixx)
   (if __ixx (setq _ixx __ixx)) _ixx)
  (:ixy
   (&optional __ixy)
   (if __ixy (setq _ixy __ixy)) _ixy)
  (:ixz
   (&optional __ixz)
   (if __ixz (setq _ixz __ixz)) _ixz)
  (:iyy
   (&optional __iyy)
   (if __iyy (setq _iyy __iyy)) _iyy)
  (:iyz
   (&optional __iyz)
   (if __iyz (setq _iyz __iyz)) _iyz)
  (:izz
   (&optional __izz)
   (if __izz (setq _izz __izz)) _izz)
  (:serialization-length
   ()
   (+
    ;; string _link_name
    4 (length _link_name)
    ;; geometry_msgs/Pose _com
    (send _com :serialization-length)
    ;; bool _gravity_mode
    1
    ;; float64 _mass
    8
    ;; float64 _ixx
    8
    ;; float64 _ixy
    8
    ;; float64 _ixz
    8
    ;; float64 _iyy
    8
    ;; float64 _iyz
    8
    ;; float64 _izz
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _link_name
       (write-long (length _link_name) s) (princ _link_name s)
     ;; geometry_msgs/Pose _com
       (send _com :serialize s)
     ;; bool _gravity_mode
       (if _gravity_mode (write-byte -1 s) (write-byte 0 s))
     ;; float64 _mass
       (sys::poke _mass (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ixx
       (sys::poke _ixx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ixy
       (sys::poke _ixy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ixz
       (sys::poke _ixz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _iyy
       (sys::poke _iyy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _iyz
       (sys::poke _iyz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _izz
       (sys::poke _izz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _link_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _link_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _com
     (send _com :deserialize buf ptr-) (incf ptr- (send _com :serialization-length))
   ;; bool _gravity_mode
     (setq _gravity_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _mass
     (setq _mass (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ixx
     (setq _ixx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ixy
     (setq _ixy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ixz
     (setq _ixz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _iyy
     (setq _iyy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _iyz
     (setq _iyz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _izz
     (setq _izz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass gazebo_msgs::SetLinkPropertiesResponse
  :super ros::object
  :slots (_success _status_message ))

(defmethod gazebo_msgs::SetLinkPropertiesResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:status_message __status_message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _status_message (string __status_message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:status_message
   (&optional __status_message)
   (if __status_message (setq _status_message __status_message)) _status_message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _status_message
    4 (length _status_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _status_message
       (write-long (length _status_message) s) (princ _status_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _status_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass gazebo_msgs::SetLinkProperties
  :super ros::object
  :slots ())

(setf (get gazebo_msgs::SetLinkProperties :md5sum-) "d534ce1b36ee99de0ffa806c3a6348f0")
(setf (get gazebo_msgs::SetLinkProperties :datatype-) "gazebo_msgs/SetLinkProperties")
(setf (get gazebo_msgs::SetLinkProperties :request) gazebo_msgs::SetLinkPropertiesRequest)
(setf (get gazebo_msgs::SetLinkProperties :response) gazebo_msgs::SetLinkPropertiesResponse)

(defmethod gazebo_msgs::SetLinkPropertiesRequest
  (:response () (instance gazebo_msgs::SetLinkPropertiesResponse :init)))

(setf (get gazebo_msgs::SetLinkPropertiesRequest :md5sum-) "d534ce1b36ee99de0ffa806c3a6348f0")
(setf (get gazebo_msgs::SetLinkPropertiesRequest :datatype-) "gazebo_msgs/SetLinkPropertiesRequest")
(setf (get gazebo_msgs::SetLinkPropertiesRequest :definition-)
      "string link_name

geometry_msgs/Pose com


bool gravity_mode
float64 mass
float64 ixx
float64 ixy
float64 ixz
float64 iyy
float64 iyz
float64 izz

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool success
string status_message

")

(setf (get gazebo_msgs::SetLinkPropertiesResponse :md5sum-) "d534ce1b36ee99de0ffa806c3a6348f0")
(setf (get gazebo_msgs::SetLinkPropertiesResponse :datatype-) "gazebo_msgs/SetLinkPropertiesResponse")
(setf (get gazebo_msgs::SetLinkPropertiesResponse :definition-)
      "string link_name

geometry_msgs/Pose com


bool gravity_mode
float64 mass
float64 ixx
float64 ixy
float64 ixz
float64 iyy
float64 iyz
float64 izz

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool success
string status_message

")



(provide :gazebo_msgs/SetLinkProperties "d534ce1b36ee99de0ffa806c3a6348f0")


