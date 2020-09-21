;; Auto-generated. Do not edit!


(when (boundp 'gazebo_msgs::SetJointTrajectory)
  (if (not (find-package "GAZEBO_MSGS"))
    (make-package "GAZEBO_MSGS"))
  (shadow 'SetJointTrajectory (find-package "GAZEBO_MSGS")))
(unless (find-package "GAZEBO_MSGS::SETJOINTTRAJECTORY")
  (make-package "GAZEBO_MSGS::SETJOINTTRAJECTORY"))
(unless (find-package "GAZEBO_MSGS::SETJOINTTRAJECTORYREQUEST")
  (make-package "GAZEBO_MSGS::SETJOINTTRAJECTORYREQUEST"))
(unless (find-package "GAZEBO_MSGS::SETJOINTTRAJECTORYRESPONSE")
  (make-package "GAZEBO_MSGS::SETJOINTTRAJECTORYRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "TRAJECTORY_MSGS"))
  (ros::roseus-add-msgs "trajectory_msgs"))




(defclass gazebo_msgs::SetJointTrajectoryRequest
  :super ros::object
  :slots (_model_name _joint_trajectory _model_pose _set_model_pose _disable_physics_updates ))

(defmethod gazebo_msgs::SetJointTrajectoryRequest
  (:init
   (&key
    ((:model_name __model_name) "")
    ((:joint_trajectory __joint_trajectory) (instance trajectory_msgs::JointTrajectory :init))
    ((:model_pose __model_pose) (instance geometry_msgs::Pose :init))
    ((:set_model_pose __set_model_pose) nil)
    ((:disable_physics_updates __disable_physics_updates) nil)
    )
   (send-super :init)
   (setq _model_name (string __model_name))
   (setq _joint_trajectory __joint_trajectory)
   (setq _model_pose __model_pose)
   (setq _set_model_pose __set_model_pose)
   (setq _disable_physics_updates __disable_physics_updates)
   self)
  (:model_name
   (&optional __model_name)
   (if __model_name (setq _model_name __model_name)) _model_name)
  (:joint_trajectory
   (&rest __joint_trajectory)
   (if (keywordp (car __joint_trajectory))
       (send* _joint_trajectory __joint_trajectory)
     (progn
       (if __joint_trajectory (setq _joint_trajectory (car __joint_trajectory)))
       _joint_trajectory)))
  (:model_pose
   (&rest __model_pose)
   (if (keywordp (car __model_pose))
       (send* _model_pose __model_pose)
     (progn
       (if __model_pose (setq _model_pose (car __model_pose)))
       _model_pose)))
  (:set_model_pose
   (&optional __set_model_pose)
   (if __set_model_pose (setq _set_model_pose __set_model_pose)) _set_model_pose)
  (:disable_physics_updates
   (&optional __disable_physics_updates)
   (if __disable_physics_updates (setq _disable_physics_updates __disable_physics_updates)) _disable_physics_updates)
  (:serialization-length
   ()
   (+
    ;; string _model_name
    4 (length _model_name)
    ;; trajectory_msgs/JointTrajectory _joint_trajectory
    (send _joint_trajectory :serialization-length)
    ;; geometry_msgs/Pose _model_pose
    (send _model_pose :serialization-length)
    ;; bool _set_model_pose
    1
    ;; bool _disable_physics_updates
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _model_name
       (write-long (length _model_name) s) (princ _model_name s)
     ;; trajectory_msgs/JointTrajectory _joint_trajectory
       (send _joint_trajectory :serialize s)
     ;; geometry_msgs/Pose _model_pose
       (send _model_pose :serialize s)
     ;; bool _set_model_pose
       (if _set_model_pose (write-byte -1 s) (write-byte 0 s))
     ;; bool _disable_physics_updates
       (if _disable_physics_updates (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _model_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; trajectory_msgs/JointTrajectory _joint_trajectory
     (send _joint_trajectory :deserialize buf ptr-) (incf ptr- (send _joint_trajectory :serialization-length))
   ;; geometry_msgs/Pose _model_pose
     (send _model_pose :deserialize buf ptr-) (incf ptr- (send _model_pose :serialization-length))
   ;; bool _set_model_pose
     (setq _set_model_pose (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _disable_physics_updates
     (setq _disable_physics_updates (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass gazebo_msgs::SetJointTrajectoryResponse
  :super ros::object
  :slots (_success _status_message ))

(defmethod gazebo_msgs::SetJointTrajectoryResponse
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

(defclass gazebo_msgs::SetJointTrajectory
  :super ros::object
  :slots ())

(setf (get gazebo_msgs::SetJointTrajectory :md5sum-) "88f5c10979e3f9649d5ae87a3b12aa65")
(setf (get gazebo_msgs::SetJointTrajectory :datatype-) "gazebo_msgs/SetJointTrajectory")
(setf (get gazebo_msgs::SetJointTrajectory :request) gazebo_msgs::SetJointTrajectoryRequest)
(setf (get gazebo_msgs::SetJointTrajectory :response) gazebo_msgs::SetJointTrajectoryResponse)

(defmethod gazebo_msgs::SetJointTrajectoryRequest
  (:response () (instance gazebo_msgs::SetJointTrajectoryResponse :init)))

(setf (get gazebo_msgs::SetJointTrajectoryRequest :md5sum-) "88f5c10979e3f9649d5ae87a3b12aa65")
(setf (get gazebo_msgs::SetJointTrajectoryRequest :datatype-) "gazebo_msgs/SetJointTrajectoryRequest")
(setf (get gazebo_msgs::SetJointTrajectoryRequest :definition-)
      "string model_name
trajectory_msgs/JointTrajectory joint_trajectory
geometry_msgs/Pose model_pose
bool set_model_pose
bool disable_physics_updates

================================================================================
MSG: trajectory_msgs/JointTrajectory
Header header
string[] joint_names
JointTrajectoryPoint[] points
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
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start

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

(setf (get gazebo_msgs::SetJointTrajectoryResponse :md5sum-) "88f5c10979e3f9649d5ae87a3b12aa65")
(setf (get gazebo_msgs::SetJointTrajectoryResponse :datatype-) "gazebo_msgs/SetJointTrajectoryResponse")
(setf (get gazebo_msgs::SetJointTrajectoryResponse :definition-)
      "string model_name
trajectory_msgs/JointTrajectory joint_trajectory
geometry_msgs/Pose model_pose
bool set_model_pose
bool disable_physics_updates

================================================================================
MSG: trajectory_msgs/JointTrajectory
Header header
string[] joint_names
JointTrajectoryPoint[] points
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
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start

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



(provide :gazebo_msgs/SetJointTrajectory "88f5c10979e3f9649d5ae87a3b12aa65")


