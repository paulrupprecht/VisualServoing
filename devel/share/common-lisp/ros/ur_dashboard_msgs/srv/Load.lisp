; Auto-generated. Do not edit!


(cl:in-package ur_dashboard_msgs-srv)


;//! \htmlinclude Load-request.msg.html

(cl:defclass <Load-request> (roslisp-msg-protocol:ros-message)
  ((filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform ""))
)

(cl:defclass Load-request (<Load-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Load-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Load-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_dashboard_msgs-srv:<Load-request> is deprecated: use ur_dashboard_msgs-srv:Load-request instead.")))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <Load-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_dashboard_msgs-srv:filename-val is deprecated.  Use ur_dashboard_msgs-srv:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Load-request>) ostream)
  "Serializes a message object of type '<Load-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Load-request>) istream)
  "Deserializes a message object of type '<Load-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Load-request>)))
  "Returns string type for a service object of type '<Load-request>"
  "ur_dashboard_msgs/LoadRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Load-request)))
  "Returns string type for a service object of type 'Load-request"
  "ur_dashboard_msgs/LoadRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Load-request>)))
  "Returns md5sum for a message object of type '<Load-request>"
  "abbee7d5c683c0b3af261ba331da1fbb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Load-request)))
  "Returns md5sum for a message object of type 'Load-request"
  "abbee7d5c683c0b3af261ba331da1fbb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Load-request>)))
  "Returns full string definition for message of type '<Load-request>"
  (cl:format cl:nil "~%string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Load-request)))
  "Returns full string definition for message of type 'Load-request"
  (cl:format cl:nil "~%string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Load-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Load-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Load-request
    (cl:cons ':filename (filename msg))
))
;//! \htmlinclude Load-response.msg.html

(cl:defclass <Load-response> (roslisp-msg-protocol:ros-message)
  ((answer
    :reader answer
    :initarg :answer
    :type cl:string
    :initform "")
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Load-response (<Load-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Load-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Load-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_dashboard_msgs-srv:<Load-response> is deprecated: use ur_dashboard_msgs-srv:Load-response instead.")))

(cl:ensure-generic-function 'answer-val :lambda-list '(m))
(cl:defmethod answer-val ((m <Load-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_dashboard_msgs-srv:answer-val is deprecated.  Use ur_dashboard_msgs-srv:answer instead.")
  (answer m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Load-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_dashboard_msgs-srv:success-val is deprecated.  Use ur_dashboard_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Load-response>) ostream)
  "Serializes a message object of type '<Load-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'answer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'answer))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Load-response>) istream)
  "Deserializes a message object of type '<Load-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'answer) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'answer) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Load-response>)))
  "Returns string type for a service object of type '<Load-response>"
  "ur_dashboard_msgs/LoadResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Load-response)))
  "Returns string type for a service object of type 'Load-response"
  "ur_dashboard_msgs/LoadResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Load-response>)))
  "Returns md5sum for a message object of type '<Load-response>"
  "abbee7d5c683c0b3af261ba331da1fbb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Load-response)))
  "Returns md5sum for a message object of type 'Load-response"
  "abbee7d5c683c0b3af261ba331da1fbb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Load-response>)))
  "Returns full string definition for message of type '<Load-response>"
  (cl:format cl:nil "string answer~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Load-response)))
  "Returns full string definition for message of type 'Load-response"
  (cl:format cl:nil "string answer~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Load-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'answer))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Load-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Load-response
    (cl:cons ':answer (answer msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Load)))
  'Load-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Load)))
  'Load-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Load)))
  "Returns string type for a service object of type '<Load>"
  "ur_dashboard_msgs/Load")