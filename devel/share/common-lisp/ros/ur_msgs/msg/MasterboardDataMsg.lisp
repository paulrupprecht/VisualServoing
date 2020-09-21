; Auto-generated. Do not edit!


(cl:in-package ur_msgs-msg)


;//! \htmlinclude MasterboardDataMsg.msg.html

(cl:defclass <MasterboardDataMsg> (roslisp-msg-protocol:ros-message)
  ((digital_input_bits
    :reader digital_input_bits
    :initarg :digital_input_bits
    :type cl:integer
    :initform 0)
   (digital_output_bits
    :reader digital_output_bits
    :initarg :digital_output_bits
    :type cl:integer
    :initform 0)
   (analog_input_range0
    :reader analog_input_range0
    :initarg :analog_input_range0
    :type cl:fixnum
    :initform 0)
   (analog_input_range1
    :reader analog_input_range1
    :initarg :analog_input_range1
    :type cl:fixnum
    :initform 0)
   (analog_input0
    :reader analog_input0
    :initarg :analog_input0
    :type cl:float
    :initform 0.0)
   (analog_input1
    :reader analog_input1
    :initarg :analog_input1
    :type cl:float
    :initform 0.0)
   (analog_output_domain0
    :reader analog_output_domain0
    :initarg :analog_output_domain0
    :type cl:fixnum
    :initform 0)
   (analog_output_domain1
    :reader analog_output_domain1
    :initarg :analog_output_domain1
    :type cl:fixnum
    :initform 0)
   (analog_output0
    :reader analog_output0
    :initarg :analog_output0
    :type cl:float
    :initform 0.0)
   (analog_output1
    :reader analog_output1
    :initarg :analog_output1
    :type cl:float
    :initform 0.0)
   (masterboard_temperature
    :reader masterboard_temperature
    :initarg :masterboard_temperature
    :type cl:float
    :initform 0.0)
   (robot_voltage_48V
    :reader robot_voltage_48V
    :initarg :robot_voltage_48V
    :type cl:float
    :initform 0.0)
   (robot_current
    :reader robot_current
    :initarg :robot_current
    :type cl:float
    :initform 0.0)
   (master_io_current
    :reader master_io_current
    :initarg :master_io_current
    :type cl:float
    :initform 0.0)
   (master_safety_state
    :reader master_safety_state
    :initarg :master_safety_state
    :type cl:fixnum
    :initform 0)
   (master_onoff_state
    :reader master_onoff_state
    :initarg :master_onoff_state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MasterboardDataMsg (<MasterboardDataMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MasterboardDataMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MasterboardDataMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_msgs-msg:<MasterboardDataMsg> is deprecated: use ur_msgs-msg:MasterboardDataMsg instead.")))

(cl:ensure-generic-function 'digital_input_bits-val :lambda-list '(m))
(cl:defmethod digital_input_bits-val ((m <MasterboardDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:digital_input_bits-val is deprecated.  Use ur_msgs-msg:digital_input_bits instead.")
  (digital_input_bits m))

(cl:ensure-generic-function 'digital_output_bits-val :lambda-list '(m))
(cl:defmethod digital_output_bits-val ((m <MasterboardDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:digital_output_bits-val is deprecated.  Use ur_msgs-msg:digital_output_bits instead.")
  (digital_output_bits m))

(cl:ensure-generic-function 'analog_input_range0-val :lambda-list '(m))
(cl:defmethod analog_input_range0-val ((m <MasterboardDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:analog_input_range0-val is deprecated.  Use ur_msgs-msg:analog_input_range0 instead.")
  (analog_input_range0 m))

(cl:ensure-generic-function 'analog_input_range1-val :lambda-list '(m))
(cl:defmethod analog_input_range1-val ((m <MasterboardDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:analog_input_range1-val is deprecated.  Use ur_msgs-msg:analog_input_range1 instead.")
  (analog_input_range1 m))

(cl:ensure-generic-function 'analog_input0-val :lambda-list '(m))
(cl:defmethod analog_input0-val ((m <MasterboardDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:analog_input0-val is deprecated.  Use ur_msgs-msg:analog_input0 instead.")
  (analog_input0 m))

(cl:ensure-generic-function 'analog_input1-val :lambda-list '(m))
(cl:defmethod analog_input1-val ((m <MasterboardDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:analog_input1-val is deprecated.  Use ur_msgs-msg:analog_input1 instead.")
  (analog_input1 m))

(cl:ensure-generic-function 'analog_output_domain0-val :lambda-list '(m))
(cl:defmethod analog_output_domain0-val ((m <MasterboardDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:analog_output_domain0-val is deprecated.  Use ur_msgs-msg:analog_output_domain0 instead.")
  (analog_output_domain0 m))

(cl:ensure-generic-function 'analog_output_domain1-val :lambda-list '(m))
(cl:defmethod analog_output_domain1-val ((m <MasterboardDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:analog_output_domain1-val is deprecated.  Use ur_msgs-msg:analog_output_domain1 instead.")
  (analog_output_domain1 m))

(cl:ensure-generic-function 'analog_output0-val :lambda-list '(m))
(cl:defmethod analog_output0-val ((m <MasterboardDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:analog_output0-val is deprecated.  Use ur_msgs-msg:analog_output0 instead.")
  (analog_output0 m))

(cl:ensure-generic-function 'analog_output1-val :lambda-list '(m))
(cl:defmethod analog_output1-val ((m <MasterboardDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:analog_output1-val is deprecated.  Use ur_msgs-msg:analog_output1 instead.")
  (analog_output1 m))

(cl:ensure-generic-function 'masterboard_temperature-val :lambda-list '(m))
(cl:defmethod masterboard_temperature-val ((m <MasterboardDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:masterboard_temperature-val is deprecated.  Use ur_msgs-msg:masterboard_temperature instead.")
  (masterboard_temperature m))

(cl:ensure-generic-function 'robot_voltage_48V-val :lambda-list '(m))
(cl:defmethod robot_voltage_48V-val ((m <MasterboardDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:robot_voltage_48V-val is deprecated.  Use ur_msgs-msg:robot_voltage_48V instead.")
  (robot_voltage_48V m))

(cl:ensure-generic-function 'robot_current-val :lambda-list '(m))
(cl:defmethod robot_current-val ((m <MasterboardDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:robot_current-val is deprecated.  Use ur_msgs-msg:robot_current instead.")
  (robot_current m))

(cl:ensure-generic-function 'master_io_current-val :lambda-list '(m))
(cl:defmethod master_io_current-val ((m <MasterboardDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:master_io_current-val is deprecated.  Use ur_msgs-msg:master_io_current instead.")
  (master_io_current m))

(cl:ensure-generic-function 'master_safety_state-val :lambda-list '(m))
(cl:defmethod master_safety_state-val ((m <MasterboardDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:master_safety_state-val is deprecated.  Use ur_msgs-msg:master_safety_state instead.")
  (master_safety_state m))

(cl:ensure-generic-function 'master_onoff_state-val :lambda-list '(m))
(cl:defmethod master_onoff_state-val ((m <MasterboardDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:master_onoff_state-val is deprecated.  Use ur_msgs-msg:master_onoff_state instead.")
  (master_onoff_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MasterboardDataMsg>) ostream)
  "Serializes a message object of type '<MasterboardDataMsg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'digital_input_bits)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'digital_input_bits)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'digital_input_bits)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'digital_input_bits)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'digital_output_bits)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'digital_output_bits)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'digital_output_bits)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'digital_output_bits)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'analog_input_range0)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'analog_input_range1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'analog_input0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'analog_input1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'analog_output_domain0)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'analog_output_domain1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'analog_output0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'analog_output1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'masterboard_temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'robot_voltage_48V))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'robot_current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'master_io_current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'master_safety_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'master_onoff_state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MasterboardDataMsg>) istream)
  "Deserializes a message object of type '<MasterboardDataMsg>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'digital_input_bits)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'digital_input_bits)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'digital_input_bits)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'digital_input_bits)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'digital_output_bits)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'digital_output_bits)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'digital_output_bits)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'digital_output_bits)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'analog_input_range0) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'analog_input_range1) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'analog_input0) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'analog_input1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'analog_output_domain0) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'analog_output_domain1) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'analog_output0) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'analog_output1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'masterboard_temperature) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'robot_voltage_48V) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'robot_current) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'master_io_current) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'master_safety_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'master_onoff_state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MasterboardDataMsg>)))
  "Returns string type for a message object of type '<MasterboardDataMsg>"
  "ur_msgs/MasterboardDataMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MasterboardDataMsg)))
  "Returns string type for a message object of type 'MasterboardDataMsg"
  "ur_msgs/MasterboardDataMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MasterboardDataMsg>)))
  "Returns md5sum for a message object of type '<MasterboardDataMsg>"
  "807af5dc427082b111fa23d1fd2cd585")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MasterboardDataMsg)))
  "Returns md5sum for a message object of type 'MasterboardDataMsg"
  "807af5dc427082b111fa23d1fd2cd585")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MasterboardDataMsg>)))
  "Returns full string definition for message of type '<MasterboardDataMsg>"
  (cl:format cl:nil "# This data structure contains the MasterboardData structure~%# used by the Universal Robots controller~%#~%# MasterboardData is part of the data structure being send on the ~%# secondary client communications interface~%# ~%# This data structure is send at 10 Hz on TCP port 30002~%# ~%# Documentation can be found on the Universal Robots Support site, article~%# number 16496.~%~%uint32 digital_input_bits~%uint32 digital_output_bits~%int8 analog_input_range0~%int8 analog_input_range1~%float64 analog_input0~%float64 analog_input1~%int8 analog_output_domain0~%int8 analog_output_domain1~%float64 analog_output0~%float64 analog_output1~%float32 masterboard_temperature~%float32 robot_voltage_48V~%float32 robot_current~%float32 master_io_current~%uint8 master_safety_state~%uint8 master_onoff_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MasterboardDataMsg)))
  "Returns full string definition for message of type 'MasterboardDataMsg"
  (cl:format cl:nil "# This data structure contains the MasterboardData structure~%# used by the Universal Robots controller~%#~%# MasterboardData is part of the data structure being send on the ~%# secondary client communications interface~%# ~%# This data structure is send at 10 Hz on TCP port 30002~%# ~%# Documentation can be found on the Universal Robots Support site, article~%# number 16496.~%~%uint32 digital_input_bits~%uint32 digital_output_bits~%int8 analog_input_range0~%int8 analog_input_range1~%float64 analog_input0~%float64 analog_input1~%int8 analog_output_domain0~%int8 analog_output_domain1~%float64 analog_output0~%float64 analog_output1~%float32 masterboard_temperature~%float32 robot_voltage_48V~%float32 robot_current~%float32 master_io_current~%uint8 master_safety_state~%uint8 master_onoff_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MasterboardDataMsg>))
  (cl:+ 0
     4
     4
     1
     1
     8
     8
     1
     1
     8
     8
     4
     4
     4
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MasterboardDataMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'MasterboardDataMsg
    (cl:cons ':digital_input_bits (digital_input_bits msg))
    (cl:cons ':digital_output_bits (digital_output_bits msg))
    (cl:cons ':analog_input_range0 (analog_input_range0 msg))
    (cl:cons ':analog_input_range1 (analog_input_range1 msg))
    (cl:cons ':analog_input0 (analog_input0 msg))
    (cl:cons ':analog_input1 (analog_input1 msg))
    (cl:cons ':analog_output_domain0 (analog_output_domain0 msg))
    (cl:cons ':analog_output_domain1 (analog_output_domain1 msg))
    (cl:cons ':analog_output0 (analog_output0 msg))
    (cl:cons ':analog_output1 (analog_output1 msg))
    (cl:cons ':masterboard_temperature (masterboard_temperature msg))
    (cl:cons ':robot_voltage_48V (robot_voltage_48V msg))
    (cl:cons ':robot_current (robot_current msg))
    (cl:cons ':master_io_current (master_io_current msg))
    (cl:cons ':master_safety_state (master_safety_state msg))
    (cl:cons ':master_onoff_state (master_onoff_state msg))
))
