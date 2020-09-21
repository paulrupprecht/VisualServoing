; Auto-generated. Do not edit!


(cl:in-package ur_dashboard_msgs-srv)


;//! \htmlinclude GetLoadedProgram-request.msg.html

(cl:defclass <GetLoadedProgram-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetLoadedProgram-request (<GetLoadedProgram-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLoadedProgram-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLoadedProgram-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_dashboard_msgs-srv:<GetLoadedProgram-request> is deprecated: use ur_dashboard_msgs-srv:GetLoadedProgram-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLoadedProgram-request>) ostream)
  "Serializes a message object of type '<GetLoadedProgram-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLoadedProgram-request>) istream)
  "Deserializes a message object of type '<GetLoadedProgram-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLoadedProgram-request>)))
  "Returns string type for a service object of type '<GetLoadedProgram-request>"
  "ur_dashboard_msgs/GetLoadedProgramRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLoadedProgram-request)))
  "Returns string type for a service object of type 'GetLoadedProgram-request"
  "ur_dashboard_msgs/GetLoadedProgramRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLoadedProgram-request>)))
  "Returns md5sum for a message object of type '<GetLoadedProgram-request>"
  "0193dad3cdb834b9f37e420a88468ebe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLoadedProgram-request)))
  "Returns md5sum for a message object of type 'GetLoadedProgram-request"
  "0193dad3cdb834b9f37e420a88468ebe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLoadedProgram-request>)))
  "Returns full string definition for message of type '<GetLoadedProgram-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLoadedProgram-request)))
  "Returns full string definition for message of type 'GetLoadedProgram-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLoadedProgram-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLoadedProgram-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLoadedProgram-request
))
;//! \htmlinclude GetLoadedProgram-response.msg.html

(cl:defclass <GetLoadedProgram-response> (roslisp-msg-protocol:ros-message)
  ((answer
    :reader answer
    :initarg :answer
    :type cl:string
    :initform "")
   (program_name
    :reader program_name
    :initarg :program_name
    :type cl:string
    :initform "")
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetLoadedProgram-response (<GetLoadedProgram-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLoadedProgram-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLoadedProgram-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_dashboard_msgs-srv:<GetLoadedProgram-response> is deprecated: use ur_dashboard_msgs-srv:GetLoadedProgram-response instead.")))

(cl:ensure-generic-function 'answer-val :lambda-list '(m))
(cl:defmethod answer-val ((m <GetLoadedProgram-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_dashboard_msgs-srv:answer-val is deprecated.  Use ur_dashboard_msgs-srv:answer instead.")
  (answer m))

(cl:ensure-generic-function 'program_name-val :lambda-list '(m))
(cl:defmethod program_name-val ((m <GetLoadedProgram-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_dashboard_msgs-srv:program_name-val is deprecated.  Use ur_dashboard_msgs-srv:program_name instead.")
  (program_name m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetLoadedProgram-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_dashboard_msgs-srv:success-val is deprecated.  Use ur_dashboard_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLoadedProgram-response>) ostream)
  "Serializes a message object of type '<GetLoadedProgram-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'answer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'answer))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'program_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'program_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLoadedProgram-response>) istream)
  "Deserializes a message object of type '<GetLoadedProgram-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'answer) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'answer) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'program_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'program_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLoadedProgram-response>)))
  "Returns string type for a service object of type '<GetLoadedProgram-response>"
  "ur_dashboard_msgs/GetLoadedProgramResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLoadedProgram-response)))
  "Returns string type for a service object of type 'GetLoadedProgram-response"
  "ur_dashboard_msgs/GetLoadedProgramResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLoadedProgram-response>)))
  "Returns md5sum for a message object of type '<GetLoadedProgram-response>"
  "0193dad3cdb834b9f37e420a88468ebe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLoadedProgram-response)))
  "Returns md5sum for a message object of type 'GetLoadedProgram-response"
  "0193dad3cdb834b9f37e420a88468ebe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLoadedProgram-response>)))
  "Returns full string definition for message of type '<GetLoadedProgram-response>"
  (cl:format cl:nil "string answer~%string program_name~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLoadedProgram-response)))
  "Returns full string definition for message of type 'GetLoadedProgram-response"
  (cl:format cl:nil "string answer~%string program_name~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLoadedProgram-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'answer))
     4 (cl:length (cl:slot-value msg 'program_name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLoadedProgram-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLoadedProgram-response
    (cl:cons ':answer (answer msg))
    (cl:cons ':program_name (program_name msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetLoadedProgram)))
  'GetLoadedProgram-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetLoadedProgram)))
  'GetLoadedProgram-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLoadedProgram)))
  "Returns string type for a service object of type '<GetLoadedProgram>"
  "ur_dashboard_msgs/GetLoadedProgram")