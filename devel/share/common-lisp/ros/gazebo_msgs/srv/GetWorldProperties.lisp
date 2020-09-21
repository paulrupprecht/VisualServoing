; Auto-generated. Do not edit!


(cl:in-package gazebo_msgs-srv)


;//! \htmlinclude GetWorldProperties-request.msg.html

(cl:defclass <GetWorldProperties-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetWorldProperties-request (<GetWorldProperties-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWorldProperties-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWorldProperties-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<GetWorldProperties-request> is deprecated: use gazebo_msgs-srv:GetWorldProperties-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWorldProperties-request>) ostream)
  "Serializes a message object of type '<GetWorldProperties-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWorldProperties-request>) istream)
  "Deserializes a message object of type '<GetWorldProperties-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWorldProperties-request>)))
  "Returns string type for a service object of type '<GetWorldProperties-request>"
  "gazebo_msgs/GetWorldPropertiesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWorldProperties-request)))
  "Returns string type for a service object of type 'GetWorldProperties-request"
  "gazebo_msgs/GetWorldPropertiesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWorldProperties-request>)))
  "Returns md5sum for a message object of type '<GetWorldProperties-request>"
  "36bb0f2eccf4d8be971410c22818ba3f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWorldProperties-request)))
  "Returns md5sum for a message object of type 'GetWorldProperties-request"
  "36bb0f2eccf4d8be971410c22818ba3f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWorldProperties-request>)))
  "Returns full string definition for message of type '<GetWorldProperties-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWorldProperties-request)))
  "Returns full string definition for message of type 'GetWorldProperties-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWorldProperties-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWorldProperties-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWorldProperties-request
))
;//! \htmlinclude GetWorldProperties-response.msg.html

(cl:defclass <GetWorldProperties-response> (roslisp-msg-protocol:ros-message)
  ((sim_time
    :reader sim_time
    :initarg :sim_time
    :type cl:float
    :initform 0.0)
   (model_names
    :reader model_names
    :initarg :model_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (rendering_enabled
    :reader rendering_enabled
    :initarg :rendering_enabled
    :type cl:boolean
    :initform cl:nil)
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

(cl:defclass GetWorldProperties-response (<GetWorldProperties-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWorldProperties-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWorldProperties-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<GetWorldProperties-response> is deprecated: use gazebo_msgs-srv:GetWorldProperties-response instead.")))

(cl:ensure-generic-function 'sim_time-val :lambda-list '(m))
(cl:defmethod sim_time-val ((m <GetWorldProperties-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:sim_time-val is deprecated.  Use gazebo_msgs-srv:sim_time instead.")
  (sim_time m))

(cl:ensure-generic-function 'model_names-val :lambda-list '(m))
(cl:defmethod model_names-val ((m <GetWorldProperties-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:model_names-val is deprecated.  Use gazebo_msgs-srv:model_names instead.")
  (model_names m))

(cl:ensure-generic-function 'rendering_enabled-val :lambda-list '(m))
(cl:defmethod rendering_enabled-val ((m <GetWorldProperties-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:rendering_enabled-val is deprecated.  Use gazebo_msgs-srv:rendering_enabled instead.")
  (rendering_enabled m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetWorldProperties-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:success-val is deprecated.  Use gazebo_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'status_message-val :lambda-list '(m))
(cl:defmethod status_message-val ((m <GetWorldProperties-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:status_message-val is deprecated.  Use gazebo_msgs-srv:status_message instead.")
  (status_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWorldProperties-response>) ostream)
  "Serializes a message object of type '<GetWorldProperties-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'sim_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'model_names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'model_names))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rendering_enabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWorldProperties-response>) istream)
  "Deserializes a message object of type '<GetWorldProperties-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sim_time) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'model_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'model_names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:setf (cl:slot-value msg 'rendering_enabled) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWorldProperties-response>)))
  "Returns string type for a service object of type '<GetWorldProperties-response>"
  "gazebo_msgs/GetWorldPropertiesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWorldProperties-response)))
  "Returns string type for a service object of type 'GetWorldProperties-response"
  "gazebo_msgs/GetWorldPropertiesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWorldProperties-response>)))
  "Returns md5sum for a message object of type '<GetWorldProperties-response>"
  "36bb0f2eccf4d8be971410c22818ba3f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWorldProperties-response)))
  "Returns md5sum for a message object of type 'GetWorldProperties-response"
  "36bb0f2eccf4d8be971410c22818ba3f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWorldProperties-response>)))
  "Returns full string definition for message of type '<GetWorldProperties-response>"
  (cl:format cl:nil "float64 sim_time~%string[] model_names~%bool rendering_enabled~%bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWorldProperties-response)))
  "Returns full string definition for message of type 'GetWorldProperties-response"
  (cl:format cl:nil "float64 sim_time~%string[] model_names~%bool rendering_enabled~%bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWorldProperties-response>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'model_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     1
     1
     4 (cl:length (cl:slot-value msg 'status_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWorldProperties-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWorldProperties-response
    (cl:cons ':sim_time (sim_time msg))
    (cl:cons ':model_names (model_names msg))
    (cl:cons ':rendering_enabled (rendering_enabled msg))
    (cl:cons ':success (success msg))
    (cl:cons ':status_message (status_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetWorldProperties)))
  'GetWorldProperties-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetWorldProperties)))
  'GetWorldProperties-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWorldProperties)))
  "Returns string type for a service object of type '<GetWorldProperties>"
  "gazebo_msgs/GetWorldProperties")