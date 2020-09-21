; Auto-generated. Do not edit!


(cl:in-package ur_dashboard_msgs-srv)


;//! \htmlinclude RawRequest-request.msg.html

(cl:defclass <RawRequest-request> (roslisp-msg-protocol:ros-message)
  ((query
    :reader query
    :initarg :query
    :type cl:string
    :initform ""))
)

(cl:defclass RawRequest-request (<RawRequest-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RawRequest-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RawRequest-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_dashboard_msgs-srv:<RawRequest-request> is deprecated: use ur_dashboard_msgs-srv:RawRequest-request instead.")))

(cl:ensure-generic-function 'query-val :lambda-list '(m))
(cl:defmethod query-val ((m <RawRequest-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_dashboard_msgs-srv:query-val is deprecated.  Use ur_dashboard_msgs-srv:query instead.")
  (query m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RawRequest-request>) ostream)
  "Serializes a message object of type '<RawRequest-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'query))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'query))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RawRequest-request>) istream)
  "Deserializes a message object of type '<RawRequest-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'query) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'query) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RawRequest-request>)))
  "Returns string type for a service object of type '<RawRequest-request>"
  "ur_dashboard_msgs/RawRequestRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RawRequest-request)))
  "Returns string type for a service object of type 'RawRequest-request"
  "ur_dashboard_msgs/RawRequestRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RawRequest-request>)))
  "Returns md5sum for a message object of type '<RawRequest-request>"
  "3f9d6cecb9ae062492929b790df89058")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RawRequest-request)))
  "Returns md5sum for a message object of type 'RawRequest-request"
  "3f9d6cecb9ae062492929b790df89058")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RawRequest-request>)))
  "Returns full string definition for message of type '<RawRequest-request>"
  (cl:format cl:nil "~%string query~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RawRequest-request)))
  "Returns full string definition for message of type 'RawRequest-request"
  (cl:format cl:nil "~%string query~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RawRequest-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'query))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RawRequest-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RawRequest-request
    (cl:cons ':query (query msg))
))
;//! \htmlinclude RawRequest-response.msg.html

(cl:defclass <RawRequest-response> (roslisp-msg-protocol:ros-message)
  ((answer
    :reader answer
    :initarg :answer
    :type cl:string
    :initform ""))
)

(cl:defclass RawRequest-response (<RawRequest-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RawRequest-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RawRequest-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_dashboard_msgs-srv:<RawRequest-response> is deprecated: use ur_dashboard_msgs-srv:RawRequest-response instead.")))

(cl:ensure-generic-function 'answer-val :lambda-list '(m))
(cl:defmethod answer-val ((m <RawRequest-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_dashboard_msgs-srv:answer-val is deprecated.  Use ur_dashboard_msgs-srv:answer instead.")
  (answer m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RawRequest-response>) ostream)
  "Serializes a message object of type '<RawRequest-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'answer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'answer))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RawRequest-response>) istream)
  "Deserializes a message object of type '<RawRequest-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'answer) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'answer) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RawRequest-response>)))
  "Returns string type for a service object of type '<RawRequest-response>"
  "ur_dashboard_msgs/RawRequestResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RawRequest-response)))
  "Returns string type for a service object of type 'RawRequest-response"
  "ur_dashboard_msgs/RawRequestResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RawRequest-response>)))
  "Returns md5sum for a message object of type '<RawRequest-response>"
  "3f9d6cecb9ae062492929b790df89058")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RawRequest-response)))
  "Returns md5sum for a message object of type 'RawRequest-response"
  "3f9d6cecb9ae062492929b790df89058")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RawRequest-response>)))
  "Returns full string definition for message of type '<RawRequest-response>"
  (cl:format cl:nil "string answer~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RawRequest-response)))
  "Returns full string definition for message of type 'RawRequest-response"
  (cl:format cl:nil "string answer~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RawRequest-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'answer))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RawRequest-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RawRequest-response
    (cl:cons ':answer (answer msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RawRequest)))
  'RawRequest-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RawRequest)))
  'RawRequest-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RawRequest)))
  "Returns string type for a service object of type '<RawRequest>"
  "ur_dashboard_msgs/RawRequest")