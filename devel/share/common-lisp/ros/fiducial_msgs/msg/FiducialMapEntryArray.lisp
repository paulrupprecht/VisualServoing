; Auto-generated. Do not edit!


(cl:in-package fiducial_msgs-msg)


;//! \htmlinclude FiducialMapEntryArray.msg.html

(cl:defclass <FiducialMapEntryArray> (roslisp-msg-protocol:ros-message)
  ((fiducials
    :reader fiducials
    :initarg :fiducials
    :type (cl:vector fiducial_msgs-msg:FiducialMapEntry)
   :initform (cl:make-array 0 :element-type 'fiducial_msgs-msg:FiducialMapEntry :initial-element (cl:make-instance 'fiducial_msgs-msg:FiducialMapEntry))))
)

(cl:defclass FiducialMapEntryArray (<FiducialMapEntryArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FiducialMapEntryArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FiducialMapEntryArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fiducial_msgs-msg:<FiducialMapEntryArray> is deprecated: use fiducial_msgs-msg:FiducialMapEntryArray instead.")))

(cl:ensure-generic-function 'fiducials-val :lambda-list '(m))
(cl:defmethod fiducials-val ((m <FiducialMapEntryArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fiducial_msgs-msg:fiducials-val is deprecated.  Use fiducial_msgs-msg:fiducials instead.")
  (fiducials m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FiducialMapEntryArray>) ostream)
  "Serializes a message object of type '<FiducialMapEntryArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'fiducials))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'fiducials))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FiducialMapEntryArray>) istream)
  "Deserializes a message object of type '<FiducialMapEntryArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'fiducials) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'fiducials)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'fiducial_msgs-msg:FiducialMapEntry))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FiducialMapEntryArray>)))
  "Returns string type for a message object of type '<FiducialMapEntryArray>"
  "fiducial_msgs/FiducialMapEntryArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FiducialMapEntryArray)))
  "Returns string type for a message object of type 'FiducialMapEntryArray"
  "fiducial_msgs/FiducialMapEntryArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FiducialMapEntryArray>)))
  "Returns md5sum for a message object of type '<FiducialMapEntryArray>"
  "f3d7e1cb2717bda61be54acdb77f4f79")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FiducialMapEntryArray)))
  "Returns md5sum for a message object of type 'FiducialMapEntryArray"
  "f3d7e1cb2717bda61be54acdb77f4f79")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FiducialMapEntryArray>)))
  "Returns full string definition for message of type '<FiducialMapEntryArray>"
  (cl:format cl:nil "FiducialMapEntry[] fiducials~%~%================================================================================~%MSG: fiducial_msgs/FiducialMapEntry~%# pose of a fiducial~%int32 fiducial_id~%# translation~%float64 x~%float64 y~%float64 z~%# rotation~%float64 rx~%float64 ry~%float64 rz~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FiducialMapEntryArray)))
  "Returns full string definition for message of type 'FiducialMapEntryArray"
  (cl:format cl:nil "FiducialMapEntry[] fiducials~%~%================================================================================~%MSG: fiducial_msgs/FiducialMapEntry~%# pose of a fiducial~%int32 fiducial_id~%# translation~%float64 x~%float64 y~%float64 z~%# rotation~%float64 rx~%float64 ry~%float64 rz~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FiducialMapEntryArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'fiducials) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FiducialMapEntryArray>))
  "Converts a ROS message object to a list"
  (cl:list 'FiducialMapEntryArray
    (cl:cons ':fiducials (fiducials msg))
))
