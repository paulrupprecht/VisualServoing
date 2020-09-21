; Auto-generated. Do not edit!


(cl:in-package fiducial_msgs-msg)


;//! \htmlinclude FiducialArray.msg.html

(cl:defclass <FiducialArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (image_seq
    :reader image_seq
    :initarg :image_seq
    :type cl:integer
    :initform 0)
   (fiducials
    :reader fiducials
    :initarg :fiducials
    :type (cl:vector fiducial_msgs-msg:Fiducial)
   :initform (cl:make-array 0 :element-type 'fiducial_msgs-msg:Fiducial :initial-element (cl:make-instance 'fiducial_msgs-msg:Fiducial))))
)

(cl:defclass FiducialArray (<FiducialArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FiducialArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FiducialArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fiducial_msgs-msg:<FiducialArray> is deprecated: use fiducial_msgs-msg:FiducialArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FiducialArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fiducial_msgs-msg:header-val is deprecated.  Use fiducial_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'image_seq-val :lambda-list '(m))
(cl:defmethod image_seq-val ((m <FiducialArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fiducial_msgs-msg:image_seq-val is deprecated.  Use fiducial_msgs-msg:image_seq instead.")
  (image_seq m))

(cl:ensure-generic-function 'fiducials-val :lambda-list '(m))
(cl:defmethod fiducials-val ((m <FiducialArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fiducial_msgs-msg:fiducials-val is deprecated.  Use fiducial_msgs-msg:fiducials instead.")
  (fiducials m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FiducialArray>) ostream)
  "Serializes a message object of type '<FiducialArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'image_seq)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'fiducials))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'fiducials))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FiducialArray>) istream)
  "Deserializes a message object of type '<FiducialArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'image_seq) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'fiducials) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'fiducials)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'fiducial_msgs-msg:Fiducial))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FiducialArray>)))
  "Returns string type for a message object of type '<FiducialArray>"
  "fiducial_msgs/FiducialArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FiducialArray)))
  "Returns string type for a message object of type 'FiducialArray"
  "fiducial_msgs/FiducialArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FiducialArray>)))
  "Returns md5sum for a message object of type '<FiducialArray>"
  "fd851a0658e8a35a4d4f80b76d9f17a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FiducialArray)))
  "Returns md5sum for a message object of type 'FiducialArray"
  "fd851a0658e8a35a4d4f80b76d9f17a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FiducialArray>)))
  "Returns full string definition for message of type '<FiducialArray>"
  (cl:format cl:nil " # A set of fiducial vertex messages~% # to an image~% Header header~% int32 image_seq~% Fiducial[] fiducials ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: fiducial_msgs/Fiducial~% # Details of a detected fiducial.~%~% int32 fiducial_id~% int32 direction~%~% # vertices~% float64 x0~% float64 y0~% float64 x1~% float64 y1~% float64 x2~% float64 y2~% float64 x3~% float64 y3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FiducialArray)))
  "Returns full string definition for message of type 'FiducialArray"
  (cl:format cl:nil " # A set of fiducial vertex messages~% # to an image~% Header header~% int32 image_seq~% Fiducial[] fiducials ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: fiducial_msgs/Fiducial~% # Details of a detected fiducial.~%~% int32 fiducial_id~% int32 direction~%~% # vertices~% float64 x0~% float64 y0~% float64 x1~% float64 y1~% float64 x2~% float64 y2~% float64 x3~% float64 y3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FiducialArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'fiducials) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FiducialArray>))
  "Converts a ROS message object to a list"
  (cl:list 'FiducialArray
    (cl:cons ':header (header msg))
    (cl:cons ':image_seq (image_seq msg))
    (cl:cons ':fiducials (fiducials msg))
))
