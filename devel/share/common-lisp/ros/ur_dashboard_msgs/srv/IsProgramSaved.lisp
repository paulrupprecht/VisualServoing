; Auto-generated. Do not edit!


(cl:in-package ur_dashboard_msgs-srv)


;//! \htmlinclude IsProgramSaved-request.msg.html

(cl:defclass <IsProgramSaved-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass IsProgramSaved-request (<IsProgramSaved-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IsProgramSaved-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IsProgramSaved-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_dashboard_msgs-srv:<IsProgramSaved-request> is deprecated: use ur_dashboard_msgs-srv:IsProgramSaved-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IsProgramSaved-request>) ostream)
  "Serializes a message object of type '<IsProgramSaved-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IsProgramSaved-request>) istream)
  "Deserializes a message object of type '<IsProgramSaved-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IsProgramSaved-request>)))
  "Returns string type for a service object of type '<IsProgramSaved-request>"
  "ur_dashboard_msgs/IsProgramSavedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsProgramSaved-request)))
  "Returns string type for a service object of type 'IsProgramSaved-request"
  "ur_dashboard_msgs/IsProgramSavedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IsProgramSaved-request>)))
  "Returns md5sum for a message object of type '<IsProgramSaved-request>"
  "e922e4e4f5e4157c23417860c8b2336a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IsProgramSaved-request)))
  "Returns md5sum for a message object of type 'IsProgramSaved-request"
  "e922e4e4f5e4157c23417860c8b2336a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IsProgramSaved-request>)))
  "Returns full string definition for message of type '<IsProgramSaved-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IsProgramSaved-request)))
  "Returns full string definition for message of type 'IsProgramSaved-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IsProgramSaved-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IsProgramSaved-request>))
  "Converts a ROS message object to a list"
  (cl:list 'IsProgramSaved-request
))
;//! \htmlinclude IsProgramSaved-response.msg.html

(cl:defclass <IsProgramSaved-response> (roslisp-msg-protocol:ros-message)
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
   (program_saved
    :reader program_saved
    :initarg :program_saved
    :type cl:boolean
    :initform cl:nil)
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass IsProgramSaved-response (<IsProgramSaved-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IsProgramSaved-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IsProgramSaved-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_dashboard_msgs-srv:<IsProgramSaved-response> is deprecated: use ur_dashboard_msgs-srv:IsProgramSaved-response instead.")))

(cl:ensure-generic-function 'answer-val :lambda-list '(m))
(cl:defmethod answer-val ((m <IsProgramSaved-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_dashboard_msgs-srv:answer-val is deprecated.  Use ur_dashboard_msgs-srv:answer instead.")
  (answer m))

(cl:ensure-generic-function 'program_name-val :lambda-list '(m))
(cl:defmethod program_name-val ((m <IsProgramSaved-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_dashboard_msgs-srv:program_name-val is deprecated.  Use ur_dashboard_msgs-srv:program_name instead.")
  (program_name m))

(cl:ensure-generic-function 'program_saved-val :lambda-list '(m))
(cl:defmethod program_saved-val ((m <IsProgramSaved-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_dashboard_msgs-srv:program_saved-val is deprecated.  Use ur_dashboard_msgs-srv:program_saved instead.")
  (program_saved m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <IsProgramSaved-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_dashboard_msgs-srv:success-val is deprecated.  Use ur_dashboard_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IsProgramSaved-response>) ostream)
  "Serializes a message object of type '<IsProgramSaved-response>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'program_saved) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IsProgramSaved-response>) istream)
  "Deserializes a message object of type '<IsProgramSaved-response>"
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
    (cl:setf (cl:slot-value msg 'program_saved) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IsProgramSaved-response>)))
  "Returns string type for a service object of type '<IsProgramSaved-response>"
  "ur_dashboard_msgs/IsProgramSavedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsProgramSaved-response)))
  "Returns string type for a service object of type 'IsProgramSaved-response"
  "ur_dashboard_msgs/IsProgramSavedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IsProgramSaved-response>)))
  "Returns md5sum for a message object of type '<IsProgramSaved-response>"
  "e922e4e4f5e4157c23417860c8b2336a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IsProgramSaved-response)))
  "Returns md5sum for a message object of type 'IsProgramSaved-response"
  "e922e4e4f5e4157c23417860c8b2336a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IsProgramSaved-response>)))
  "Returns full string definition for message of type '<IsProgramSaved-response>"
  (cl:format cl:nil "string answer~%string program_name~%bool program_saved~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IsProgramSaved-response)))
  "Returns full string definition for message of type 'IsProgramSaved-response"
  (cl:format cl:nil "string answer~%string program_name~%bool program_saved~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IsProgramSaved-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'answer))
     4 (cl:length (cl:slot-value msg 'program_name))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IsProgramSaved-response>))
  "Converts a ROS message object to a list"
  (cl:list 'IsProgramSaved-response
    (cl:cons ':answer (answer msg))
    (cl:cons ':program_name (program_name msg))
    (cl:cons ':program_saved (program_saved msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'IsProgramSaved)))
  'IsProgramSaved-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'IsProgramSaved)))
  'IsProgramSaved-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsProgramSaved)))
  "Returns string type for a service object of type '<IsProgramSaved>"
  "ur_dashboard_msgs/IsProgramSaved")