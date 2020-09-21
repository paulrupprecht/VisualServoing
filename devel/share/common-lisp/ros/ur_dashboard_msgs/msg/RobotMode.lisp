; Auto-generated. Do not edit!


(cl:in-package ur_dashboard_msgs-msg)


;//! \htmlinclude RobotMode.msg.html

(cl:defclass <RobotMode> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RobotMode (<RobotMode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotMode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotMode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_dashboard_msgs-msg:<RobotMode> is deprecated: use ur_dashboard_msgs-msg:RobotMode instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <RobotMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_dashboard_msgs-msg:mode-val is deprecated.  Use ur_dashboard_msgs-msg:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RobotMode>)))
    "Constants for message type '<RobotMode>"
  '((:NO_CONTROLLER . -1)
    (:DISCONNECTED . 0)
    (:CONFIRM_SAFETY . 1)
    (:BOOTING . 2)
    (:POWER_OFF . 3)
    (:POWER_ON . 4)
    (:IDLE . 5)
    (:BACKDRIVE . 6)
    (:RUNNING . 7)
    (:UPDATING_FIRMWARE . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RobotMode)))
    "Constants for message type 'RobotMode"
  '((:NO_CONTROLLER . -1)
    (:DISCONNECTED . 0)
    (:CONFIRM_SAFETY . 1)
    (:BOOTING . 2)
    (:POWER_OFF . 3)
    (:POWER_ON . 4)
    (:IDLE . 5)
    (:BACKDRIVE . 6)
    (:RUNNING . 7)
    (:UPDATING_FIRMWARE . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotMode>) ostream)
  "Serializes a message object of type '<RobotMode>"
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotMode>) istream)
  "Deserializes a message object of type '<RobotMode>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotMode>)))
  "Returns string type for a message object of type '<RobotMode>"
  "ur_dashboard_msgs/RobotMode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotMode)))
  "Returns string type for a message object of type 'RobotMode"
  "ur_dashboard_msgs/RobotMode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotMode>)))
  "Returns md5sum for a message object of type '<RobotMode>"
  "73b72d58742c4889c47118411b03a3b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotMode)))
  "Returns md5sum for a message object of type 'RobotMode"
  "73b72d58742c4889c47118411b03a3b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotMode>)))
  "Returns full string definition for message of type '<RobotMode>"
  (cl:format cl:nil "int8 NO_CONTROLLER=-1~%int8 DISCONNECTED=0~%int8 CONFIRM_SAFETY=1~%int8 BOOTING=2~%int8 POWER_OFF=3~%int8 POWER_ON=4~%int8 IDLE=5~%int8 BACKDRIVE=6~%int8 RUNNING=7~%int8 UPDATING_FIRMWARE=8~%~%int8 mode~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotMode)))
  "Returns full string definition for message of type 'RobotMode"
  (cl:format cl:nil "int8 NO_CONTROLLER=-1~%int8 DISCONNECTED=0~%int8 CONFIRM_SAFETY=1~%int8 BOOTING=2~%int8 POWER_OFF=3~%int8 POWER_ON=4~%int8 IDLE=5~%int8 BACKDRIVE=6~%int8 RUNNING=7~%int8 UPDATING_FIRMWARE=8~%~%int8 mode~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotMode>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotMode>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotMode
    (cl:cons ':mode (mode msg))
))
