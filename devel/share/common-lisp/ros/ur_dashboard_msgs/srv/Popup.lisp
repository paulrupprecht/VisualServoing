; Auto-generated. Do not edit!


(cl:in-package ur_dashboard_msgs-srv)


;//! \htmlinclude Popup-request.msg.html

(cl:defclass <Popup-request> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass Popup-request (<Popup-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Popup-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Popup-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_dashboard_msgs-srv:<Popup-request> is deprecated: use ur_dashboard_msgs-srv:Popup-request instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Popup-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_dashboard_msgs-srv:message-val is deprecated.  Use ur_dashboard_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Popup-request>) ostream)
  "Serializes a message object of type '<Popup-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Popup-request>) istream)
  "Deserializes a message object of type '<Popup-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Popup-request>)))
  "Returns string type for a service object of type '<Popup-request>"
  "ur_dashboard_msgs/PopupRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Popup-request)))
  "Returns string type for a service object of type 'Popup-request"
  "ur_dashboard_msgs/PopupRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Popup-request>)))
  "Returns md5sum for a message object of type '<Popup-request>"
  "2054bf354d51f4d6a4dce330cf7bb805")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Popup-request)))
  "Returns md5sum for a message object of type 'Popup-request"
  "2054bf354d51f4d6a4dce330cf7bb805")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Popup-request>)))
  "Returns full string definition for message of type '<Popup-request>"
  (cl:format cl:nil "string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Popup-request)))
  "Returns full string definition for message of type 'Popup-request"
  (cl:format cl:nil "string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Popup-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Popup-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Popup-request
    (cl:cons ':message (message msg))
))
;//! \htmlinclude Popup-response.msg.html

(cl:defclass <Popup-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Popup-response (<Popup-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Popup-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Popup-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_dashboard_msgs-srv:<Popup-response> is deprecated: use ur_dashboard_msgs-srv:Popup-response instead.")))

(cl:ensure-generic-function 'answer-val :lambda-list '(m))
(cl:defmethod answer-val ((m <Popup-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_dashboard_msgs-srv:answer-val is deprecated.  Use ur_dashboard_msgs-srv:answer instead.")
  (answer m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Popup-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_dashboard_msgs-srv:success-val is deprecated.  Use ur_dashboard_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Popup-response>) ostream)
  "Serializes a message object of type '<Popup-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'answer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'answer))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Popup-response>) istream)
  "Deserializes a message object of type '<Popup-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Popup-response>)))
  "Returns string type for a service object of type '<Popup-response>"
  "ur_dashboard_msgs/PopupResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Popup-response)))
  "Returns string type for a service object of type 'Popup-response"
  "ur_dashboard_msgs/PopupResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Popup-response>)))
  "Returns md5sum for a message object of type '<Popup-response>"
  "2054bf354d51f4d6a4dce330cf7bb805")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Popup-response)))
  "Returns md5sum for a message object of type 'Popup-response"
  "2054bf354d51f4d6a4dce330cf7bb805")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Popup-response>)))
  "Returns full string definition for message of type '<Popup-response>"
  (cl:format cl:nil "string answer~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Popup-response)))
  "Returns full string definition for message of type 'Popup-response"
  (cl:format cl:nil "string answer~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Popup-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'answer))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Popup-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Popup-response
    (cl:cons ':answer (answer msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Popup)))
  'Popup-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Popup)))
  'Popup-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Popup)))
  "Returns string type for a service object of type '<Popup>"
  "ur_dashboard_msgs/Popup")