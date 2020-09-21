;; Auto-generated. Do not edit!


(when (boundp 'gazebo_msgs::GetModelState)
  (if (not (find-package "GAZEBO_MSGS"))
    (make-package "GAZEBO_MSGS"))
  (shadow 'GetModelState (find-package "GAZEBO_MSGS")))
(unless (find-package "GAZEBO_MSGS::GETMODELSTATE")
  (make-package "GAZEBO_MSGS::GETMODELSTATE"))
(unless (find-package "GAZEBO_MSGS::GETMODELSTATEREQUEST")
  (make-package "GAZEBO_MSGS::GETMODELSTATEREQUEST"))
(unless (find-package "GAZEBO_MSGS::GETMODELSTATERESPONSE")
  (make-package "GAZEBO_MSGS::GETMODELSTATERESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gazebo_msgs::GetModelStateRequest
  :super ros::object
  :slots (_model_name _relative_entity_name ))

(defmethod gazebo_msgs::GetModelStateRequest
  (:init
   (&key
    ((:model_name __model_name) "")
    ((:relative_entity_name __relative_entity_name) "")
    )
   (send-super :init)
   (setq _model_name (string __model_name))
   (setq _relative_entity_name (string __relative_entity_name))
   self)
  (:model_name
   (&optional __model_name)
   (if __model_name (setq _model_name __model_name)) _model_name)
  (:relative_entity_name
   (&optional __relative_entity_name)
   (if __relative_entity_name (setq _relative_entity_name __relative_entity_name)) _relative_entity_name)
  (:serialization-length
   ()
   (+
    ;; string _model_name
    4 (length _model_name)
    ;; string _relative_entity_name
    4 (length _relative_entity_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _model_name
       (write-long (length _model_name) s) (princ _model_name s)
     ;; string _relative_entity_name
       (write-long (length _relative_entity_name) s) (princ _relative_entity_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _model_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _relative_entity_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _relative_entity_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass gazebo_msgs::GetModelStateResponse
  :super ros::object
  :slots (_header _pose _twist _success _status_message ))

(defmethod gazebo_msgs::GetModelStateResponse
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:twist __twist) (instance geometry_msgs::Twist :init))
    ((:success __success) nil)
    ((:status_message __status_message) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _pose __pose)
   (setq _twist __twist)
   (setq _success __success)
   (setq _status_message (string __status_message))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:twist
   (&rest __twist)
   (if (keywordp (car __twist))
       (send* _twist __twist)
     (progn
       (if __twist (setq _twist (car __twist)))
       _twist)))
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:status_message
   (&optional __status_message)
   (if __status_message (setq _status_message __status_message)) _status_message)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/Twist _twist
    (send _twist :serialization-length)
    ;; bool _success
    1
    ;; string _status_message
    4 (length _status_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; geometry_msgs/Twist _twist
       (send _twist :serialize s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _status_message
       (write-long (length _status_message) s) (princ _status_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/Twist _twist
     (send _twist :deserialize buf ptr-) (incf ptr- (send _twist :serialization-length))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _status_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass gazebo_msgs::GetModelState
  :super ros::object
  :slots ())

(setf (get gazebo_msgs::GetModelState :md5sum-) "4c515e936d3319c9610c559c60bfc3d4")
(setf (get gazebo_msgs::GetModelState :datatype-) "gazebo_msgs/GetModelState")
(setf (get gazebo_msgs::GetModelState :request) gazebo_msgs::GetModelStateRequest)
(setf (get gazebo_msgs::GetModelState :response) gazebo_msgs::GetModelStateResponse)

(defmethod gazebo_msgs::GetModelStateRequest
  (:response () (instance gazebo_msgs::GetModelStateResponse :init)))

(setf (get gazebo_msgs::GetModelStateRequest :md5sum-) "4c515e936d3319c9610c559c60bfc3d4")
(setf (get gazebo_msgs::GetModelStateRequest :datatype-) "gazebo_msgs/GetModelStateRequest")
(setf (get gazebo_msgs::GetModelStateRequest :definition-)
      "string model_name
string relative_entity_name



---
Header header



geometry_msgs/Pose pose
geometry_msgs/Twist twist
bool success
string status_message


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

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

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")

(setf (get gazebo_msgs::GetModelStateResponse :md5sum-) "4c515e936d3319c9610c559c60bfc3d4")
(setf (get gazebo_msgs::GetModelStateResponse :datatype-) "gazebo_msgs/GetModelStateResponse")
(setf (get gazebo_msgs::GetModelStateResponse :definition-)
      "string model_name
string relative_entity_name



---
Header header



geometry_msgs/Pose pose
geometry_msgs/Twist twist
bool success
string status_message


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

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

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")



(provide :gazebo_msgs/GetModelState "4c515e936d3319c9610c559c60bfc3d4")


