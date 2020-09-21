; Auto-generated. Do not edit!


(cl:in-package ur_dashboard_msgs-msg)


;//! \htmlinclude SafetyMode.msg.html

(cl:defclass <SafetyMode> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SafetyMode (<SafetyMode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SafetyMode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SafetyMode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_dashboard_msgs-msg:<SafetyMode> is deprecated: use ur_dashboard_msgs-msg:SafetyMode instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <SafetyMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_dashboard_msgs-msg:mode-val is deprecated.  Use ur_dashboard_msgs-msg:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SafetyMode>)))
    "Constants for message type '<SafetyMode>"
  '((:NORMAL . 1)
    (:REDUCED . 2)
    (:PROTECTIVE_STOP . 3)
    (:RECOVERY . 4)
    (:SAFEGUARD_STOP . 5)
    (:SYSTEM_EMERGENCY_STOP . 6)
    (:ROBOT_EMERGENCY_STOP . 7)
    (:VIOLATION . 8)
    (:FAULT . 9)
    (:VALIDATE_JOINT_ID . 10)
    (:UNDEFINED_SAFETY_MODE . 11)
    (:AUTOMATIC_MODE_SAFEGUARD_STOP . 12)
    (:SYSTEM_THREE_POSITION_ENABLING_STOP . 13))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SafetyMode)))
    "Constants for message type 'SafetyMode"
  '((:NORMAL . 1)
    (:REDUCED . 2)
    (:PROTECTIVE_STOP . 3)
    (:RECOVERY . 4)
    (:SAFEGUARD_STOP . 5)
    (:SYSTEM_EMERGENCY_STOP . 6)
    (:ROBOT_EMERGENCY_STOP . 7)
    (:VIOLATION . 8)
    (:FAULT . 9)
    (:VALIDATE_JOINT_ID . 10)
    (:UNDEFINED_SAFETY_MODE . 11)
    (:AUTOMATIC_MODE_SAFEGUARD_STOP . 12)
    (:SYSTEM_THREE_POSITION_ENABLING_STOP . 13))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SafetyMode>) ostream)
  "Serializes a message object of type '<SafetyMode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SafetyMode>) istream)
  "Deserializes a message object of type '<SafetyMode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SafetyMode>)))
  "Returns string type for a message object of type '<SafetyMode>"
  "ur_dashboard_msgs/SafetyMode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SafetyMode)))
  "Returns string type for a message object of type 'SafetyMode"
  "ur_dashboard_msgs/SafetyMode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SafetyMode>)))
  "Returns md5sum for a message object of type '<SafetyMode>"
  "5da08725a63d4237bad689481131a84b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SafetyMode)))
  "Returns md5sum for a message object of type 'SafetyMode"
  "5da08725a63d4237bad689481131a84b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SafetyMode>)))
  "Returns full string definition for message of type '<SafetyMode>"
  (cl:format cl:nil "uint8 NORMAL=1~%uint8 REDUCED=2~%uint8 PROTECTIVE_STOP=3~%uint8 RECOVERY=4~%uint8 SAFEGUARD_STOP=5~%uint8 SYSTEM_EMERGENCY_STOP=6~%uint8 ROBOT_EMERGENCY_STOP=7~%uint8 VIOLATION=8~%uint8 FAULT=9~%uint8 VALIDATE_JOINT_ID=10~%uint8 UNDEFINED_SAFETY_MODE=11~%uint8 AUTOMATIC_MODE_SAFEGUARD_STOP=12~%uint8 SYSTEM_THREE_POSITION_ENABLING_STOP=13~%~%uint8 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SafetyMode)))
  "Returns full string definition for message of type 'SafetyMode"
  (cl:format cl:nil "uint8 NORMAL=1~%uint8 REDUCED=2~%uint8 PROTECTIVE_STOP=3~%uint8 RECOVERY=4~%uint8 SAFEGUARD_STOP=5~%uint8 SYSTEM_EMERGENCY_STOP=6~%uint8 ROBOT_EMERGENCY_STOP=7~%uint8 VIOLATION=8~%uint8 FAULT=9~%uint8 VALIDATE_JOINT_ID=10~%uint8 UNDEFINED_SAFETY_MODE=11~%uint8 AUTOMATIC_MODE_SAFEGUARD_STOP=12~%uint8 SYSTEM_THREE_POSITION_ENABLING_STOP=13~%~%uint8 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SafetyMode>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SafetyMode>))
  "Converts a ROS message object to a list"
  (cl:list 'SafetyMode
    (cl:cons ':mode (mode msg))
))
