; Auto-generated. Do not edit!


(cl:in-package fiducial_msgs-msg)


;//! \htmlinclude FiducialTransformArray.msg.html

(cl:defclass <FiducialTransformArray> (roslisp-msg-protocol:ros-message)
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
   (transforms
    :reader transforms
    :initarg :transforms
    :type (cl:vector fiducial_msgs-msg:FiducialTransform)
   :initform (cl:make-array 0 :element-type 'fiducial_msgs-msg:FiducialTransform :initial-element (cl:make-instance 'fiducial_msgs-msg:FiducialTransform))))
)

(cl:defclass FiducialTransformArray (<FiducialTransformArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FiducialTransformArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FiducialTransformArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fiducial_msgs-msg:<FiducialTransformArray> is deprecated: use fiducial_msgs-msg:FiducialTransformArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FiducialTransformArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fiducial_msgs-msg:header-val is deprecated.  Use fiducial_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'image_seq-val :lambda-list '(m))
(cl:defmethod image_seq-val ((m <FiducialTransformArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fiducial_msgs-msg:image_seq-val is deprecated.  Use fiducial_msgs-msg:image_seq instead.")
  (image_seq m))

(cl:ensure-generic-function 'transforms-val :lambda-list '(m))
(cl:defmethod transforms-val ((m <FiducialTransformArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fiducial_msgs-msg:transforms-val is deprecated.  Use fiducial_msgs-msg:transforms instead.")
  (transforms m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FiducialTransformArray>) ostream)
  "Serializes a message object of type '<FiducialTransformArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'image_seq)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'transforms))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'transforms))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FiducialTransformArray>) istream)
  "Deserializes a message object of type '<FiducialTransformArray>"
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
  (cl:setf (cl:slot-value msg 'transforms) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'transforms)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'fiducial_msgs-msg:FiducialTransform))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FiducialTransformArray>)))
  "Returns string type for a message object of type '<FiducialTransformArray>"
  "fiducial_msgs/FiducialTransformArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FiducialTransformArray)))
  "Returns string type for a message object of type 'FiducialTransformArray"
  "fiducial_msgs/FiducialTransformArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FiducialTransformArray>)))
  "Returns md5sum for a message object of type '<FiducialTransformArray>"
  "a9391b25df2859cb1ae6fa6ee45ef075")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FiducialTransformArray)))
  "Returns md5sum for a message object of type 'FiducialTransformArray"
  "a9391b25df2859cb1ae6fa6ee45ef075")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FiducialTransformArray>)))
  "Returns full string definition for message of type '<FiducialTransformArray>"
  (cl:format cl:nil " # A set of camera to fiducial transform with supporting data corresponding~% # to an image~% Header header~% int32 image_seq~% FiducialTransform[] transforms ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: fiducial_msgs/FiducialTransform~% # A camera to fiducial transform with supporting data~% int32 fiducial_id~% geometry_msgs/Transform transform~% float64 image_error~% float64 object_error~% float64 fiducial_area~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FiducialTransformArray)))
  "Returns full string definition for message of type 'FiducialTransformArray"
  (cl:format cl:nil " # A set of camera to fiducial transform with supporting data corresponding~% # to an image~% Header header~% int32 image_seq~% FiducialTransform[] transforms ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: fiducial_msgs/FiducialTransform~% # A camera to fiducial transform with supporting data~% int32 fiducial_id~% geometry_msgs/Transform transform~% float64 image_error~% float64 object_error~% float64 fiducial_area~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FiducialTransformArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'transforms) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FiducialTransformArray>))
  "Converts a ROS message object to a list"
  (cl:list 'FiducialTransformArray
    (cl:cons ':header (header msg))
    (cl:cons ':image_seq (image_seq msg))
    (cl:cons ':transforms (transforms msg))
))
