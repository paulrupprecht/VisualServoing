; Auto-generated. Do not edit!


(cl:in-package gazebo_msgs-srv)


;//! \htmlinclude DeleteModel-request.msg.html

(cl:defclass <DeleteModel-request> (roslisp-msg-protocol:ros-message)
  ((model_name
    :reader model_name
    :initarg :model_name
    :type cl:string
    :initform ""))
)

(cl:defclass DeleteModel-request (<DeleteModel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteModel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteModel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<DeleteModel-request> is deprecated: use gazebo_msgs-srv:DeleteModel-request instead.")))

(cl:ensure-generic-function 'model_name-val :lambda-list '(m))
(cl:defmethod model_name-val ((m <DeleteModel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:model_name-val is deprecated.  Use gazebo_msgs-srv:model_name instead.")
  (model_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteModel-request>) ostream)
  "Serializes a message object of type '<DeleteModel-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'model_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'model_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteModel-request>) istream)
  "Deserializes a message object of type '<DeleteModel-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'model_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteModel-request>)))
  "Returns string type for a service object of type '<DeleteModel-request>"
  "gazebo_msgs/DeleteModelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteModel-request)))
  "Returns string type for a service object of type 'DeleteModel-request"
  "gazebo_msgs/DeleteModelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteModel-request>)))
  "Returns md5sum for a message object of type '<DeleteModel-request>"
  "9ce56b4e9e54616de25d796dc972a262")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteModel-request)))
  "Returns md5sum for a message object of type 'DeleteModel-request"
  "9ce56b4e9e54616de25d796dc972a262")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteModel-request>)))
  "Returns full string definition for message of type '<DeleteModel-request>"
  (cl:format cl:nil "string model_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteModel-request)))
  "Returns full string definition for message of type 'DeleteModel-request"
  (cl:format cl:nil "string model_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteModel-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'model_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteModel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteModel-request
    (cl:cons ':model_name (model_name msg))
))
;//! \htmlinclude DeleteModel-response.msg.html

(cl:defclass <DeleteModel-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass DeleteModel-response (<DeleteModel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteModel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteModel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<DeleteModel-response> is deprecated: use gazebo_msgs-srv:DeleteModel-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DeleteModel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:success-val is deprecated.  Use gazebo_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'status_message-val :lambda-list '(m))
(cl:defmethod status_message-val ((m <DeleteModel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:status_message-val is deprecated.  Use gazebo_msgs-srv:status_message instead.")
  (status_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteModel-response>) ostream)
  "Serializes a message object of type '<DeleteModel-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteModel-response>) istream)
  "Deserializes a message object of type '<DeleteModel-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteModel-response>)))
  "Returns string type for a service object of type '<DeleteModel-response>"
  "gazebo_msgs/DeleteModelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteModel-response)))
  "Returns string type for a service object of type 'DeleteModel-response"
  "gazebo_msgs/DeleteModelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteModel-response>)))
  "Returns md5sum for a message object of type '<DeleteModel-response>"
  "9ce56b4e9e54616de25d796dc972a262")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteModel-response)))
  "Returns md5sum for a message object of type 'DeleteModel-response"
  "9ce56b4e9e54616de25d796dc972a262")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteModel-response>)))
  "Returns full string definition for message of type '<DeleteModel-response>"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteModel-response)))
  "Returns full string definition for message of type 'DeleteModel-response"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteModel-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'status_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteModel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteModel-response
    (cl:cons ':success (success msg))
    (cl:cons ':status_message (status_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DeleteModel)))
  'DeleteModel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DeleteModel)))
  'DeleteModel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteModel)))
  "Returns string type for a service object of type '<DeleteModel>"
  "gazebo_msgs/DeleteModel")