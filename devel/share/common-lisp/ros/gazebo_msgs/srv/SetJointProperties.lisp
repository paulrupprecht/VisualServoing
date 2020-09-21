; Auto-generated. Do not edit!


(cl:in-package gazebo_msgs-srv)


;//! \htmlinclude SetJointProperties-request.msg.html

(cl:defclass <SetJointProperties-request> (roslisp-msg-protocol:ros-message)
  ((joint_name
    :reader joint_name
    :initarg :joint_name
    :type cl:string
    :initform "")
   (ode_joint_config
    :reader ode_joint_config
    :initarg :ode_joint_config
    :type gazebo_msgs-msg:ODEJointProperties
    :initform (cl:make-instance 'gazebo_msgs-msg:ODEJointProperties)))
)

(cl:defclass SetJointProperties-request (<SetJointProperties-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJointProperties-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJointProperties-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<SetJointProperties-request> is deprecated: use gazebo_msgs-srv:SetJointProperties-request instead.")))

(cl:ensure-generic-function 'joint_name-val :lambda-list '(m))
(cl:defmethod joint_name-val ((m <SetJointProperties-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:joint_name-val is deprecated.  Use gazebo_msgs-srv:joint_name instead.")
  (joint_name m))

(cl:ensure-generic-function 'ode_joint_config-val :lambda-list '(m))
(cl:defmethod ode_joint_config-val ((m <SetJointProperties-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:ode_joint_config-val is deprecated.  Use gazebo_msgs-srv:ode_joint_config instead.")
  (ode_joint_config m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJointProperties-request>) ostream)
  "Serializes a message object of type '<SetJointProperties-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'joint_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'joint_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ode_joint_config) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJointProperties-request>) istream)
  "Deserializes a message object of type '<SetJointProperties-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'joint_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'joint_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ode_joint_config) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJointProperties-request>)))
  "Returns string type for a service object of type '<SetJointProperties-request>"
  "gazebo_msgs/SetJointPropertiesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointProperties-request)))
  "Returns string type for a service object of type 'SetJointProperties-request"
  "gazebo_msgs/SetJointPropertiesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJointProperties-request>)))
  "Returns md5sum for a message object of type '<SetJointProperties-request>"
  "15a76e921b1410c698d82782ea5fa370")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJointProperties-request)))
  "Returns md5sum for a message object of type 'SetJointProperties-request"
  "15a76e921b1410c698d82782ea5fa370")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJointProperties-request>)))
  "Returns full string definition for message of type '<SetJointProperties-request>"
  (cl:format cl:nil "string joint_name~%gazebo_msgs/ODEJointProperties ode_joint_config~%~%================================================================================~%MSG: gazebo_msgs/ODEJointProperties~%# access to low level joint properties, change these at your own risk~%float64[] damping             # joint damping~%float64[] hiStop              # joint limit~%float64[] loStop              # joint limit~%float64[] erp                 # set joint erp~%float64[] cfm                 # set joint cfm~%float64[] stop_erp            # set joint erp for joint limit \"contact\" joint~%float64[] stop_cfm            # set joint cfm for joint limit \"contact\" joint~%float64[] fudge_factor        # joint fudge_factor applied at limits, see ODE manual for info.~%float64[] fmax                # ode joint param fmax~%float64[] vel                 # ode joint param vel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJointProperties-request)))
  "Returns full string definition for message of type 'SetJointProperties-request"
  (cl:format cl:nil "string joint_name~%gazebo_msgs/ODEJointProperties ode_joint_config~%~%================================================================================~%MSG: gazebo_msgs/ODEJointProperties~%# access to low level joint properties, change these at your own risk~%float64[] damping             # joint damping~%float64[] hiStop              # joint limit~%float64[] loStop              # joint limit~%float64[] erp                 # set joint erp~%float64[] cfm                 # set joint cfm~%float64[] stop_erp            # set joint erp for joint limit \"contact\" joint~%float64[] stop_cfm            # set joint cfm for joint limit \"contact\" joint~%float64[] fudge_factor        # joint fudge_factor applied at limits, see ODE manual for info.~%float64[] fmax                # ode joint param fmax~%float64[] vel                 # ode joint param vel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJointProperties-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'joint_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ode_joint_config))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJointProperties-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJointProperties-request
    (cl:cons ':joint_name (joint_name msg))
    (cl:cons ':ode_joint_config (ode_joint_config msg))
))
;//! \htmlinclude SetJointProperties-response.msg.html

(cl:defclass <SetJointProperties-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetJointProperties-response (<SetJointProperties-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJointProperties-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJointProperties-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<SetJointProperties-response> is deprecated: use gazebo_msgs-srv:SetJointProperties-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetJointProperties-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:success-val is deprecated.  Use gazebo_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'status_message-val :lambda-list '(m))
(cl:defmethod status_message-val ((m <SetJointProperties-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:status_message-val is deprecated.  Use gazebo_msgs-srv:status_message instead.")
  (status_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJointProperties-response>) ostream)
  "Serializes a message object of type '<SetJointProperties-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJointProperties-response>) istream)
  "Deserializes a message object of type '<SetJointProperties-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJointProperties-response>)))
  "Returns string type for a service object of type '<SetJointProperties-response>"
  "gazebo_msgs/SetJointPropertiesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointProperties-response)))
  "Returns string type for a service object of type 'SetJointProperties-response"
  "gazebo_msgs/SetJointPropertiesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJointProperties-response>)))
  "Returns md5sum for a message object of type '<SetJointProperties-response>"
  "15a76e921b1410c698d82782ea5fa370")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJointProperties-response)))
  "Returns md5sum for a message object of type 'SetJointProperties-response"
  "15a76e921b1410c698d82782ea5fa370")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJointProperties-response>)))
  "Returns full string definition for message of type '<SetJointProperties-response>"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJointProperties-response)))
  "Returns full string definition for message of type 'SetJointProperties-response"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJointProperties-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'status_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJointProperties-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJointProperties-response
    (cl:cons ':success (success msg))
    (cl:cons ':status_message (status_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetJointProperties)))
  'SetJointProperties-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetJointProperties)))
  'SetJointProperties-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointProperties)))
  "Returns string type for a service object of type '<SetJointProperties>"
  "gazebo_msgs/SetJointProperties")