; Auto-generated. Do not edit!


(cl:in-package ur_msgs-srv)


;//! \htmlinclude SetSpeedSliderFraction-request.msg.html

(cl:defclass <SetSpeedSliderFraction-request> (roslisp-msg-protocol:ros-message)
  ((speed_slider_fraction
    :reader speed_slider_fraction
    :initarg :speed_slider_fraction
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetSpeedSliderFraction-request (<SetSpeedSliderFraction-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetSpeedSliderFraction-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetSpeedSliderFraction-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_msgs-srv:<SetSpeedSliderFraction-request> is deprecated: use ur_msgs-srv:SetSpeedSliderFraction-request instead.")))

(cl:ensure-generic-function 'speed_slider_fraction-val :lambda-list '(m))
(cl:defmethod speed_slider_fraction-val ((m <SetSpeedSliderFraction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-srv:speed_slider_fraction-val is deprecated.  Use ur_msgs-srv:speed_slider_fraction instead.")
  (speed_slider_fraction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetSpeedSliderFraction-request>) ostream)
  "Serializes a message object of type '<SetSpeedSliderFraction-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed_slider_fraction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetSpeedSliderFraction-request>) istream)
  "Deserializes a message object of type '<SetSpeedSliderFraction-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_slider_fraction) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetSpeedSliderFraction-request>)))
  "Returns string type for a service object of type '<SetSpeedSliderFraction-request>"
  "ur_msgs/SetSpeedSliderFractionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetSpeedSliderFraction-request)))
  "Returns string type for a service object of type 'SetSpeedSliderFraction-request"
  "ur_msgs/SetSpeedSliderFractionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetSpeedSliderFraction-request>)))
  "Returns md5sum for a message object of type '<SetSpeedSliderFraction-request>"
  "172aeb6c49379a44cf68480fa5bfad3c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetSpeedSliderFraction-request)))
  "Returns md5sum for a message object of type 'SetSpeedSliderFraction-request"
  "172aeb6c49379a44cf68480fa5bfad3c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetSpeedSliderFraction-request>)))
  "Returns full string definition for message of type '<SetSpeedSliderFraction-request>"
  (cl:format cl:nil "~%~%~%~%~%float64 speed_slider_fraction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetSpeedSliderFraction-request)))
  "Returns full string definition for message of type 'SetSpeedSliderFraction-request"
  (cl:format cl:nil "~%~%~%~%~%float64 speed_slider_fraction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetSpeedSliderFraction-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetSpeedSliderFraction-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetSpeedSliderFraction-request
    (cl:cons ':speed_slider_fraction (speed_slider_fraction msg))
))
;//! \htmlinclude SetSpeedSliderFraction-response.msg.html

(cl:defclass <SetSpeedSliderFraction-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetSpeedSliderFraction-response (<SetSpeedSliderFraction-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetSpeedSliderFraction-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetSpeedSliderFraction-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_msgs-srv:<SetSpeedSliderFraction-response> is deprecated: use ur_msgs-srv:SetSpeedSliderFraction-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetSpeedSliderFraction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_msgs-srv:success-val is deprecated.  Use ur_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetSpeedSliderFraction-response>) ostream)
  "Serializes a message object of type '<SetSpeedSliderFraction-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetSpeedSliderFraction-response>) istream)
  "Deserializes a message object of type '<SetSpeedSliderFraction-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetSpeedSliderFraction-response>)))
  "Returns string type for a service object of type '<SetSpeedSliderFraction-response>"
  "ur_msgs/SetSpeedSliderFractionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetSpeedSliderFraction-response)))
  "Returns string type for a service object of type 'SetSpeedSliderFraction-response"
  "ur_msgs/SetSpeedSliderFractionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetSpeedSliderFraction-response>)))
  "Returns md5sum for a message object of type '<SetSpeedSliderFraction-response>"
  "172aeb6c49379a44cf68480fa5bfad3c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetSpeedSliderFraction-response)))
  "Returns md5sum for a message object of type 'SetSpeedSliderFraction-response"
  "172aeb6c49379a44cf68480fa5bfad3c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetSpeedSliderFraction-response>)))
  "Returns full string definition for message of type '<SetSpeedSliderFraction-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetSpeedSliderFraction-response)))
  "Returns full string definition for message of type 'SetSpeedSliderFraction-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetSpeedSliderFraction-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetSpeedSliderFraction-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetSpeedSliderFraction-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetSpeedSliderFraction)))
  'SetSpeedSliderFraction-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetSpeedSliderFraction)))
  'SetSpeedSliderFraction-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetSpeedSliderFraction)))
  "Returns string type for a service object of type '<SetSpeedSliderFraction>"
  "ur_msgs/SetSpeedSliderFraction")