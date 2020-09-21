; Auto-generated. Do not edit!


(cl:in-package fiducial_msgs-msg)


;//! \htmlinclude FiducialTransform.msg.html

(cl:defclass <FiducialTransform> (roslisp-msg-protocol:ros-message)
  ((fiducial_id
    :reader fiducial_id
    :initarg :fiducial_id
    :type cl:integer
    :initform 0)
   (transform
    :reader transform
    :initarg :transform
    :type geometry_msgs-msg:Transform
    :initform (cl:make-instance 'geometry_msgs-msg:Transform))
   (image_error
    :reader image_error
    :initarg :image_error
    :type cl:float
    :initform 0.0)
   (object_error
    :reader object_error
    :initarg :object_error
    :type cl:float
    :initform 0.0)
   (fiducial_area
    :reader fiducial_area
    :initarg :fiducial_area
    :type cl:float
    :initform 0.0))
)

(cl:defclass FiducialTransform (<FiducialTransform>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FiducialTransform>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FiducialTransform)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fiducial_msgs-msg:<FiducialTransform> is deprecated: use fiducial_msgs-msg:FiducialTransform instead.")))

(cl:ensure-generic-function 'fiducial_id-val :lambda-list '(m))
(cl:defmethod fiducial_id-val ((m <FiducialTransform>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fiducial_msgs-msg:fiducial_id-val is deprecated.  Use fiducial_msgs-msg:fiducial_id instead.")
  (fiducial_id m))

(cl:ensure-generic-function 'transform-val :lambda-list '(m))
(cl:defmethod transform-val ((m <FiducialTransform>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fiducial_msgs-msg:transform-val is deprecated.  Use fiducial_msgs-msg:transform instead.")
  (transform m))

(cl:ensure-generic-function 'image_error-val :lambda-list '(m))
(cl:defmethod image_error-val ((m <FiducialTransform>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fiducial_msgs-msg:image_error-val is deprecated.  Use fiducial_msgs-msg:image_error instead.")
  (image_error m))

(cl:ensure-generic-function 'object_error-val :lambda-list '(m))
(cl:defmethod object_error-val ((m <FiducialTransform>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fiducial_msgs-msg:object_error-val is deprecated.  Use fiducial_msgs-msg:object_error instead.")
  (object_error m))

(cl:ensure-generic-function 'fiducial_area-val :lambda-list '(m))
(cl:defmethod fiducial_area-val ((m <FiducialTransform>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fiducial_msgs-msg:fiducial_area-val is deprecated.  Use fiducial_msgs-msg:fiducial_area instead.")
  (fiducial_area m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FiducialTransform>) ostream)
  "Serializes a message object of type '<FiducialTransform>"
  (cl:let* ((signed (cl:slot-value msg 'fiducial_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'image_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'object_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'fiducial_area))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FiducialTransform>) istream)
  "Deserializes a message object of type '<FiducialTransform>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fiducial_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'image_error) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'object_error) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fiducial_area) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FiducialTransform>)))
  "Returns string type for a message object of type '<FiducialTransform>"
  "fiducial_msgs/FiducialTransform")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FiducialTransform)))
  "Returns string type for a message object of type 'FiducialTransform"
  "fiducial_msgs/FiducialTransform")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FiducialTransform>)))
  "Returns md5sum for a message object of type '<FiducialTransform>"
  "9f77f4c92fda876d2249ffbc19859044")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FiducialTransform)))
  "Returns md5sum for a message object of type 'FiducialTransform"
  "9f77f4c92fda876d2249ffbc19859044")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FiducialTransform>)))
  "Returns full string definition for message of type '<FiducialTransform>"
  (cl:format cl:nil " # A camera to fiducial transform with supporting data~% int32 fiducial_id~% geometry_msgs/Transform transform~% float64 image_error~% float64 object_error~% float64 fiducial_area~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FiducialTransform)))
  "Returns full string definition for message of type 'FiducialTransform"
  (cl:format cl:nil " # A camera to fiducial transform with supporting data~% int32 fiducial_id~% geometry_msgs/Transform transform~% float64 image_error~% float64 object_error~% float64 fiducial_area~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FiducialTransform>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FiducialTransform>))
  "Converts a ROS message object to a list"
  (cl:list 'FiducialTransform
    (cl:cons ':fiducial_id (fiducial_id msg))
    (cl:cons ':transform (transform msg))
    (cl:cons ':image_error (image_error msg))
    (cl:cons ':object_error (object_error msg))
    (cl:cons ':fiducial_area (fiducial_area msg))
))
