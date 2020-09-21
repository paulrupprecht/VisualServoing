; Auto-generated. Do not edit!


(cl:in-package ur_dashboard_msgs-srv)


;//! \htmlinclude AddToLog-request.msg.html

(cl:defclass <AddToLog-request> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass AddToLog-request (<AddToLog-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddToLog-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddToLog-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_dashboard_msgs-srv:<AddToLog-request> is deprecated: use ur_dashboard_msgs-srv:AddToLog-request instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <AddToLog-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_dashboard_msgs-srv:message-val is deprecated.  Use ur_dashboard_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddToLog-request>) ostream)
  "Serializes a message object of type '<AddToLog-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddToLog-request>) istream)
  "Deserializes a message object of type '<AddToLog-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddToLog-request>)))
  "Returns string type for a service object of type '<AddToLog-request>"
  "ur_dashboard_msgs/AddToLogRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddToLog-request)))
  "Returns string type for a service object of type 'AddToLog-request"
  "ur_dashboard_msgs/AddToLogRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddToLog-request>)))
  "Returns md5sum for a message object of type '<AddToLog-request>"
  "2054bf354d51f4d6a4dce330cf7bb805")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddToLog-request)))
  "Returns md5sum for a message object of type 'AddToLog-request"
  "2054bf354d51f4d6a4dce330cf7bb805")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddToLog-request>)))
  "Returns full string definition for message of type '<AddToLog-request>"
  (cl:format cl:nil "string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddToLog-request)))
  "Returns full string definition for message of type 'AddToLog-request"
  (cl:format cl:nil "string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddToLog-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddToLog-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddToLog-request
    (cl:cons ':message (message msg))
))
;//! \htmlinclude AddToLog-response.msg.html

(cl:defclass <AddToLog-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass AddToLog-response (<AddToLog-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddToLog-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddToLog-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_dashboard_msgs-srv:<AddToLog-response> is deprecated: use ur_dashboard_msgs-srv:AddToLog-response instead.")))

(cl:ensure-generic-function 'answer-val :lambda-list '(m))
(cl:defmethod answer-val ((m <AddToLog-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_dashboard_msgs-srv:answer-val is deprecated.  Use ur_dashboard_msgs-srv:answer instead.")
  (answer m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <AddToLog-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_dashboard_msgs-srv:success-val is deprecated.  Use ur_dashboard_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddToLog-response>) ostream)
  "Serializes a message object of type '<AddToLog-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'answer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'answer))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddToLog-response>) istream)
  "Deserializes a message object of type '<AddToLog-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddToLog-response>)))
  "Returns string type for a service object of type '<AddToLog-response>"
  "ur_dashboard_msgs/AddToLogResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddToLog-response)))
  "Returns string type for a service object of type 'AddToLog-response"
  "ur_dashboard_msgs/AddToLogResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddToLog-response>)))
  "Returns md5sum for a message object of type '<AddToLog-response>"
  "2054bf354d51f4d6a4dce330cf7bb805")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddToLog-response)))
  "Returns md5sum for a message object of type 'AddToLog-response"
  "2054bf354d51f4d6a4dce330cf7bb805")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddToLog-response>)))
  "Returns full string definition for message of type '<AddToLog-response>"
  (cl:format cl:nil "string answer~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddToLog-response)))
  "Returns full string definition for message of type 'AddToLog-response"
  (cl:format cl:nil "string answer~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddToLog-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'answer))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddToLog-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddToLog-response
    (cl:cons ':answer (answer msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddToLog)))
  'AddToLog-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddToLog)))
  'AddToLog-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddToLog)))
  "Returns string type for a service object of type '<AddToLog>"
  "ur_dashboard_msgs/AddToLog")