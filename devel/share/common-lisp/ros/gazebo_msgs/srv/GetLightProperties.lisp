; Auto-generated. Do not edit!


(cl:in-package gazebo_msgs-srv)


;//! \htmlinclude GetLightProperties-request.msg.html

(cl:defclass <GetLightProperties-request> (roslisp-msg-protocol:ros-message)
  ((light_name
    :reader light_name
    :initarg :light_name
    :type cl:string
    :initform ""))
)

(cl:defclass GetLightProperties-request (<GetLightProperties-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLightProperties-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLightProperties-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<GetLightProperties-request> is deprecated: use gazebo_msgs-srv:GetLightProperties-request instead.")))

(cl:ensure-generic-function 'light_name-val :lambda-list '(m))
(cl:defmethod light_name-val ((m <GetLightProperties-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:light_name-val is deprecated.  Use gazebo_msgs-srv:light_name instead.")
  (light_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLightProperties-request>) ostream)
  "Serializes a message object of type '<GetLightProperties-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'light_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'light_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLightProperties-request>) istream)
  "Deserializes a message object of type '<GetLightProperties-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'light_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'light_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLightProperties-request>)))
  "Returns string type for a service object of type '<GetLightProperties-request>"
  "gazebo_msgs/GetLightPropertiesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLightProperties-request)))
  "Returns string type for a service object of type 'GetLightProperties-request"
  "gazebo_msgs/GetLightPropertiesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLightProperties-request>)))
  "Returns md5sum for a message object of type '<GetLightProperties-request>"
  "df2cef87e13e2e6990e81e8aaa454c19")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLightProperties-request)))
  "Returns md5sum for a message object of type 'GetLightProperties-request"
  "df2cef87e13e2e6990e81e8aaa454c19")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLightProperties-request>)))
  "Returns full string definition for message of type '<GetLightProperties-request>"
  (cl:format cl:nil "string light_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLightProperties-request)))
  "Returns full string definition for message of type 'GetLightProperties-request"
  (cl:format cl:nil "string light_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLightProperties-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'light_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLightProperties-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLightProperties-request
    (cl:cons ':light_name (light_name msg))
))
;//! \htmlinclude GetLightProperties-response.msg.html

(cl:defclass <GetLightProperties-response> (roslisp-msg-protocol:ros-message)
  ((diffuse
    :reader diffuse
    :initarg :diffuse
    :type std_msgs-msg:ColorRGBA
    :initform (cl:make-instance 'std_msgs-msg:ColorRGBA))
   (attenuation_constant
    :reader attenuation_constant
    :initarg :attenuation_constant
    :type cl:float
    :initform 0.0)
   (attenuation_linear
    :reader attenuation_linear
    :initarg :attenuation_linear
    :type cl:float
    :initform 0.0)
   (attenuation_quadratic
    :reader attenuation_quadratic
    :initarg :attenuation_quadratic
    :type cl:float
    :initform 0.0)
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (status_message
    :reader status_message
    :initarg :status_message
    :type cl:string
    :initform ""))
)

(cl:defclass GetLightProperties-response (<GetLightProperties-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLightProperties-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLightProperties-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<GetLightProperties-response> is deprecated: use gazebo_msgs-srv:GetLightProperties-response instead.")))

(cl:ensure-generic-function 'diffuse-val :lambda-list '(m))
(cl:defmethod diffuse-val ((m <GetLightProperties-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:diffuse-val is deprecated.  Use gazebo_msgs-srv:diffuse instead.")
  (diffuse m))

(cl:ensure-generic-function 'attenuation_constant-val :lambda-list '(m))
(cl:defmethod attenuation_constant-val ((m <GetLightProperties-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:attenuation_constant-val is deprecated.  Use gazebo_msgs-srv:attenuation_constant instead.")
  (attenuation_constant m))

(cl:ensure-generic-function 'attenuation_linear-val :lambda-list '(m))
(cl:defmethod attenuation_linear-val ((m <GetLightProperties-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:attenuation_linear-val is deprecated.  Use gazebo_msgs-srv:attenuation_linear instead.")
  (attenuation_linear m))

(cl:ensure-generic-function 'attenuation_quadratic-val :lambda-list '(m))
(cl:defmethod attenuation_quadratic-val ((m <GetLightProperties-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:attenuation_quadratic-val is deprecated.  Use gazebo_msgs-srv:attenuation_quadratic instead.")
  (attenuation_quadratic m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetLightProperties-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:success-val is deprecated.  Use gazebo_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'status_message-val :lambda-list '(m))
(cl:defmethod status_message-val ((m <GetLightProperties-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:status_message-val is deprecated.  Use gazebo_msgs-srv:status_message instead.")
  (status_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLightProperties-response>) ostream)
  "Serializes a message object of type '<GetLightProperties-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'diffuse) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'attenuation_constant))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'attenuation_linear))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'attenuation_quadratic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLightProperties-response>) istream)
  "Deserializes a message object of type '<GetLightProperties-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'diffuse) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'attenuation_constant) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'attenuation_linear) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'attenuation_quadratic) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLightProperties-response>)))
  "Returns string type for a service object of type '<GetLightProperties-response>"
  "gazebo_msgs/GetLightPropertiesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLightProperties-response)))
  "Returns string type for a service object of type 'GetLightProperties-response"
  "gazebo_msgs/GetLightPropertiesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLightProperties-response>)))
  "Returns md5sum for a message object of type '<GetLightProperties-response>"
  "df2cef87e13e2e6990e81e8aaa454c19")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLightProperties-response)))
  "Returns md5sum for a message object of type 'GetLightProperties-response"
  "df2cef87e13e2e6990e81e8aaa454c19")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLightProperties-response>)))
  "Returns full string definition for message of type '<GetLightProperties-response>"
  (cl:format cl:nil "std_msgs/ColorRGBA diffuse~%float64 attenuation_constant~%float64 attenuation_linear~%float64 attenuation_quadratic~%bool success~%string status_message~%~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLightProperties-response)))
  "Returns full string definition for message of type 'GetLightProperties-response"
  (cl:format cl:nil "std_msgs/ColorRGBA diffuse~%float64 attenuation_constant~%float64 attenuation_linear~%float64 attenuation_quadratic~%bool success~%string status_message~%~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLightProperties-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'diffuse))
     8
     8
     8
     1
     4 (cl:length (cl:slot-value msg 'status_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLightProperties-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLightProperties-response
    (cl:cons ':diffuse (diffuse msg))
    (cl:cons ':attenuation_constant (attenuation_constant msg))
    (cl:cons ':attenuation_linear (attenuation_linear msg))
    (cl:cons ':attenuation_quadratic (attenuation_quadratic msg))
    (cl:cons ':success (success msg))
    (cl:cons ':status_message (status_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetLightProperties)))
  'GetLightProperties-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetLightProperties)))
  'GetLightProperties-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLightProperties)))
  "Returns string type for a service object of type '<GetLightProperties>"
  "gazebo_msgs/GetLightProperties")