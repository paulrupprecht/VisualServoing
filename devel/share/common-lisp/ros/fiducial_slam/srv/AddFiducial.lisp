; Auto-generated. Do not edit!


(cl:in-package fiducial_slam-srv)


;//! \htmlinclude AddFiducial-request.msg.html

(cl:defclass <AddFiducial-request> (roslisp-msg-protocol:ros-message)
  ((fiducial_id
    :reader fiducial_id
    :initarg :fiducial_id
    :type cl:integer
    :initform 0))
)

(cl:defclass AddFiducial-request (<AddFiducial-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddFiducial-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddFiducial-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fiducial_slam-srv:<AddFiducial-request> is deprecated: use fiducial_slam-srv:AddFiducial-request instead.")))

(cl:ensure-generic-function 'fiducial_id-val :lambda-list '(m))
(cl:defmethod fiducial_id-val ((m <AddFiducial-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fiducial_slam-srv:fiducial_id-val is deprecated.  Use fiducial_slam-srv:fiducial_id instead.")
  (fiducial_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddFiducial-request>) ostream)
  "Serializes a message object of type '<AddFiducial-request>"
  (cl:let* ((signed (cl:slot-value msg 'fiducial_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddFiducial-request>) istream)
  "Deserializes a message object of type '<AddFiducial-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fiducial_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddFiducial-request>)))
  "Returns string type for a service object of type '<AddFiducial-request>"
  "fiducial_slam/AddFiducialRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddFiducial-request)))
  "Returns string type for a service object of type 'AddFiducial-request"
  "fiducial_slam/AddFiducialRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddFiducial-request>)))
  "Returns md5sum for a message object of type '<AddFiducial-request>"
  "d6e0c5dec9dcac4f00b77e79be09ed60")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddFiducial-request)))
  "Returns md5sum for a message object of type 'AddFiducial-request"
  "d6e0c5dec9dcac4f00b77e79be09ed60")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddFiducial-request>)))
  "Returns full string definition for message of type '<AddFiducial-request>"
  (cl:format cl:nil "int32 fiducial_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddFiducial-request)))
  "Returns full string definition for message of type 'AddFiducial-request"
  (cl:format cl:nil "int32 fiducial_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddFiducial-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddFiducial-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddFiducial-request
    (cl:cons ':fiducial_id (fiducial_id msg))
))
;//! \htmlinclude AddFiducial-response.msg.html

(cl:defclass <AddFiducial-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass AddFiducial-response (<AddFiducial-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddFiducial-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddFiducial-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fiducial_slam-srv:<AddFiducial-response> is deprecated: use fiducial_slam-srv:AddFiducial-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddFiducial-response>) ostream)
  "Serializes a message object of type '<AddFiducial-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddFiducial-response>) istream)
  "Deserializes a message object of type '<AddFiducial-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddFiducial-response>)))
  "Returns string type for a service object of type '<AddFiducial-response>"
  "fiducial_slam/AddFiducialResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddFiducial-response)))
  "Returns string type for a service object of type 'AddFiducial-response"
  "fiducial_slam/AddFiducialResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddFiducial-response>)))
  "Returns md5sum for a message object of type '<AddFiducial-response>"
  "d6e0c5dec9dcac4f00b77e79be09ed60")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddFiducial-response)))
  "Returns md5sum for a message object of type 'AddFiducial-response"
  "d6e0c5dec9dcac4f00b77e79be09ed60")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddFiducial-response>)))
  "Returns full string definition for message of type '<AddFiducial-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddFiducial-response)))
  "Returns full string definition for message of type 'AddFiducial-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddFiducial-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddFiducial-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddFiducial-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddFiducial)))
  'AddFiducial-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddFiducial)))
  'AddFiducial-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddFiducial)))
  "Returns string type for a service object of type '<AddFiducial>"
  "fiducial_slam/AddFiducial")