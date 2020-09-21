; Auto-generated. Do not edit!


(cl:in-package ur_dashboard_msgs-srv)


;//! \htmlinclude GetSafetyMode-request.msg.html

(cl:defclass <GetSafetyMode-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetSafetyMode-request (<GetSafetyMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSafetyMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSafetyMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_dashboard_msgs-srv:<GetSafetyMode-request> is deprecated: use ur_dashboard_msgs-srv:GetSafetyMode-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSafetyMode-request>) ostream)
  "Serializes a message object of type '<GetSafetyMode-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSafetyMode-request>) istream)
  "Deserializes a message object of type '<GetSafetyMode-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSafetyMode-request>)))
  "Returns string type for a service object of type '<GetSafetyMode-request>"
  "ur_dashboard_msgs/GetSafetyModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSafetyMode-request)))
  "Returns string type for a service object of type 'GetSafetyMode-request"
  "ur_dashboard_msgs/GetSafetyModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSafetyMode-request>)))
  "Returns md5sum for a message object of type '<GetSafetyMode-request>"
  "42900ff79a0c74f885536dc5add71b7e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSafetyMode-request)))
  "Returns md5sum for a message object of type 'GetSafetyMode-request"
  "42900ff79a0c74f885536dc5add71b7e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSafetyMode-request>)))
  "Returns full string definition for message of type '<GetSafetyMode-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSafetyMode-request)))
  "Returns full string definition for message of type 'GetSafetyMode-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSafetyMode-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSafetyMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSafetyMode-request
))
;//! \htmlinclude GetSafetyMode-response.msg.html

(cl:defclass <GetSafetyMode-response> (roslisp-msg-protocol:ros-message)
  ((safety_mode
    :reader safety_mode
    :initarg :safety_mode
    :type ur_dashboard_msgs-msg:SafetyMode
    :initform (cl:make-instance 'ur_dashboard_msgs-msg:SafetyMode))
   (answer
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

(cl:defclass GetSafetyMode-response (<GetSafetyMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSafetyMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSafetyMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_dashboard_msgs-srv:<GetSafetyMode-response> is deprecated: use ur_dashboard_msgs-srv:GetSafetyMode-response instead.")))

(cl:ensure-generic-function 'safety_mode-val :lambda-list '(m))
(cl:defmethod safety_mode-val ((m <GetSafetyMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_dashboard_msgs-srv:safety_mode-val is deprecated.  Use ur_dashboard_msgs-srv:safety_mode instead.")
  (safety_mode m))

(cl:ensure-generic-function 'answer-val :lambda-list '(m))
(cl:defmethod answer-val ((m <GetSafetyMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_dashboard_msgs-srv:answer-val is deprecated.  Use ur_dashboard_msgs-srv:answer instead.")
  (answer m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetSafetyMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_dashboard_msgs-srv:success-val is deprecated.  Use ur_dashboard_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSafetyMode-response>) ostream)
  "Serializes a message object of type '<GetSafetyMode-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'safety_mode) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'answer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'answer))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSafetyMode-response>) istream)
  "Deserializes a message object of type '<GetSafetyMode-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'safety_mode) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSafetyMode-response>)))
  "Returns string type for a service object of type '<GetSafetyMode-response>"
  "ur_dashboard_msgs/GetSafetyModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSafetyMode-response)))
  "Returns string type for a service object of type 'GetSafetyMode-response"
  "ur_dashboard_msgs/GetSafetyModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSafetyMode-response>)))
  "Returns md5sum for a message object of type '<GetSafetyMode-response>"
  "42900ff79a0c74f885536dc5add71b7e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSafetyMode-response)))
  "Returns md5sum for a message object of type 'GetSafetyMode-response"
  "42900ff79a0c74f885536dc5add71b7e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSafetyMode-response>)))
  "Returns full string definition for message of type '<GetSafetyMode-response>"
  (cl:format cl:nil "SafetyMode safety_mode~%string answer~%bool success~%~%~%================================================================================~%MSG: ur_dashboard_msgs/SafetyMode~%uint8 NORMAL=1~%uint8 REDUCED=2~%uint8 PROTECTIVE_STOP=3~%uint8 RECOVERY=4~%uint8 SAFEGUARD_STOP=5~%uint8 SYSTEM_EMERGENCY_STOP=6~%uint8 ROBOT_EMERGENCY_STOP=7~%uint8 VIOLATION=8~%uint8 FAULT=9~%uint8 VALIDATE_JOINT_ID=10~%uint8 UNDEFINED_SAFETY_MODE=11~%uint8 AUTOMATIC_MODE_SAFEGUARD_STOP=12~%uint8 SYSTEM_THREE_POSITION_ENABLING_STOP=13~%~%uint8 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSafetyMode-response)))
  "Returns full string definition for message of type 'GetSafetyMode-response"
  (cl:format cl:nil "SafetyMode safety_mode~%string answer~%bool success~%~%~%================================================================================~%MSG: ur_dashboard_msgs/SafetyMode~%uint8 NORMAL=1~%uint8 REDUCED=2~%uint8 PROTECTIVE_STOP=3~%uint8 RECOVERY=4~%uint8 SAFEGUARD_STOP=5~%uint8 SYSTEM_EMERGENCY_STOP=6~%uint8 ROBOT_EMERGENCY_STOP=7~%uint8 VIOLATION=8~%uint8 FAULT=9~%uint8 VALIDATE_JOINT_ID=10~%uint8 UNDEFINED_SAFETY_MODE=11~%uint8 AUTOMATIC_MODE_SAFEGUARD_STOP=12~%uint8 SYSTEM_THREE_POSITION_ENABLING_STOP=13~%~%uint8 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSafetyMode-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'safety_mode))
     4 (cl:length (cl:slot-value msg 'answer))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSafetyMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSafetyMode-response
    (cl:cons ':safety_mode (safety_mode msg))
    (cl:cons ':answer (answer msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetSafetyMode)))
  'GetSafetyMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetSafetyMode)))
  'GetSafetyMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSafetyMode)))
  "Returns string type for a service object of type '<GetSafetyMode>"
  "ur_dashboard_msgs/GetSafetyMode")