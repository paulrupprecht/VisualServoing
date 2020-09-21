; Auto-generated. Do not edit!


(cl:in-package gazebo_msgs-srv)


;//! \htmlinclude SetJointTrajectory-request.msg.html

(cl:defclass <SetJointTrajectory-request> (roslisp-msg-protocol:ros-message)
  ((model_name
    :reader model_name
    :initarg :model_name
    :type cl:string
    :initform "")
   (joint_trajectory
    :reader joint_trajectory
    :initarg :joint_trajectory
    :type trajectory_msgs-msg:JointTrajectory
    :initform (cl:make-instance 'trajectory_msgs-msg:JointTrajectory))
   (model_pose
    :reader model_pose
    :initarg :model_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (set_model_pose
    :reader set_model_pose
    :initarg :set_model_pose
    :type cl:boolean
    :initform cl:nil)
   (disable_physics_updates
    :reader disable_physics_updates
    :initarg :disable_physics_updates
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetJointTrajectory-request (<SetJointTrajectory-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJointTrajectory-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJointTrajectory-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<SetJointTrajectory-request> is deprecated: use gazebo_msgs-srv:SetJointTrajectory-request instead.")))

(cl:ensure-generic-function 'model_name-val :lambda-list '(m))
(cl:defmethod model_name-val ((m <SetJointTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:model_name-val is deprecated.  Use gazebo_msgs-srv:model_name instead.")
  (model_name m))

(cl:ensure-generic-function 'joint_trajectory-val :lambda-list '(m))
(cl:defmethod joint_trajectory-val ((m <SetJointTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:joint_trajectory-val is deprecated.  Use gazebo_msgs-srv:joint_trajectory instead.")
  (joint_trajectory m))

(cl:ensure-generic-function 'model_pose-val :lambda-list '(m))
(cl:defmethod model_pose-val ((m <SetJointTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:model_pose-val is deprecated.  Use gazebo_msgs-srv:model_pose instead.")
  (model_pose m))

(cl:ensure-generic-function 'set_model_pose-val :lambda-list '(m))
(cl:defmethod set_model_pose-val ((m <SetJointTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:set_model_pose-val is deprecated.  Use gazebo_msgs-srv:set_model_pose instead.")
  (set_model_pose m))

(cl:ensure-generic-function 'disable_physics_updates-val :lambda-list '(m))
(cl:defmethod disable_physics_updates-val ((m <SetJointTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:disable_physics_updates-val is deprecated.  Use gazebo_msgs-srv:disable_physics_updates instead.")
  (disable_physics_updates m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJointTrajectory-request>) ostream)
  "Serializes a message object of type '<SetJointTrajectory-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'model_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'model_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'joint_trajectory) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'model_pose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_model_pose) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'disable_physics_updates) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJointTrajectory-request>) istream)
  "Deserializes a message object of type '<SetJointTrajectory-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'model_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'joint_trajectory) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'model_pose) istream)
    (cl:setf (cl:slot-value msg 'set_model_pose) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'disable_physics_updates) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJointTrajectory-request>)))
  "Returns string type for a service object of type '<SetJointTrajectory-request>"
  "gazebo_msgs/SetJointTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointTrajectory-request)))
  "Returns string type for a service object of type 'SetJointTrajectory-request"
  "gazebo_msgs/SetJointTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJointTrajectory-request>)))
  "Returns md5sum for a message object of type '<SetJointTrajectory-request>"
  "88f5c10979e3f9649d5ae87a3b12aa65")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJointTrajectory-request)))
  "Returns md5sum for a message object of type 'SetJointTrajectory-request"
  "88f5c10979e3f9649d5ae87a3b12aa65")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJointTrajectory-request>)))
  "Returns full string definition for message of type '<SetJointTrajectory-request>"
  (cl:format cl:nil "string model_name~%trajectory_msgs/JointTrajectory joint_trajectory~%geometry_msgs/Pose model_pose~%bool set_model_pose~%bool disable_physics_updates~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJointTrajectory-request)))
  "Returns full string definition for message of type 'SetJointTrajectory-request"
  (cl:format cl:nil "string model_name~%trajectory_msgs/JointTrajectory joint_trajectory~%geometry_msgs/Pose model_pose~%bool set_model_pose~%bool disable_physics_updates~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJointTrajectory-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'model_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'joint_trajectory))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'model_pose))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJointTrajectory-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJointTrajectory-request
    (cl:cons ':model_name (model_name msg))
    (cl:cons ':joint_trajectory (joint_trajectory msg))
    (cl:cons ':model_pose (model_pose msg))
    (cl:cons ':set_model_pose (set_model_pose msg))
    (cl:cons ':disable_physics_updates (disable_physics_updates msg))
))
;//! \htmlinclude SetJointTrajectory-response.msg.html

(cl:defclass <SetJointTrajectory-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (status_message
    :reader status_message
    :initarg :status_message
    :type cl:string
    :initform ""))
)

(cl:defclass SetJointTrajectory-response (<SetJointTrajectory-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJointTrajectory-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJointTrajectory-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<SetJointTrajectory-response> is deprecated: use gazebo_msgs-srv:SetJointTrajectory-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetJointTrajectory-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:success-val is deprecated.  Use gazebo_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'status_message-val :lambda-list '(m))
(cl:defmethod status_message-val ((m <SetJointTrajectory-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:status_message-val is deprecated.  Use gazebo_msgs-srv:status_message instead.")
  (status_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJointTrajectory-response>) ostream)
  "Serializes a message object of type '<SetJointTrajectory-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJointTrajectory-response>) istream)
  "Deserializes a message object of type '<SetJointTrajectory-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJointTrajectory-response>)))
  "Returns string type for a service object of type '<SetJointTrajectory-response>"
  "gazebo_msgs/SetJointTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointTrajectory-response)))
  "Returns string type for a service object of type 'SetJointTrajectory-response"
  "gazebo_msgs/SetJointTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJointTrajectory-response>)))
  "Returns md5sum for a message object of type '<SetJointTrajectory-response>"
  "88f5c10979e3f9649d5ae87a3b12aa65")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJointTrajectory-response)))
  "Returns md5sum for a message object of type 'SetJointTrajectory-response"
  "88f5c10979e3f9649d5ae87a3b12aa65")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJointTrajectory-response>)))
  "Returns full string definition for message of type '<SetJointTrajectory-response>"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJointTrajectory-response)))
  "Returns full string definition for message of type 'SetJointTrajectory-response"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJointTrajectory-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'status_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJointTrajectory-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJointTrajectory-response
    (cl:cons ':success (success msg))
    (cl:cons ':status_message (status_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetJointTrajectory)))
  'SetJointTrajectory-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetJointTrajectory)))
  'SetJointTrajectory-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointTrajectory)))
  "Returns string type for a service object of type '<SetJointTrajectory>"
  "gazebo_msgs/SetJointTrajectory")