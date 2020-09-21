; Auto-generated. Do not edit!


(cl:in-package gazebo_msgs-srv)


;//! \htmlinclude GetLinkState-request.msg.html

(cl:defclass <GetLinkState-request> (roslisp-msg-protocol:ros-message)
  ((link_name
    :reader link_name
    :initarg :link_name
    :type cl:string
    :initform "")
   (reference_frame
    :reader reference_frame
    :initarg :reference_frame
    :type cl:string
    :initform ""))
)

(cl:defclass GetLinkState-request (<GetLinkState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLinkState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLinkState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<GetLinkState-request> is deprecated: use gazebo_msgs-srv:GetLinkState-request instead.")))

(cl:ensure-generic-function 'link_name-val :lambda-list '(m))
(cl:defmethod link_name-val ((m <GetLinkState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:link_name-val is deprecated.  Use gazebo_msgs-srv:link_name instead.")
  (link_name m))

(cl:ensure-generic-function 'reference_frame-val :lambda-list '(m))
(cl:defmethod reference_frame-val ((m <GetLinkState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:reference_frame-val is deprecated.  Use gazebo_msgs-srv:reference_frame instead.")
  (reference_frame m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLinkState-request>) ostream)
  "Serializes a message object of type '<GetLinkState-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'link_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'link_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reference_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reference_frame))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLinkState-request>) istream)
  "Deserializes a message object of type '<GetLinkState-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'link_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'link_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reference_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reference_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLinkState-request>)))
  "Returns string type for a service object of type '<GetLinkState-request>"
  "gazebo_msgs/GetLinkStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLinkState-request)))
  "Returns string type for a service object of type 'GetLinkState-request"
  "gazebo_msgs/GetLinkStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLinkState-request>)))
  "Returns md5sum for a message object of type '<GetLinkState-request>"
  "09d6c98cce97b35f7ab9bd70300657ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLinkState-request)))
  "Returns md5sum for a message object of type 'GetLinkState-request"
  "09d6c98cce97b35f7ab9bd70300657ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLinkState-request>)))
  "Returns full string definition for message of type '<GetLinkState-request>"
  (cl:format cl:nil "string link_name~%~%string reference_frame~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLinkState-request)))
  "Returns full string definition for message of type 'GetLinkState-request"
  (cl:format cl:nil "string link_name~%~%string reference_frame~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLinkState-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'link_name))
     4 (cl:length (cl:slot-value msg 'reference_frame))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLinkState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLinkState-request
    (cl:cons ':link_name (link_name msg))
    (cl:cons ':reference_frame (reference_frame msg))
))
;//! \htmlinclude GetLinkState-response.msg.html

(cl:defclass <GetLinkState-response> (roslisp-msg-protocol:ros-message)
  ((link_state
    :reader link_state
    :initarg :link_state
    :type gazebo_msgs-msg:LinkState
    :initform (cl:make-instance 'gazebo_msgs-msg:LinkState))
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

(cl:defclass GetLinkState-response (<GetLinkState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLinkState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLinkState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<GetLinkState-response> is deprecated: use gazebo_msgs-srv:GetLinkState-response instead.")))

(cl:ensure-generic-function 'link_state-val :lambda-list '(m))
(cl:defmethod link_state-val ((m <GetLinkState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:link_state-val is deprecated.  Use gazebo_msgs-srv:link_state instead.")
  (link_state m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetLinkState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:success-val is deprecated.  Use gazebo_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'status_message-val :lambda-list '(m))
(cl:defmethod status_message-val ((m <GetLinkState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:status_message-val is deprecated.  Use gazebo_msgs-srv:status_message instead.")
  (status_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLinkState-response>) ostream)
  "Serializes a message object of type '<GetLinkState-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'link_state) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLinkState-response>) istream)
  "Deserializes a message object of type '<GetLinkState-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'link_state) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLinkState-response>)))
  "Returns string type for a service object of type '<GetLinkState-response>"
  "gazebo_msgs/GetLinkStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLinkState-response)))
  "Returns string type for a service object of type 'GetLinkState-response"
  "gazebo_msgs/GetLinkStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLinkState-response>)))
  "Returns md5sum for a message object of type '<GetLinkState-response>"
  "09d6c98cce97b35f7ab9bd70300657ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLinkState-response)))
  "Returns md5sum for a message object of type 'GetLinkState-response"
  "09d6c98cce97b35f7ab9bd70300657ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLinkState-response>)))
  "Returns full string definition for message of type '<GetLinkState-response>"
  (cl:format cl:nil "gazebo_msgs/LinkState link_state~%bool success~%string status_message~%~%~%================================================================================~%MSG: gazebo_msgs/LinkState~%# @todo: FIXME: sets pose and twist of a link.  All children link poses/twists of the URDF tree are not updated accordingly, but should be.~%string link_name            # link name, link_names are in gazebo scoped name notation, [model_name::body_name]~%geometry_msgs/Pose pose     # desired pose in reference frame~%geometry_msgs/Twist twist   # desired twist in reference frame~%string reference_frame      # set pose/twist relative to the frame of this link/body~%                            # leave empty or \"world\" or \"map\" defaults to world-frame~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLinkState-response)))
  "Returns full string definition for message of type 'GetLinkState-response"
  (cl:format cl:nil "gazebo_msgs/LinkState link_state~%bool success~%string status_message~%~%~%================================================================================~%MSG: gazebo_msgs/LinkState~%# @todo: FIXME: sets pose and twist of a link.  All children link poses/twists of the URDF tree are not updated accordingly, but should be.~%string link_name            # link name, link_names are in gazebo scoped name notation, [model_name::body_name]~%geometry_msgs/Pose pose     # desired pose in reference frame~%geometry_msgs/Twist twist   # desired twist in reference frame~%string reference_frame      # set pose/twist relative to the frame of this link/body~%                            # leave empty or \"world\" or \"map\" defaults to world-frame~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLinkState-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'link_state))
     1
     4 (cl:length (cl:slot-value msg 'status_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLinkState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLinkState-response
    (cl:cons ':link_state (link_state msg))
    (cl:cons ':success (success msg))
    (cl:cons ':status_message (status_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetLinkState)))
  'GetLinkState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetLinkState)))
  'GetLinkState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLinkState)))
  "Returns string type for a service object of type '<GetLinkState>"
  "gazebo_msgs/GetLinkState")