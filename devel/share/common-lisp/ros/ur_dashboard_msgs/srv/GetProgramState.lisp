; Auto-generated. Do not edit!


(cl:in-package ur_dashboard_msgs-srv)


;//! \htmlinclude GetProgramState-request.msg.html

(cl:defclass <GetProgramState-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetProgramState-request (<GetProgramState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetProgramState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetProgramState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_dashboard_msgs-srv:<GetProgramState-request> is deprecated: use ur_dashboard_msgs-srv:GetProgramState-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetProgramState-request>) ostream)
  "Serializes a message object of type '<GetProgramState-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetProgramState-request>) istream)
  "Deserializes a message object of type '<GetProgramState-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetProgramState-request>)))
  "Returns string type for a service object of type '<GetProgramState-request>"
  "ur_dashboard_msgs/GetProgramStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetProgramState-request)))
  "Returns string type for a service object of type 'GetProgramState-request"
  "ur_dashboard_msgs/GetProgramStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetProgramState-request>)))
  "Returns md5sum for a message object of type '<GetProgramState-request>"
  "522d35a6f2ebd9702cb1e33489e1aa96")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetProgramState-request)))
  "Returns md5sum for a message object of type 'GetProgramState-request"
  "522d35a6f2ebd9702cb1e33489e1aa96")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetProgramState-request>)))
  "Returns full string definition for message of type '<GetProgramState-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetProgramState-request)))
  "Returns full string definition for message of type 'GetProgramState-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetProgramState-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetProgramState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetProgramState-request
))
;//! \htmlinclude GetProgramState-response.msg.html

(cl:defclass <GetProgramState-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type ur_dashboard_msgs-msg:ProgramState
    :initform (cl:make-instance 'ur_dashboard_msgs-msg:ProgramState))
   (program_name
    :reader program_name
    :initarg :program_name
    :type cl:string
    :initform "")
   (answer
    :reader answer
    :initarg :answer
    :type cl:string
    :initform "")
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetProgramState-response (<GetProgramState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetProgramState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetProgramState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_dashboard_msgs-srv:<GetProgramState-response> is deprecated: use ur_dashboard_msgs-srv:GetProgramState-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <GetProgramState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_dashboard_msgs-srv:state-val is deprecated.  Use ur_dashboard_msgs-srv:state instead.")
  (state m))

(cl:ensure-generic-function 'program_name-val :lambda-list '(m))
(cl:defmethod program_name-val ((m <GetProgramState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_dashboard_msgs-srv:program_name-val is deprecated.  Use ur_dashboard_msgs-srv:program_name instead.")
  (program_name m))

(cl:ensure-generic-function 'answer-val :lambda-list '(m))
(cl:defmethod answer-val ((m <GetProgramState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_dashboard_msgs-srv:answer-val is deprecated.  Use ur_dashboard_msgs-srv:answer instead.")
  (answer m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetProgramState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_dashboard_msgs-srv:success-val is deprecated.  Use ur_dashboard_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetProgramState-response>) ostream)
  "Serializes a message object of type '<GetProgramState-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'program_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'program_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'answer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'answer))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetProgramState-response>) istream)
  "Deserializes a message object of type '<GetProgramState-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'program_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'program_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'answer) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'answer) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetProgramState-response>)))
  "Returns string type for a service object of type '<GetProgramState-response>"
  "ur_dashboard_msgs/GetProgramStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetProgramState-response)))
  "Returns string type for a service object of type 'GetProgramState-response"
  "ur_dashboard_msgs/GetProgramStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetProgramState-response>)))
  "Returns md5sum for a message object of type '<GetProgramState-response>"
  "522d35a6f2ebd9702cb1e33489e1aa96")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetProgramState-response)))
  "Returns md5sum for a message object of type 'GetProgramState-response"
  "522d35a6f2ebd9702cb1e33489e1aa96")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetProgramState-response>)))
  "Returns full string definition for message of type '<GetProgramState-response>"
  (cl:format cl:nil "ProgramState state~%string program_name~%string answer~%bool success~%~%~%================================================================================~%MSG: ur_dashboard_msgs/ProgramState~%string STOPPED=STOPPED~%string PLAYING=PLAYING~%string PAUSED=PAUSED~%~%string state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetProgramState-response)))
  "Returns full string definition for message of type 'GetProgramState-response"
  (cl:format cl:nil "ProgramState state~%string program_name~%string answer~%bool success~%~%~%================================================================================~%MSG: ur_dashboard_msgs/ProgramState~%string STOPPED=STOPPED~%string PLAYING=PLAYING~%string PAUSED=PAUSED~%~%string state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetProgramState-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
     4 (cl:length (cl:slot-value msg 'program_name))
     4 (cl:length (cl:slot-value msg 'answer))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetProgramState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetProgramState-response
    (cl:cons ':state (state msg))
    (cl:cons ':program_name (program_name msg))
    (cl:cons ':answer (answer msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetProgramState)))
  'GetProgramState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetProgramState)))
  'GetProgramState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetProgramState)))
  "Returns string type for a service object of type '<GetProgramState>"
  "ur_dashboard_msgs/GetProgramState")