; Auto-generated. Do not edit!


(cl:in-package fiducial_msgs-srv)


;//! \htmlinclude InitializeMap-request.msg.html

(cl:defclass <InitializeMap-request> (roslisp-msg-protocol:ros-message)
  ((fiducials
    :reader fiducials
    :initarg :fiducials
    :type fiducial_msgs-msg:FiducialMapEntryArray
    :initform (cl:make-instance 'fiducial_msgs-msg:FiducialMapEntryArray)))
)

(cl:defclass InitializeMap-request (<InitializeMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InitializeMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InitializeMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fiducial_msgs-srv:<InitializeMap-request> is deprecated: use fiducial_msgs-srv:InitializeMap-request instead.")))

(cl:ensure-generic-function 'fiducials-val :lambda-list '(m))
(cl:defmethod fiducials-val ((m <InitializeMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fiducial_msgs-srv:fiducials-val is deprecated.  Use fiducial_msgs-srv:fiducials instead.")
  (fiducials m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InitializeMap-request>) ostream)
  "Serializes a message object of type '<InitializeMap-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fiducials) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InitializeMap-request>) istream)
  "Deserializes a message object of type '<InitializeMap-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fiducials) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InitializeMap-request>)))
  "Returns string type for a service object of type '<InitializeMap-request>"
  "fiducial_msgs/InitializeMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InitializeMap-request)))
  "Returns string type for a service object of type 'InitializeMap-request"
  "fiducial_msgs/InitializeMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InitializeMap-request>)))
  "Returns md5sum for a message object of type '<InitializeMap-request>"
  "af3be60cc8712d87e234a795a01490e4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InitializeMap-request)))
  "Returns md5sum for a message object of type 'InitializeMap-request"
  "af3be60cc8712d87e234a795a01490e4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InitializeMap-request>)))
  "Returns full string definition for message of type '<InitializeMap-request>"
  (cl:format cl:nil "FiducialMapEntryArray fiducials~%~%================================================================================~%MSG: fiducial_msgs/FiducialMapEntryArray~%FiducialMapEntry[] fiducials~%~%================================================================================~%MSG: fiducial_msgs/FiducialMapEntry~%# pose of a fiducial~%int32 fiducial_id~%# translation~%float64 x~%float64 y~%float64 z~%# rotation~%float64 rx~%float64 ry~%float64 rz~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InitializeMap-request)))
  "Returns full string definition for message of type 'InitializeMap-request"
  (cl:format cl:nil "FiducialMapEntryArray fiducials~%~%================================================================================~%MSG: fiducial_msgs/FiducialMapEntryArray~%FiducialMapEntry[] fiducials~%~%================================================================================~%MSG: fiducial_msgs/FiducialMapEntry~%# pose of a fiducial~%int32 fiducial_id~%# translation~%float64 x~%float64 y~%float64 z~%# rotation~%float64 rx~%float64 ry~%float64 rz~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InitializeMap-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fiducials))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InitializeMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'InitializeMap-request
    (cl:cons ':fiducials (fiducials msg))
))
;//! \htmlinclude InitializeMap-response.msg.html

(cl:defclass <InitializeMap-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass InitializeMap-response (<InitializeMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InitializeMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InitializeMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fiducial_msgs-srv:<InitializeMap-response> is deprecated: use fiducial_msgs-srv:InitializeMap-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InitializeMap-response>) ostream)
  "Serializes a message object of type '<InitializeMap-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InitializeMap-response>) istream)
  "Deserializes a message object of type '<InitializeMap-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InitializeMap-response>)))
  "Returns string type for a service object of type '<InitializeMap-response>"
  "fiducial_msgs/InitializeMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InitializeMap-response)))
  "Returns string type for a service object of type 'InitializeMap-response"
  "fiducial_msgs/InitializeMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InitializeMap-response>)))
  "Returns md5sum for a message object of type '<InitializeMap-response>"
  "af3be60cc8712d87e234a795a01490e4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InitializeMap-response)))
  "Returns md5sum for a message object of type 'InitializeMap-response"
  "af3be60cc8712d87e234a795a01490e4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InitializeMap-response>)))
  "Returns full string definition for message of type '<InitializeMap-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InitializeMap-response)))
  "Returns full string definition for message of type 'InitializeMap-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InitializeMap-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InitializeMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'InitializeMap-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'InitializeMap)))
  'InitializeMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'InitializeMap)))
  'InitializeMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InitializeMap)))
  "Returns string type for a service object of type '<InitializeMap>"
  "fiducial_msgs/InitializeMap")