; Auto-generated. Do not edit!


(cl:in-package ur_msgs-msg)


;//! \htmlinclude RobotModeDataMsg.msg.html

(cl:defclass <RobotModeDataMsg> (roslisp-msg-protocol:ros-message)
  ((timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:integer
    :initform 0)
   (is_robot_connected
    :reader is_robot_connected
    :initarg :is_robot_connected
    :type cl:boolean
    :initform cl:nil)
   (is_real_robot_enabled
    :reader is_real_robot_enabled
    :initarg :is_real_robot_enabled
    :type cl:boolean
    :initform cl:nil)
   (is_power_on_robot
    :reader is_power_on_robot
    :initarg :is_power_on_robot
    :type cl:boolean
    :initform cl:nil)
   (is_emergency_stopped
    :reader is_emergency_stopped
    :initarg :is_emergency_stopped
    :type cl:boolean
    :initform cl:nil)
   (is_protective_stopped
    :reader is_protective_stopped
    :initarg :is_protective_stopped
    :type cl:boolean
    :initform cl:nil)
   (is_program_running
    :reader is_program_running
    :initarg :is_program_running
    :type cl:boolean
    :initform cl:nil)
   (is_program_paused
    :reader is_program_paused
    :initarg :is_program_paused
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RobotModeDataMsg (<RobotModeDataMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotModeDataMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotModeDataMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_msgs-msg:<RobotModeDataMsg> is deprecated: use ur_msgs-msg:RobotModeDataMsg instead.")))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <RobotModeDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:timestamp-val is deprecated.  Use ur_msgs-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'is_robot_connected-val :lambda-list '(m))
(cl:defmethod is_robot_connected-val ((m <RobotModeDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:is_robot_connected-val is deprecated.  Use ur_msgs-msg:is_robot_connected instead.")
  (is_robot_connected m))

(cl:ensure-generic-function 'is_real_robot_enabled-val :lambda-list '(m))
(cl:defmethod is_real_robot_enabled-val ((m <RobotModeDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:is_real_robot_enabled-val is deprecated.  Use ur_msgs-msg:is_real_robot_enabled instead.")
  (is_real_robot_enabled m))

(cl:ensure-generic-function 'is_power_on_robot-val :lambda-list '(m))
(cl:defmethod is_power_on_robot-val ((m <RobotModeDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:is_power_on_robot-val is deprecated.  Use ur_msgs-msg:is_power_on_robot instead.")
  (is_power_on_robot m))

(cl:ensure-generic-function 'is_emergency_stopped-val :lambda-list '(m))
(cl:defmethod is_emergency_stopped-val ((m <RobotModeDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:is_emergency_stopped-val is deprecated.  Use ur_msgs-msg:is_emergency_stopped instead.")
  (is_emergency_stopped m))

(cl:ensure-generic-function 'is_protective_stopped-val :lambda-list '(m))
(cl:defmethod is_protective_stopped-val ((m <RobotModeDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:is_protective_stopped-val is deprecated.  Use ur_msgs-msg:is_protective_stopped instead.")
  (is_protective_stopped m))

(cl:ensure-generic-function 'is_program_running-val :lambda-list '(m))
(cl:defmethod is_program_running-val ((m <RobotModeDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:is_program_running-val is deprecated.  Use ur_msgs-msg:is_program_running instead.")
  (is_program_running m))

(cl:ensure-generic-function 'is_program_paused-val :lambda-list '(m))
(cl:defmethod is_program_paused-val ((m <RobotModeDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:is_program_paused-val is deprecated.  Use ur_msgs-msg:is_program_paused instead.")
  (is_program_paused m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotModeDataMsg>) ostream)
  "Serializes a message object of type '<RobotModeDataMsg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_robot_connected) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_real_robot_enabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_power_on_robot) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_emergency_stopped) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_protective_stopped) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_program_running) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_program_paused) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotModeDataMsg>) istream)
  "Deserializes a message object of type '<RobotModeDataMsg>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'is_robot_connected) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_real_robot_enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_power_on_robot) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_emergency_stopped) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_protective_stopped) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_program_running) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_program_paused) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotModeDataMsg>)))
  "Returns string type for a message object of type '<RobotModeDataMsg>"
  "ur_msgs/RobotModeDataMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotModeDataMsg)))
  "Returns string type for a message object of type 'RobotModeDataMsg"
  "ur_msgs/RobotModeDataMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotModeDataMsg>)))
  "Returns md5sum for a message object of type '<RobotModeDataMsg>"
  "867308ca39e2cc0644b50db27deb661f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotModeDataMsg)))
  "Returns md5sum for a message object of type 'RobotModeDataMsg"
  "867308ca39e2cc0644b50db27deb661f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotModeDataMsg>)))
  "Returns full string definition for message of type '<RobotModeDataMsg>"
  (cl:format cl:nil "# This data structure contains the RobotModeData structure~%# used by the Universal Robots controller~%#~%# This data structure is send at 10 Hz on TCP port 30002~%#~%# Note: this message does not carry all fields from the RobotModeData structure as broadcast by the robot controller, but a subset.~%~%uint64 timestamp~%bool is_robot_connected~%bool is_real_robot_enabled~%bool is_power_on_robot~%bool is_emergency_stopped~%bool is_protective_stopped~%bool is_program_running~%bool is_program_paused~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotModeDataMsg)))
  "Returns full string definition for message of type 'RobotModeDataMsg"
  (cl:format cl:nil "# This data structure contains the RobotModeData structure~%# used by the Universal Robots controller~%#~%# This data structure is send at 10 Hz on TCP port 30002~%#~%# Note: this message does not carry all fields from the RobotModeData structure as broadcast by the robot controller, but a subset.~%~%uint64 timestamp~%bool is_robot_connected~%bool is_real_robot_enabled~%bool is_power_on_robot~%bool is_emergency_stopped~%bool is_protective_stopped~%bool is_program_running~%bool is_program_paused~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotModeDataMsg>))
  (cl:+ 0
     8
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotModeDataMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotModeDataMsg
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':is_robot_connected (is_robot_connected msg))
    (cl:cons ':is_real_robot_enabled (is_real_robot_enabled msg))
    (cl:cons ':is_power_on_robot (is_power_on_robot msg))
    (cl:cons ':is_emergency_stopped (is_emergency_stopped msg))
    (cl:cons ':is_protective_stopped (is_protective_stopped msg))
    (cl:cons ':is_program_running (is_program_running msg))
    (cl:cons ':is_program_paused (is_program_paused msg))
))
