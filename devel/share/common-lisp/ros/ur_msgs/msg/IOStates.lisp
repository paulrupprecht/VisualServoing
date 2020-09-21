; Auto-generated. Do not edit!


(cl:in-package ur_msgs-msg)


;//! \htmlinclude IOStates.msg.html

(cl:defclass <IOStates> (roslisp-msg-protocol:ros-message)
  ((digital_in_states
    :reader digital_in_states
    :initarg :digital_in_states
    :type (cl:vector ur_msgs-msg:Digital)
   :initform (cl:make-array 0 :element-type 'ur_msgs-msg:Digital :initial-element (cl:make-instance 'ur_msgs-msg:Digital)))
   (digital_out_states
    :reader digital_out_states
    :initarg :digital_out_states
    :type (cl:vector ur_msgs-msg:Digital)
   :initform (cl:make-array 0 :element-type 'ur_msgs-msg:Digital :initial-element (cl:make-instance 'ur_msgs-msg:Digital)))
   (flag_states
    :reader flag_states
    :initarg :flag_states
    :type (cl:vector ur_msgs-msg:Digital)
   :initform (cl:make-array 0 :element-type 'ur_msgs-msg:Digital :initial-element (cl:make-instance 'ur_msgs-msg:Digital)))
   (analog_in_states
    :reader analog_in_states
    :initarg :analog_in_states
    :type (cl:vector ur_msgs-msg:Analog)
   :initform (cl:make-array 0 :element-type 'ur_msgs-msg:Analog :initial-element (cl:make-instance 'ur_msgs-msg:Analog)))
   (analog_out_states
    :reader analog_out_states
    :initarg :analog_out_states
    :type (cl:vector ur_msgs-msg:Analog)
   :initform (cl:make-array 0 :element-type 'ur_msgs-msg:Analog :initial-element (cl:make-instance 'ur_msgs-msg:Analog))))
)

(cl:defclass IOStates (<IOStates>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IOStates>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IOStates)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_msgs-msg:<IOStates> is deprecated: use ur_msgs-msg:IOStates instead.")))

(cl:ensure-generic-function 'digital_in_states-val :lambda-list '(m))
(cl:defmethod digital_in_states-val ((m <IOStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:digital_in_states-val is deprecated.  Use ur_msgs-msg:digital_in_states instead.")
  (digital_in_states m))

(cl:ensure-generic-function 'digital_out_states-val :lambda-list '(m))
(cl:defmethod digital_out_states-val ((m <IOStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:digital_out_states-val is deprecated.  Use ur_msgs-msg:digital_out_states instead.")
  (digital_out_states m))

(cl:ensure-generic-function 'flag_states-val :lambda-list '(m))
(cl:defmethod flag_states-val ((m <IOStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:flag_states-val is deprecated.  Use ur_msgs-msg:flag_states instead.")
  (flag_states m))

(cl:ensure-generic-function 'analog_in_states-val :lambda-list '(m))
(cl:defmethod analog_in_states-val ((m <IOStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:analog_in_states-val is deprecated.  Use ur_msgs-msg:analog_in_states instead.")
  (analog_in_states m))

(cl:ensure-generic-function 'analog_out_states-val :lambda-list '(m))
(cl:defmethod analog_out_states-val ((m <IOStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:analog_out_states-val is deprecated.  Use ur_msgs-msg:analog_out_states instead.")
  (analog_out_states m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IOStates>) ostream)
  "Serializes a message object of type '<IOStates>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'digital_in_states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'digital_in_states))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'digital_out_states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'digital_out_states))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'flag_states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'flag_states))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'analog_in_states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'analog_in_states))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'analog_out_states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'analog_out_states))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IOStates>) istream)
  "Deserializes a message object of type '<IOStates>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'digital_in_states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'digital_in_states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ur_msgs-msg:Digital))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'digital_out_states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'digital_out_states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ur_msgs-msg:Digital))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'flag_states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'flag_states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ur_msgs-msg:Digital))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'analog_in_states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'analog_in_states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ur_msgs-msg:Analog))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'analog_out_states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'analog_out_states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ur_msgs-msg:Analog))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IOStates>)))
  "Returns string type for a message object of type '<IOStates>"
  "ur_msgs/IOStates")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IOStates)))
  "Returns string type for a message object of type 'IOStates"
  "ur_msgs/IOStates")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IOStates>)))
  "Returns md5sum for a message object of type '<IOStates>"
  "3033784e7041da89491b97cc4c1105b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IOStates)))
  "Returns md5sum for a message object of type 'IOStates"
  "3033784e7041da89491b97cc4c1105b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IOStates>)))
  "Returns full string definition for message of type '<IOStates>"
  (cl:format cl:nil "Digital[] digital_in_states~%Digital[] digital_out_states~%Digital[] flag_states~%Analog[] analog_in_states~%Analog[] analog_out_states~%~%================================================================================~%MSG: ur_msgs/Digital~%uint8 pin~%bool state~%~%================================================================================~%MSG: ur_msgs/Analog~%uint8 VOLTAGE=0~%uint8 CURRENT=1~%~%uint8 pin~%uint8 domain # can be VOLTAGE or CURRENT~%float32 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IOStates)))
  "Returns full string definition for message of type 'IOStates"
  (cl:format cl:nil "Digital[] digital_in_states~%Digital[] digital_out_states~%Digital[] flag_states~%Analog[] analog_in_states~%Analog[] analog_out_states~%~%================================================================================~%MSG: ur_msgs/Digital~%uint8 pin~%bool state~%~%================================================================================~%MSG: ur_msgs/Analog~%uint8 VOLTAGE=0~%uint8 CURRENT=1~%~%uint8 pin~%uint8 domain # can be VOLTAGE or CURRENT~%float32 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IOStates>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'digital_in_states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'digital_out_states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'flag_states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'analog_in_states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'analog_out_states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IOStates>))
  "Converts a ROS message object to a list"
  (cl:list 'IOStates
    (cl:cons ':digital_in_states (digital_in_states msg))
    (cl:cons ':digital_out_states (digital_out_states msg))
    (cl:cons ':flag_states (flag_states msg))
    (cl:cons ':analog_in_states (analog_in_states msg))
    (cl:cons ':analog_out_states (analog_out_states msg))
))
