; Auto-generated. Do not edit!


(cl:in-package ur_msgs-msg)


;//! \htmlinclude ToolDataMsg.msg.html

(cl:defclass <ToolDataMsg> (roslisp-msg-protocol:ros-message)
  ((analog_input_range2
    :reader analog_input_range2
    :initarg :analog_input_range2
    :type cl:fixnum
    :initform 0)
   (analog_input_range3
    :reader analog_input_range3
    :initarg :analog_input_range3
    :type cl:fixnum
    :initform 0)
   (analog_input2
    :reader analog_input2
    :initarg :analog_input2
    :type cl:float
    :initform 0.0)
   (analog_input3
    :reader analog_input3
    :initarg :analog_input3
    :type cl:float
    :initform 0.0)
   (tool_voltage_48v
    :reader tool_voltage_48v
    :initarg :tool_voltage_48v
    :type cl:float
    :initform 0.0)
   (tool_output_voltage
    :reader tool_output_voltage
    :initarg :tool_output_voltage
    :type cl:fixnum
    :initform 0)
   (tool_current
    :reader tool_current
    :initarg :tool_current
    :type cl:float
    :initform 0.0)
   (tool_temperature
    :reader tool_temperature
    :initarg :tool_temperature
    :type cl:float
    :initform 0.0)
   (tool_mode
    :reader tool_mode
    :initarg :tool_mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ToolDataMsg (<ToolDataMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ToolDataMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ToolDataMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_msgs-msg:<ToolDataMsg> is deprecated: use ur_msgs-msg:ToolDataMsg instead.")))

(cl:ensure-generic-function 'analog_input_range2-val :lambda-list '(m))
(cl:defmethod analog_input_range2-val ((m <ToolDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:analog_input_range2-val is deprecated.  Use ur_msgs-msg:analog_input_range2 instead.")
  (analog_input_range2 m))

(cl:ensure-generic-function 'analog_input_range3-val :lambda-list '(m))
(cl:defmethod analog_input_range3-val ((m <ToolDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:analog_input_range3-val is deprecated.  Use ur_msgs-msg:analog_input_range3 instead.")
  (analog_input_range3 m))

(cl:ensure-generic-function 'analog_input2-val :lambda-list '(m))
(cl:defmethod analog_input2-val ((m <ToolDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:analog_input2-val is deprecated.  Use ur_msgs-msg:analog_input2 instead.")
  (analog_input2 m))

(cl:ensure-generic-function 'analog_input3-val :lambda-list '(m))
(cl:defmethod analog_input3-val ((m <ToolDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:analog_input3-val is deprecated.  Use ur_msgs-msg:analog_input3 instead.")
  (analog_input3 m))

(cl:ensure-generic-function 'tool_voltage_48v-val :lambda-list '(m))
(cl:defmethod tool_voltage_48v-val ((m <ToolDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:tool_voltage_48v-val is deprecated.  Use ur_msgs-msg:tool_voltage_48v instead.")
  (tool_voltage_48v m))

(cl:ensure-generic-function 'tool_output_voltage-val :lambda-list '(m))
(cl:defmethod tool_output_voltage-val ((m <ToolDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:tool_output_voltage-val is deprecated.  Use ur_msgs-msg:tool_output_voltage instead.")
  (tool_output_voltage m))

(cl:ensure-generic-function 'tool_current-val :lambda-list '(m))
(cl:defmethod tool_current-val ((m <ToolDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:tool_current-val is deprecated.  Use ur_msgs-msg:tool_current instead.")
  (tool_current m))

(cl:ensure-generic-function 'tool_temperature-val :lambda-list '(m))
(cl:defmethod tool_temperature-val ((m <ToolDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:tool_temperature-val is deprecated.  Use ur_msgs-msg:tool_temperature instead.")
  (tool_temperature m))

(cl:ensure-generic-function 'tool_mode-val :lambda-list '(m))
(cl:defmethod tool_mode-val ((m <ToolDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:tool_mode-val is deprecated.  Use ur_msgs-msg:tool_mode instead.")
  (tool_mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ToolDataMsg>)))
    "Constants for message type '<ToolDataMsg>"
  '((:ANALOG_INPUT_RANGE_CURRENT . 0)
    (:ANALOG_INPUT_RANGE_VOLTAGE . 1)
    (:TOOL_BOOTLOADER_MODE . 249)
    (:TOOL_RUNNING_MODE . 253)
    (:TOOL_IDLE_MODE . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ToolDataMsg)))
    "Constants for message type 'ToolDataMsg"
  '((:ANALOG_INPUT_RANGE_CURRENT . 0)
    (:ANALOG_INPUT_RANGE_VOLTAGE . 1)
    (:TOOL_BOOTLOADER_MODE . 249)
    (:TOOL_RUNNING_MODE . 253)
    (:TOOL_IDLE_MODE . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ToolDataMsg>) ostream)
  "Serializes a message object of type '<ToolDataMsg>"
  (cl:let* ((signed (cl:slot-value msg 'analog_input_range2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'analog_input_range3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'analog_input2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'analog_input3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tool_voltage_48v))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tool_output_voltage)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tool_current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tool_temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tool_mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ToolDataMsg>) istream)
  "Deserializes a message object of type '<ToolDataMsg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'analog_input_range2) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'analog_input_range3) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'analog_input2) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'analog_input3) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tool_voltage_48v) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tool_output_voltage)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tool_current) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tool_temperature) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tool_mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ToolDataMsg>)))
  "Returns string type for a message object of type '<ToolDataMsg>"
  "ur_msgs/ToolDataMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToolDataMsg)))
  "Returns string type for a message object of type 'ToolDataMsg"
  "ur_msgs/ToolDataMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ToolDataMsg>)))
  "Returns md5sum for a message object of type '<ToolDataMsg>"
  "404fc266f37d89f75b372d12fa94a122")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ToolDataMsg)))
  "Returns md5sum for a message object of type 'ToolDataMsg"
  "404fc266f37d89f75b372d12fa94a122")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ToolDataMsg>)))
  "Returns full string definition for message of type '<ToolDataMsg>"
  (cl:format cl:nil "# This data structure contains the ToolData structure~%# used by the Universal Robots controller~%~%int8 ANALOG_INPUT_RANGE_CURRENT = 0~%int8 ANALOG_INPUT_RANGE_VOLTAGE = 1~%~%int8 analog_input_range2 # one of ANALOG_INPUT_RANGE_*~%int8 analog_input_range3 # one of ANALOG_INPUT_RANGE_*~%float64 analog_input2~%float64 analog_input3~%float32 tool_voltage_48v~%uint8 tool_output_voltage~%float32 tool_current~%float32 tool_temperature~%~%uint8 TOOL_BOOTLOADER_MODE = 249~%uint8 TOOL_RUNNING_MODE = 253~%uint8 TOOL_IDLE_MODE = 255~%~%uint8 tool_mode # one of TOOL_*~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ToolDataMsg)))
  "Returns full string definition for message of type 'ToolDataMsg"
  (cl:format cl:nil "# This data structure contains the ToolData structure~%# used by the Universal Robots controller~%~%int8 ANALOG_INPUT_RANGE_CURRENT = 0~%int8 ANALOG_INPUT_RANGE_VOLTAGE = 1~%~%int8 analog_input_range2 # one of ANALOG_INPUT_RANGE_*~%int8 analog_input_range3 # one of ANALOG_INPUT_RANGE_*~%float64 analog_input2~%float64 analog_input3~%float32 tool_voltage_48v~%uint8 tool_output_voltage~%float32 tool_current~%float32 tool_temperature~%~%uint8 TOOL_BOOTLOADER_MODE = 249~%uint8 TOOL_RUNNING_MODE = 253~%uint8 TOOL_IDLE_MODE = 255~%~%uint8 tool_mode # one of TOOL_*~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ToolDataMsg>))
  (cl:+ 0
     1
     1
     8
     8
     4
     1
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ToolDataMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'ToolDataMsg
    (cl:cons ':analog_input_range2 (analog_input_range2 msg))
    (cl:cons ':analog_input_range3 (analog_input_range3 msg))
    (cl:cons ':analog_input2 (analog_input2 msg))
    (cl:cons ':analog_input3 (analog_input3 msg))
    (cl:cons ':tool_voltage_48v (tool_voltage_48v msg))
    (cl:cons ':tool_output_voltage (tool_output_voltage msg))
    (cl:cons ':tool_current (tool_current msg))
    (cl:cons ':tool_temperature (tool_temperature msg))
    (cl:cons ':tool_mode (tool_mode msg))
))
