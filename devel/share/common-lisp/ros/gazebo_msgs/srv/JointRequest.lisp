; Auto-generated. Do not edit!


(cl:in-package gazebo_msgs-srv)


;//! \htmlinclude JointRequest-request.msg.html

(cl:defclass <JointRequest-request> (roslisp-msg-protocol:ros-message)
  ((joint_name
    :reader joint_name
    :initarg :joint_name
    :type cl:string
    :initform ""))
)

(cl:defclass JointRequest-request (<JointRequest-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointRequest-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointRequest-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<JointRequest-request> is deprecated: use gazebo_msgs-srv:JointRequest-request instead.")))

(cl:ensure-generic-function 'joint_name-val :lambda-list '(m))
(cl:defmethod joint_name-val ((m <JointRequest-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:joint_name-val is deprecated.  Use gazebo_msgs-srv:joint_name instead.")
  (joint_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointRequest-request>) ostream)
  "Serializes a message object of type '<JointRequest-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'joint_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'joint_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointRequest-request>) istream)
  "Deserializes a message object of type '<JointRequest-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'joint_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'joint_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointRequest-request>)))
  "Returns string type for a service object of type '<JointRequest-request>"
  "gazebo_msgs/JointRequestRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointRequest-request)))
  "Returns string type for a service object of type 'JointRequest-request"
  "gazebo_msgs/JointRequestRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointRequest-request>)))
  "Returns md5sum for a message object of type '<JointRequest-request>"
  "0be1351618e1dc030eb7959d9a4902de")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointRequest-request)))
  "Returns md5sum for a message object of type 'JointRequest-request"
  "0be1351618e1dc030eb7959d9a4902de")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointRequest-request>)))
  "Returns full string definition for message of type '<JointRequest-request>"
  (cl:format cl:nil "string joint_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointRequest-request)))
  "Returns full string definition for message of type 'JointRequest-request"
  (cl:format cl:nil "string joint_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointRequest-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'joint_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointRequest-request>))
  "Converts a ROS message object to a list"
  (cl:list 'JointRequest-request
    (cl:cons ':joint_name (joint_name msg))
))
;//! \htmlinclude JointRequest-response.msg.html

(cl:defclass <JointRequest-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass JointRequest-response (<JointRequest-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointRequest-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointRequest-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<JointRequest-response> is deprecated: use gazebo_msgs-srv:JointRequest-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointRequest-response>) ostream)
  "Serializes a message object of type '<JointRequest-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointRequest-response>) istream)
  "Deserializes a message object of type '<JointRequest-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointRequest-response>)))
  "Returns string type for a service object of type '<JointRequest-response>"
  "gazebo_msgs/JointRequestResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointRequest-response)))
  "Returns string type for a service object of type 'JointRequest-response"
  "gazebo_msgs/JointRequestResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointRequest-response>)))
  "Returns md5sum for a message object of type '<JointRequest-response>"
  "0be1351618e1dc030eb7959d9a4902de")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointRequest-response)))
  "Returns md5sum for a message object of type 'JointRequest-response"
  "0be1351618e1dc030eb7959d9a4902de")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointRequest-response>)))
  "Returns full string definition for message of type '<JointRequest-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointRequest-response)))
  "Returns full string definition for message of type 'JointRequest-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointRequest-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointRequest-response>))
  "Converts a ROS message object to a list"
  (cl:list 'JointRequest-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'JointRequest)))
  'JointRequest-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'JointRequest)))
  'JointRequest-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointRequest)))
  "Returns string type for a service object of type '<JointRequest>"
  "gazebo_msgs/JointRequest")