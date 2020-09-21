; Auto-generated. Do not edit!


(cl:in-package gazebo_msgs-srv)


;//! \htmlinclude BodyRequest-request.msg.html

(cl:defclass <BodyRequest-request> (roslisp-msg-protocol:ros-message)
  ((body_name
    :reader body_name
    :initarg :body_name
    :type cl:string
    :initform ""))
)

(cl:defclass BodyRequest-request (<BodyRequest-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BodyRequest-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BodyRequest-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<BodyRequest-request> is deprecated: use gazebo_msgs-srv:BodyRequest-request instead.")))

(cl:ensure-generic-function 'body_name-val :lambda-list '(m))
(cl:defmethod body_name-val ((m <BodyRequest-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:body_name-val is deprecated.  Use gazebo_msgs-srv:body_name instead.")
  (body_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BodyRequest-request>) ostream)
  "Serializes a message object of type '<BodyRequest-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'body_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'body_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BodyRequest-request>) istream)
  "Deserializes a message object of type '<BodyRequest-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'body_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'body_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BodyRequest-request>)))
  "Returns string type for a service object of type '<BodyRequest-request>"
  "gazebo_msgs/BodyRequestRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BodyRequest-request)))
  "Returns string type for a service object of type 'BodyRequest-request"
  "gazebo_msgs/BodyRequestRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BodyRequest-request>)))
  "Returns md5sum for a message object of type '<BodyRequest-request>"
  "5eade9afe7f232d78005bd0cafeab755")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BodyRequest-request)))
  "Returns md5sum for a message object of type 'BodyRequest-request"
  "5eade9afe7f232d78005bd0cafeab755")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BodyRequest-request>)))
  "Returns full string definition for message of type '<BodyRequest-request>"
  (cl:format cl:nil "string body_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BodyRequest-request)))
  "Returns full string definition for message of type 'BodyRequest-request"
  (cl:format cl:nil "string body_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BodyRequest-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'body_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BodyRequest-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BodyRequest-request
    (cl:cons ':body_name (body_name msg))
))
;//! \htmlinclude BodyRequest-response.msg.html

(cl:defclass <BodyRequest-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass BodyRequest-response (<BodyRequest-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BodyRequest-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BodyRequest-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<BodyRequest-response> is deprecated: use gazebo_msgs-srv:BodyRequest-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BodyRequest-response>) ostream)
  "Serializes a message object of type '<BodyRequest-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BodyRequest-response>) istream)
  "Deserializes a message object of type '<BodyRequest-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BodyRequest-response>)))
  "Returns string type for a service object of type '<BodyRequest-response>"
  "gazebo_msgs/BodyRequestResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BodyRequest-response)))
  "Returns string type for a service object of type 'BodyRequest-response"
  "gazebo_msgs/BodyRequestResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BodyRequest-response>)))
  "Returns md5sum for a message object of type '<BodyRequest-response>"
  "5eade9afe7f232d78005bd0cafeab755")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BodyRequest-response)))
  "Returns md5sum for a message object of type 'BodyRequest-response"
  "5eade9afe7f232d78005bd0cafeab755")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BodyRequest-response>)))
  "Returns full string definition for message of type '<BodyRequest-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BodyRequest-response)))
  "Returns full string definition for message of type 'BodyRequest-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BodyRequest-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BodyRequest-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BodyRequest-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BodyRequest)))
  'BodyRequest-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BodyRequest)))
  'BodyRequest-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BodyRequest)))
  "Returns string type for a service object of type '<BodyRequest>"
  "gazebo_msgs/BodyRequest")