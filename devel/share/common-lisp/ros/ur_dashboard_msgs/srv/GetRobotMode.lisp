; Auto-generated. Do not edit!


(cl:in-package ur_dashboard_msgs-srv)


;//! \htmlinclude GetRobotMode-request.msg.html

(cl:defclass <GetRobotMode-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetRobotMode-request (<GetRobotMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRobotMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRobotMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_dashboard_msgs-srv:<GetRobotMode-request> is deprecated: use ur_dashboard_msgs-srv:GetRobotMode-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRobotMode-request>) ostream)
  "Serializes a message object of type '<GetRobotMode-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRobotMode-request>) istream)
  "Deserializes a message object of type '<GetRobotMode-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRobotMode-request>)))
  "Returns string type for a service object of type '<GetRobotMode-request>"
  "ur_dashboard_msgs/GetRobotModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRobotMode-request)))
  "Returns string type for a service object of type 'GetRobotMode-request"
  "ur_dashboard_msgs/GetRobotModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRobotMode-request>)))
  "Returns md5sum for a message object of type '<GetRobotMode-request>"
  "ef94c03da2e53bb8c576236bb003fe8a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRobotMode-request)))
  "Returns md5sum for a message object of type 'GetRobotMode-request"
  "ef94c03da2e53bb8c576236bb003fe8a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRobotMode-request>)))
  "Returns full string definition for message of type '<GetRobotMode-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRobotMode-request)))
  "Returns full string definition for message of type 'GetRobotMode-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRobotMode-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRobotMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRobotMode-request
))
;//! \htmlinclude GetRobotMode-response.msg.html

(cl:defclass <GetRobotMode-response> (roslisp-msg-protocol:ros-message)
  ((robot_mode
    :reader robot_mode
    :initarg :robot_mode
    :type ur_dashboard_msgs-msg:RobotMode
    :initform (cl:make-instance 'ur_dashboard_msgs-msg:RobotMode))
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

(cl:defclass GetRobotMode-response (<GetRobotMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRobotMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRobotMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_dashboard_msgs-srv:<GetRobotMode-response> is deprecated: use ur_dashboard_msgs-srv:GetRobotMode-response instead.")))

(cl:ensure-generic-function 'robot_mode-val :lambda-list '(m))
(cl:defmethod robot_mode-val ((m <GetRobotMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_dashboard_msgs-srv:robot_mode-val is deprecated.  Use ur_dashboard_msgs-srv:robot_mode instead.")
  (robot_mode m))

(cl:ensure-generic-function 'answer-val :lambda-list '(m))
(cl:defmethod answer-val ((m <GetRobotMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_dashboard_msgs-srv:answer-val is deprecated.  Use ur_dashboard_msgs-srv:answer instead.")
  (answer m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetRobotMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_dashboard_msgs-srv:success-val is deprecated.  Use ur_dashboard_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRobotMode-response>) ostream)
  "Serializes a message object of type '<GetRobotMode-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_mode) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'answer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'answer))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRobotMode-response>) istream)
  "Deserializes a message object of type '<GetRobotMode-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_mode) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRobotMode-response>)))
  "Returns string type for a service object of type '<GetRobotMode-response>"
  "ur_dashboard_msgs/GetRobotModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRobotMode-response)))
  "Returns string type for a service object of type 'GetRobotMode-response"
  "ur_dashboard_msgs/GetRobotModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRobotMode-response>)))
  "Returns md5sum for a message object of type '<GetRobotMode-response>"
  "ef94c03da2e53bb8c576236bb003fe8a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRobotMode-response)))
  "Returns md5sum for a message object of type 'GetRobotMode-response"
  "ef94c03da2e53bb8c576236bb003fe8a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRobotMode-response>)))
  "Returns full string definition for message of type '<GetRobotMode-response>"
  (cl:format cl:nil "RobotMode robot_mode~%string answer~%bool success~%~%~%================================================================================~%MSG: ur_dashboard_msgs/RobotMode~%int8 NO_CONTROLLER=-1~%int8 DISCONNECTED=0~%int8 CONFIRM_SAFETY=1~%int8 BOOTING=2~%int8 POWER_OFF=3~%int8 POWER_ON=4~%int8 IDLE=5~%int8 BACKDRIVE=6~%int8 RUNNING=7~%int8 UPDATING_FIRMWARE=8~%~%int8 mode~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRobotMode-response)))
  "Returns full string definition for message of type 'GetRobotMode-response"
  (cl:format cl:nil "RobotMode robot_mode~%string answer~%bool success~%~%~%================================================================================~%MSG: ur_dashboard_msgs/RobotMode~%int8 NO_CONTROLLER=-1~%int8 DISCONNECTED=0~%int8 CONFIRM_SAFETY=1~%int8 BOOTING=2~%int8 POWER_OFF=3~%int8 POWER_ON=4~%int8 IDLE=5~%int8 BACKDRIVE=6~%int8 RUNNING=7~%int8 UPDATING_FIRMWARE=8~%~%int8 mode~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRobotMode-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_mode))
     4 (cl:length (cl:slot-value msg 'answer))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRobotMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRobotMode-response
    (cl:cons ':robot_mode (robot_mode msg))
    (cl:cons ':answer (answer msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetRobotMode)))
  'GetRobotMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetRobotMode)))
  'GetRobotMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRobotMode)))
  "Returns string type for a service object of type '<GetRobotMode>"
  "ur_dashboard_msgs/GetRobotMode")