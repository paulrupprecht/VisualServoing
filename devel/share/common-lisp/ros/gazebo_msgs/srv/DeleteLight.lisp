; Auto-generated. Do not edit!


(cl:in-package gazebo_msgs-srv)


;//! \htmlinclude DeleteLight-request.msg.html

(cl:defclass <DeleteLight-request> (roslisp-msg-protocol:ros-message)
  ((light_name
    :reader light_name
    :initarg :light_name
    :type cl:string
    :initform ""))
)

(cl:defclass DeleteLight-request (<DeleteLight-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteLight-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteLight-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<DeleteLight-request> is deprecated: use gazebo_msgs-srv:DeleteLight-request instead.")))

(cl:ensure-generic-function 'light_name-val :lambda-list '(m))
(cl:defmethod light_name-val ((m <DeleteLight-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:light_name-val is deprecated.  Use gazebo_msgs-srv:light_name instead.")
  (light_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteLight-request>) ostream)
  "Serializes a message object of type '<DeleteLight-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'light_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'light_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteLight-request>) istream)
  "Deserializes a message object of type '<DeleteLight-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteLight-request>)))
  "Returns string type for a service object of type '<DeleteLight-request>"
  "gazebo_msgs/DeleteLightRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteLight-request)))
  "Returns string type for a service object of type 'DeleteLight-request"
  "gazebo_msgs/DeleteLightRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteLight-request>)))
  "Returns md5sum for a message object of type '<DeleteLight-request>"
  "ae11ea8100d536d5b92c2b5917abf912")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteLight-request)))
  "Returns md5sum for a message object of type 'DeleteLight-request"
  "ae11ea8100d536d5b92c2b5917abf912")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteLight-request>)))
  "Returns full string definition for message of type '<DeleteLight-request>"
  (cl:format cl:nil "string light_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteLight-request)))
  "Returns full string definition for message of type 'DeleteLight-request"
  (cl:format cl:nil "string light_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteLight-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'light_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteLight-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteLight-request
    (cl:cons ':light_name (light_name msg))
))
;//! \htmlinclude DeleteLight-response.msg.html

(cl:defclass <DeleteLight-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass DeleteLight-response (<DeleteLight-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteLight-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteLight-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<DeleteLight-response> is deprecated: use gazebo_msgs-srv:DeleteLight-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DeleteLight-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:success-val is deprecated.  Use gazebo_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'status_message-val :lambda-list '(m))
(cl:defmethod status_message-val ((m <DeleteLight-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:status_message-val is deprecated.  Use gazebo_msgs-srv:status_message instead.")
  (status_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteLight-response>) ostream)
  "Serializes a message object of type '<DeleteLight-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteLight-response>) istream)
  "Deserializes a message object of type '<DeleteLight-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteLight-response>)))
  "Returns string type for a service object of type '<DeleteLight-response>"
  "gazebo_msgs/DeleteLightResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteLight-response)))
  "Returns string type for a service object of type 'DeleteLight-response"
  "gazebo_msgs/DeleteLightResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteLight-response>)))
  "Returns md5sum for a message object of type '<DeleteLight-response>"
  "ae11ea8100d536d5b92c2b5917abf912")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteLight-response)))
  "Returns md5sum for a message object of type 'DeleteLight-response"
  "ae11ea8100d536d5b92c2b5917abf912")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteLight-response>)))
  "Returns full string definition for message of type '<DeleteLight-response>"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteLight-response)))
  "Returns full string definition for message of type 'DeleteLight-response"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteLight-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'status_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteLight-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteLight-response
    (cl:cons ':success (success msg))
    (cl:cons ':status_message (status_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DeleteLight)))
  'DeleteLight-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DeleteLight)))
  'DeleteLight-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteLight)))
  "Returns string type for a service object of type '<DeleteLight>"
  "gazebo_msgs/DeleteLight")