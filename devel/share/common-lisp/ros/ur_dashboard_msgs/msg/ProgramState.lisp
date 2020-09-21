; Auto-generated. Do not edit!


(cl:in-package ur_dashboard_msgs-msg)


;//! \htmlinclude ProgramState.msg.html

(cl:defclass <ProgramState> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:string
    :initform ""))
)

(cl:defclass ProgramState (<ProgramState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProgramState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProgramState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_dashboard_msgs-msg:<ProgramState> is deprecated: use ur_dashboard_msgs-msg:ProgramState instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ProgramState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_dashboard_msgs-msg:state-val is deprecated.  Use ur_dashboard_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ProgramState>)))
    "Constants for message type '<ProgramState>"
  '((:STOPPED . STOPPED)
    (:PLAYING . PLAYING)
    (:PAUSED . PAUSED))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ProgramState)))
    "Constants for message type 'ProgramState"
  '((:STOPPED . STOPPED)
    (:PLAYING . PLAYING)
    (:PAUSED . PAUSED))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProgramState>) ostream)
  "Serializes a message object of type '<ProgramState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProgramState>) istream)
  "Deserializes a message object of type '<ProgramState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProgramState>)))
  "Returns string type for a message object of type '<ProgramState>"
  "ur_dashboard_msgs/ProgramState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProgramState)))
  "Returns string type for a message object of type 'ProgramState"
  "ur_dashboard_msgs/ProgramState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProgramState>)))
  "Returns md5sum for a message object of type '<ProgramState>"
  "0cf2a8b9397741f9e4ac8b71fd354966")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProgramState)))
  "Returns md5sum for a message object of type 'ProgramState"
  "0cf2a8b9397741f9e4ac8b71fd354966")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProgramState>)))
  "Returns full string definition for message of type '<ProgramState>"
  (cl:format cl:nil "string STOPPED=STOPPED~%string PLAYING=PLAYING~%string PAUSED=PAUSED~%~%string state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProgramState)))
  "Returns full string definition for message of type 'ProgramState"
  (cl:format cl:nil "string STOPPED=STOPPED~%string PLAYING=PLAYING~%string PAUSED=PAUSED~%~%string state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProgramState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProgramState>))
  "Converts a ROS message object to a list"
  (cl:list 'ProgramState
    (cl:cons ':state (state msg))
))
