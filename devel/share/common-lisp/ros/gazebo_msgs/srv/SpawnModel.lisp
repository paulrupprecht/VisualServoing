; Auto-generated. Do not edit!


(cl:in-package gazebo_msgs-srv)


;//! \htmlinclude SpawnModel-request.msg.html

(cl:defclass <SpawnModel-request> (roslisp-msg-protocol:ros-message)
  ((model_name
    :reader model_name
    :initarg :model_name
    :type cl:string
    :initform "")
   (model_xml
    :reader model_xml
    :initarg :model_xml
    :type cl:string
    :initform "")
   (robot_namespace
    :reader robot_namespace
    :initarg :robot_namespace
    :type cl:string
    :initform "")
   (initial_pose
    :reader initial_pose
    :initarg :initial_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (reference_frame
    :reader reference_frame
    :initarg :reference_frame
    :type cl:string
    :initform ""))
)

(cl:defclass SpawnModel-request (<SpawnModel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpawnModel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpawnModel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<SpawnModel-request> is deprecated: use gazebo_msgs-srv:SpawnModel-request instead.")))

(cl:ensure-generic-function 'model_name-val :lambda-list '(m))
(cl:defmethod model_name-val ((m <SpawnModel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:model_name-val is deprecated.  Use gazebo_msgs-srv:model_name instead.")
  (model_name m))

(cl:ensure-generic-function 'model_xml-val :lambda-list '(m))
(cl:defmethod model_xml-val ((m <SpawnModel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:model_xml-val is deprecated.  Use gazebo_msgs-srv:model_xml instead.")
  (model_xml m))

(cl:ensure-generic-function 'robot_namespace-val :lambda-list '(m))
(cl:defmethod robot_namespace-val ((m <SpawnModel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:robot_namespace-val is deprecated.  Use gazebo_msgs-srv:robot_namespace instead.")
  (robot_namespace m))

(cl:ensure-generic-function 'initial_pose-val :lambda-list '(m))
(cl:defmethod initial_pose-val ((m <SpawnModel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:initial_pose-val is deprecated.  Use gazebo_msgs-srv:initial_pose instead.")
  (initial_pose m))

(cl:ensure-generic-function 'reference_frame-val :lambda-list '(m))
(cl:defmethod reference_frame-val ((m <SpawnModel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:reference_frame-val is deprecated.  Use gazebo_msgs-srv:reference_frame instead.")
  (reference_frame m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpawnModel-request>) ostream)
  "Serializes a message object of type '<SpawnModel-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'model_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'model_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'model_xml))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'model_xml))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_namespace))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_namespace))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'initial_pose) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reference_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reference_frame))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpawnModel-request>) istream)
  "Deserializes a message object of type '<SpawnModel-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'model_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model_xml) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'model_xml) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_namespace) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_namespace) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'initial_pose) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reference_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reference_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpawnModel-request>)))
  "Returns string type for a service object of type '<SpawnModel-request>"
  "gazebo_msgs/SpawnModelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpawnModel-request)))
  "Returns string type for a service object of type 'SpawnModel-request"
  "gazebo_msgs/SpawnModelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpawnModel-request>)))
  "Returns md5sum for a message object of type '<SpawnModel-request>"
  "9ed9c82c96abe1a00c3e8cdaeee24413")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpawnModel-request)))
  "Returns md5sum for a message object of type 'SpawnModel-request"
  "9ed9c82c96abe1a00c3e8cdaeee24413")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpawnModel-request>)))
  "Returns full string definition for message of type '<SpawnModel-request>"
  (cl:format cl:nil "string model_name~%string model_xml~%string robot_namespace~%geometry_msgs/Pose initial_pose~%string reference_frame~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpawnModel-request)))
  "Returns full string definition for message of type 'SpawnModel-request"
  (cl:format cl:nil "string model_name~%string model_xml~%string robot_namespace~%geometry_msgs/Pose initial_pose~%string reference_frame~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpawnModel-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'model_name))
     4 (cl:length (cl:slot-value msg 'model_xml))
     4 (cl:length (cl:slot-value msg 'robot_namespace))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'initial_pose))
     4 (cl:length (cl:slot-value msg 'reference_frame))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpawnModel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SpawnModel-request
    (cl:cons ':model_name (model_name msg))
    (cl:cons ':model_xml (model_xml msg))
    (cl:cons ':robot_namespace (robot_namespace msg))
    (cl:cons ':initial_pose (initial_pose msg))
    (cl:cons ':reference_frame (reference_frame msg))
))
;//! \htmlinclude SpawnModel-response.msg.html

(cl:defclass <SpawnModel-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SpawnModel-response (<SpawnModel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpawnModel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpawnModel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<SpawnModel-response> is deprecated: use gazebo_msgs-srv:SpawnModel-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SpawnModel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:success-val is deprecated.  Use gazebo_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'status_message-val :lambda-list '(m))
(cl:defmethod status_message-val ((m <SpawnModel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:status_message-val is deprecated.  Use gazebo_msgs-srv:status_message instead.")
  (status_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpawnModel-response>) ostream)
  "Serializes a message object of type '<SpawnModel-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpawnModel-response>) istream)
  "Deserializes a message object of type '<SpawnModel-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpawnModel-response>)))
  "Returns string type for a service object of type '<SpawnModel-response>"
  "gazebo_msgs/SpawnModelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpawnModel-response)))
  "Returns string type for a service object of type 'SpawnModel-response"
  "gazebo_msgs/SpawnModelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpawnModel-response>)))
  "Returns md5sum for a message object of type '<SpawnModel-response>"
  "9ed9c82c96abe1a00c3e8cdaeee24413")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpawnModel-response)))
  "Returns md5sum for a message object of type 'SpawnModel-response"
  "9ed9c82c96abe1a00c3e8cdaeee24413")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpawnModel-response>)))
  "Returns full string definition for message of type '<SpawnModel-response>"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpawnModel-response)))
  "Returns full string definition for message of type 'SpawnModel-response"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpawnModel-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'status_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpawnModel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SpawnModel-response
    (cl:cons ':success (success msg))
    (cl:cons ':status_message (status_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SpawnModel)))
  'SpawnModel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SpawnModel)))
  'SpawnModel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpawnModel)))
  "Returns string type for a service object of type '<SpawnModel>"
  "gazebo_msgs/SpawnModel")