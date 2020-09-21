; Auto-generated. Do not edit!


(cl:in-package gazebo_msgs-srv)


;//! \htmlinclude SetLightProperties-request.msg.html

(cl:defclass <SetLightProperties-request> (roslisp-msg-protocol:ros-message)
  ((light_name
    :reader light_name
    :initarg :light_name
    :type cl:string
    :initform "")
   (diffuse
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
    :initform 0.0))
)

(cl:defclass SetLightProperties-request (<SetLightProperties-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLightProperties-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLightProperties-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<SetLightProperties-request> is deprecated: use gazebo_msgs-srv:SetLightProperties-request instead.")))

(cl:ensure-generic-function 'light_name-val :lambda-list '(m))
(cl:defmethod light_name-val ((m <SetLightProperties-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:light_name-val is deprecated.  Use gazebo_msgs-srv:light_name instead.")
  (light_name m))

(cl:ensure-generic-function 'diffuse-val :lambda-list '(m))
(cl:defmethod diffuse-val ((m <SetLightProperties-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:diffuse-val is deprecated.  Use gazebo_msgs-srv:diffuse instead.")
  (diffuse m))

(cl:ensure-generic-function 'attenuation_constant-val :lambda-list '(m))
(cl:defmethod attenuation_constant-val ((m <SetLightProperties-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:attenuation_constant-val is deprecated.  Use gazebo_msgs-srv:attenuation_constant instead.")
  (attenuation_constant m))

(cl:ensure-generic-function 'attenuation_linear-val :lambda-list '(m))
(cl:defmethod attenuation_linear-val ((m <SetLightProperties-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:attenuation_linear-val is deprecated.  Use gazebo_msgs-srv:attenuation_linear instead.")
  (attenuation_linear m))

(cl:ensure-generic-function 'attenuation_quadratic-val :lambda-list '(m))
(cl:defmethod attenuation_quadratic-val ((m <SetLightProperties-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:attenuation_quadratic-val is deprecated.  Use gazebo_msgs-srv:attenuation_quadratic instead.")
  (attenuation_quadratic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLightProperties-request>) ostream)
  "Serializes a message object of type '<SetLightProperties-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'light_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'light_name))
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLightProperties-request>) istream)
  "Deserializes a message object of type '<SetLightProperties-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'light_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'light_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLightProperties-request>)))
  "Returns string type for a service object of type '<SetLightProperties-request>"
  "gazebo_msgs/SetLightPropertiesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLightProperties-request)))
  "Returns string type for a service object of type 'SetLightProperties-request"
  "gazebo_msgs/SetLightPropertiesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLightProperties-request>)))
  "Returns md5sum for a message object of type '<SetLightProperties-request>"
  "cd58c48ac21e5165abf13bcaa9c079b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLightProperties-request)))
  "Returns md5sum for a message object of type 'SetLightProperties-request"
  "cd58c48ac21e5165abf13bcaa9c079b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLightProperties-request>)))
  "Returns full string definition for message of type '<SetLightProperties-request>"
  (cl:format cl:nil "string light_name~%std_msgs/ColorRGBA diffuse~%float64 attenuation_constant~%float64 attenuation_linear~%float64 attenuation_quadratic~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLightProperties-request)))
  "Returns full string definition for message of type 'SetLightProperties-request"
  (cl:format cl:nil "string light_name~%std_msgs/ColorRGBA diffuse~%float64 attenuation_constant~%float64 attenuation_linear~%float64 attenuation_quadratic~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLightProperties-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'light_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'diffuse))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLightProperties-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLightProperties-request
    (cl:cons ':light_name (light_name msg))
    (cl:cons ':diffuse (diffuse msg))
    (cl:cons ':attenuation_constant (attenuation_constant msg))
    (cl:cons ':attenuation_linear (attenuation_linear msg))
    (cl:cons ':attenuation_quadratic (attenuation_quadratic msg))
))
;//! \htmlinclude SetLightProperties-response.msg.html

(cl:defclass <SetLightProperties-response> (roslisp-msg-protocol:ros-message)
  ((success
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

(cl:defclass SetLightProperties-response (<SetLightProperties-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLightProperties-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLightProperties-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<SetLightProperties-response> is deprecated: use gazebo_msgs-srv:SetLightProperties-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetLightProperties-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:success-val is deprecated.  Use gazebo_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'status_message-val :lambda-list '(m))
(cl:defmethod status_message-val ((m <SetLightProperties-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:status_message-val is deprecated.  Use gazebo_msgs-srv:status_message instead.")
  (status_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLightProperties-response>) ostream)
  "Serializes a message object of type '<SetLightProperties-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLightProperties-response>) istream)
  "Deserializes a message object of type '<SetLightProperties-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLightProperties-response>)))
  "Returns string type for a service object of type '<SetLightProperties-response>"
  "gazebo_msgs/SetLightPropertiesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLightProperties-response)))
  "Returns string type for a service object of type 'SetLightProperties-response"
  "gazebo_msgs/SetLightPropertiesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLightProperties-response>)))
  "Returns md5sum for a message object of type '<SetLightProperties-response>"
  "cd58c48ac21e5165abf13bcaa9c079b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLightProperties-response)))
  "Returns md5sum for a message object of type 'SetLightProperties-response"
  "cd58c48ac21e5165abf13bcaa9c079b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLightProperties-response>)))
  "Returns full string definition for message of type '<SetLightProperties-response>"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLightProperties-response)))
  "Returns full string definition for message of type 'SetLightProperties-response"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLightProperties-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'status_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLightProperties-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLightProperties-response
    (cl:cons ':success (success msg))
    (cl:cons ':status_message (status_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetLightProperties)))
  'SetLightProperties-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetLightProperties)))
  'SetLightProperties-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLightProperties)))
  "Returns string type for a service object of type '<SetLightProperties>"
  "gazebo_msgs/SetLightProperties")