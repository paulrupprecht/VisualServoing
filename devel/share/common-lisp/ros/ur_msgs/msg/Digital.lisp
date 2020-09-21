; Auto-generated. Do not edit!


(cl:in-package ur_msgs-msg)


;//! \htmlinclude Digital.msg.html

(cl:defclass <Digital> (roslisp-msg-protocol:ros-message)
  ((pin
    :reader pin
    :initarg :pin
    :type cl:fixnum
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Digital (<Digital>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Digital>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Digital)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_msgs-msg:<Digital> is deprecated: use ur_msgs-msg:Digital instead.")))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <Digital>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:pin-val is deprecated.  Use ur_msgs-msg:pin instead.")
  (pin m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Digital>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-msg:state-val is deprecated.  Use ur_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Digital>) ostream)
  "Serializes a message object of type '<Digital>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Digital>) istream)
  "Deserializes a message object of type '<Digital>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Digital>)))
  "Returns string type for a message object of type '<Digital>"
  "ur_msgs/Digital")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Digital)))
  "Returns string type for a message object of type 'Digital"
  "ur_msgs/Digital")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Digital>)))
  "Returns md5sum for a message object of type '<Digital>"
  "83707be3fa18d2ffe57381ea034aa262")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Digital)))
  "Returns md5sum for a message object of type 'Digital"
  "83707be3fa18d2ffe57381ea034aa262")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Digital>)))
  "Returns full string definition for message of type '<Digital>"
  (cl:format cl:nil "uint8 pin~%bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Digital)))
  "Returns full string definition for message of type 'Digital"
  (cl:format cl:nil "uint8 pin~%bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Digital>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Digital>))
  "Converts a ROS message object to a list"
  (cl:list 'Digital
    (cl:cons ':pin (pin msg))
    (cl:cons ':state (state msg))
))
