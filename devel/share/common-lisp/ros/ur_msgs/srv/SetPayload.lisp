; Auto-generated. Do not edit!


(cl:in-package ur_msgs-srv)


;//! \htmlinclude SetPayload-request.msg.html

(cl:defclass <SetPayload-request> (roslisp-msg-protocol:ros-message)
  ((payload
    :reader payload
    :initarg :payload
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetPayload-request (<SetPayload-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPayload-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPayload-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_msgs-srv:<SetPayload-request> is deprecated: use ur_msgs-srv:SetPayload-request instead.")))

(cl:ensure-generic-function 'payload-val :lambda-list '(m))
(cl:defmethod payload-val ((m <SetPayload-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-srv:payload-val is deprecated.  Use ur_msgs-srv:payload instead.")
  (payload m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPayload-request>) ostream)
  "Serializes a message object of type '<SetPayload-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'payload))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPayload-request>) istream)
  "Deserializes a message object of type '<SetPayload-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'payload) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPayload-request>)))
  "Returns string type for a service object of type '<SetPayload-request>"
  "ur_msgs/SetPayloadRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPayload-request)))
  "Returns string type for a service object of type 'SetPayload-request"
  "ur_msgs/SetPayloadRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPayload-request>)))
  "Returns md5sum for a message object of type '<SetPayload-request>"
  "7f12eb632882cb73e5721178d0073e39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPayload-request)))
  "Returns md5sum for a message object of type 'SetPayload-request"
  "7f12eb632882cb73e5721178d0073e39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPayload-request>)))
  "Returns full string definition for message of type '<SetPayload-request>"
  (cl:format cl:nil "float32 payload~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPayload-request)))
  "Returns full string definition for message of type 'SetPayload-request"
  (cl:format cl:nil "float32 payload~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPayload-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPayload-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPayload-request
    (cl:cons ':payload (payload msg))
))
;//! \htmlinclude SetPayload-response.msg.html

(cl:defclass <SetPayload-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetPayload-response (<SetPayload-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPayload-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPayload-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_msgs-srv:<SetPayload-response> is deprecated: use ur_msgs-srv:SetPayload-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetPayload-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-srv:success-val is deprecated.  Use ur_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPayload-response>) ostream)
  "Serializes a message object of type '<SetPayload-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPayload-response>) istream)
  "Deserializes a message object of type '<SetPayload-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPayload-response>)))
  "Returns string type for a service object of type '<SetPayload-response>"
  "ur_msgs/SetPayloadResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPayload-response)))
  "Returns string type for a service object of type 'SetPayload-response"
  "ur_msgs/SetPayloadResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPayload-response>)))
  "Returns md5sum for a message object of type '<SetPayload-response>"
  "7f12eb632882cb73e5721178d0073e39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPayload-response)))
  "Returns md5sum for a message object of type 'SetPayload-response"
  "7f12eb632882cb73e5721178d0073e39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPayload-response>)))
  "Returns full string definition for message of type '<SetPayload-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPayload-response)))
  "Returns full string definition for message of type 'SetPayload-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPayload-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPayload-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPayload-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetPayload)))
  'SetPayload-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetPayload)))
  'SetPayload-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPayload)))
  "Returns string type for a service object of type '<SetPayload>"
  "ur_msgs/SetPayload")