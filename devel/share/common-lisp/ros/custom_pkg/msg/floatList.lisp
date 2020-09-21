; Auto-generated. Do not edit!


(cl:in-package custom_pkg-msg)


;//! \htmlinclude floatList.msg.html

(cl:defclass <floatList> (roslisp-msg-protocol:ros-message)
  ((old
    :reader old
    :initarg :old
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (new
    :reader new
    :initarg :new
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass floatList (<floatList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <floatList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'floatList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_pkg-msg:<floatList> is deprecated: use custom_pkg-msg:floatList instead.")))

(cl:ensure-generic-function 'old-val :lambda-list '(m))
(cl:defmethod old-val ((m <floatList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_pkg-msg:old-val is deprecated.  Use custom_pkg-msg:old instead.")
  (old m))

(cl:ensure-generic-function 'new-val :lambda-list '(m))
(cl:defmethod new-val ((m <floatList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_pkg-msg:new-val is deprecated.  Use custom_pkg-msg:new instead.")
  (new m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <floatList>) ostream)
  "Serializes a message object of type '<floatList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'old))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'old))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'new))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'new))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <floatList>) istream)
  "Deserializes a message object of type '<floatList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'old) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'old)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'new) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'new)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<floatList>)))
  "Returns string type for a message object of type '<floatList>"
  "custom_pkg/floatList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'floatList)))
  "Returns string type for a message object of type 'floatList"
  "custom_pkg/floatList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<floatList>)))
  "Returns md5sum for a message object of type '<floatList>"
  "ea878b1bd38d0c31ddfedc174bfca32e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'floatList)))
  "Returns md5sum for a message object of type 'floatList"
  "ea878b1bd38d0c31ddfedc174bfca32e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<floatList>)))
  "Returns full string definition for message of type '<floatList>"
  (cl:format cl:nil "float64[] old~%float64[] new~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'floatList)))
  "Returns full string definition for message of type 'floatList"
  (cl:format cl:nil "float64[] old~%float64[] new~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <floatList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'old) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'new) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <floatList>))
  "Converts a ROS message object to a list"
  (cl:list 'floatList
    (cl:cons ':old (old msg))
    (cl:cons ':new (new msg))
))
