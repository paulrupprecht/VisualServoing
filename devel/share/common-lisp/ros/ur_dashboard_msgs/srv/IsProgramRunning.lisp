; Auto-generated. Do not edit!


(cl:in-package ur_dashboard_msgs-srv)


;//! \htmlinclude IsProgramRunning-request.msg.html

(cl:defclass <IsProgramRunning-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass IsProgramRunning-request (<IsProgramRunning-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IsProgramRunning-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IsProgramRunning-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_dashboard_msgs-srv:<IsProgramRunning-request> is deprecated: use ur_dashboard_msgs-srv:IsProgramRunning-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IsProgramRunning-request>) ostream)
  "Serializes a message object of type '<IsProgramRunning-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IsProgramRunning-request>) istream)
  "Deserializes a message object of type '<IsProgramRunning-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IsProgramRunning-request>)))
  "Returns string type for a service object of type '<IsProgramRunning-request>"
  "ur_dashboard_msgs/IsProgramRunningRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsProgramRunning-request)))
  "Returns string type for a service object of type 'IsProgramRunning-request"
  "ur_dashboard_msgs/IsProgramRunningRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IsProgramRunning-request>)))
  "Returns md5sum for a message object of type '<IsProgramRunning-request>"
  "290f0cb02c3a44353957f0a92f954209")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IsProgramRunning-request)))
  "Returns md5sum for a message object of type 'IsProgramRunning-request"
  "290f0cb02c3a44353957f0a92f954209")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IsProgramRunning-request>)))
  "Returns full string definition for message of type '<IsProgramRunning-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IsProgramRunning-request)))
  "Returns full string definition for message of type 'IsProgramRunning-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IsProgramRunning-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IsProgramRunning-request>))
  "Converts a ROS message object to a list"
  (cl:list 'IsProgramRunning-request
))
;//! \htmlinclude IsProgramRunning-response.msg.html

(cl:defclass <IsProgramRunning-response> (roslisp-msg-protocol:ros-message)
  ((answer
    :reader answer
    :initarg :answer
    :type cl:string
    :initform "")
   (program_running
    :reader program_running
    :initarg :program_running
    :type cl:boolean
    :initform cl:nil)
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass IsProgramRunning-response (<IsProgramRunning-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IsProgramRunning-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IsProgramRunning-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_dashboard_msgs-srv:<IsProgramRunning-response> is deprecated: use ur_dashboard_msgs-srv:IsProgramRunning-response instead.")))

(cl:ensure-generic-function 'answer-val :lambda-list '(m))
(cl:defmethod answer-val ((m <IsProgramRunning-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_dashboard_msgs-srv:answer-val is deprecated.  Use ur_dashboard_msgs-srv:answer instead.")
  (answer m))

(cl:ensure-generic-function 'program_running-val :lambda-list '(m))
(cl:defmethod program_running-val ((m <IsProgramRunning-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_dashboard_msgs-srv:program_running-val is deprecated.  Use ur_dashboard_msgs-srv:program_running instead.")
  (program_running m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <IsProgramRunning-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_dashboard_msgs-srv:success-val is deprecated.  Use ur_dashboard_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IsProgramRunning-response>) ostream)
  "Serializes a message object of type '<IsProgramRunning-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'answer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'answer))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'program_running) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IsProgramRunning-response>) istream)
  "Deserializes a message object of type '<IsProgramRunning-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'answer) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'answer) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'program_running) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IsProgramRunning-response>)))
  "Returns string type for a service object of type '<IsProgramRunning-response>"
  "ur_dashboard_msgs/IsProgramRunningResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsProgramRunning-response)))
  "Returns string type for a service object of type 'IsProgramRunning-response"
  "ur_dashboard_msgs/IsProgramRunningResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IsProgramRunning-response>)))
  "Returns md5sum for a message object of type '<IsProgramRunning-response>"
  "290f0cb02c3a44353957f0a92f954209")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IsProgramRunning-response)))
  "Returns md5sum for a message object of type 'IsProgramRunning-response"
  "290f0cb02c3a44353957f0a92f954209")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IsProgramRunning-response>)))
  "Returns full string definition for message of type '<IsProgramRunning-response>"
  (cl:format cl:nil "string answer~%bool program_running~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IsProgramRunning-response)))
  "Returns full string definition for message of type 'IsProgramRunning-response"
  (cl:format cl:nil "string answer~%bool program_running~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IsProgramRunning-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'answer))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IsProgramRunning-response>))
  "Converts a ROS message object to a list"
  (cl:list 'IsProgramRunning-response
    (cl:cons ':answer (answer msg))
    (cl:cons ':program_running (program_running msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'IsProgramRunning)))
  'IsProgramRunning-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'IsProgramRunning)))
  'IsProgramRunning-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsProgramRunning)))
  "Returns string type for a service object of type '<IsProgramRunning>"
  "ur_dashboard_msgs/IsProgramRunning")