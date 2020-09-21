; Auto-generated. Do not edit!


(cl:in-package gazebo_msgs-srv)


;//! \htmlinclude SetPhysicsProperties-request.msg.html

(cl:defclass <SetPhysicsProperties-request> (roslisp-msg-protocol:ros-message)
  ((time_step
    :reader time_step
    :initarg :time_step
    :type cl:float
    :initform 0.0)
   (max_update_rate
    :reader max_update_rate
    :initarg :max_update_rate
    :type cl:float
    :initform 0.0)
   (gravity
    :reader gravity
    :initarg :gravity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (ode_config
    :reader ode_config
    :initarg :ode_config
    :type gazebo_msgs-msg:ODEPhysics
    :initform (cl:make-instance 'gazebo_msgs-msg:ODEPhysics)))
)

(cl:defclass SetPhysicsProperties-request (<SetPhysicsProperties-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPhysicsProperties-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPhysicsProperties-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<SetPhysicsProperties-request> is deprecated: use gazebo_msgs-srv:SetPhysicsProperties-request instead.")))

(cl:ensure-generic-function 'time_step-val :lambda-list '(m))
(cl:defmethod time_step-val ((m <SetPhysicsProperties-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:time_step-val is deprecated.  Use gazebo_msgs-srv:time_step instead.")
  (time_step m))

(cl:ensure-generic-function 'max_update_rate-val :lambda-list '(m))
(cl:defmethod max_update_rate-val ((m <SetPhysicsProperties-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:max_update_rate-val is deprecated.  Use gazebo_msgs-srv:max_update_rate instead.")
  (max_update_rate m))

(cl:ensure-generic-function 'gravity-val :lambda-list '(m))
(cl:defmethod gravity-val ((m <SetPhysicsProperties-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:gravity-val is deprecated.  Use gazebo_msgs-srv:gravity instead.")
  (gravity m))

(cl:ensure-generic-function 'ode_config-val :lambda-list '(m))
(cl:defmethod ode_config-val ((m <SetPhysicsProperties-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:ode_config-val is deprecated.  Use gazebo_msgs-srv:ode_config instead.")
  (ode_config m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPhysicsProperties-request>) ostream)
  "Serializes a message object of type '<SetPhysicsProperties-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time_step))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_update_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gravity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ode_config) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPhysicsProperties-request>) istream)
  "Deserializes a message object of type '<SetPhysicsProperties-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_step) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_update_rate) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gravity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ode_config) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPhysicsProperties-request>)))
  "Returns string type for a service object of type '<SetPhysicsProperties-request>"
  "gazebo_msgs/SetPhysicsPropertiesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPhysicsProperties-request)))
  "Returns string type for a service object of type 'SetPhysicsProperties-request"
  "gazebo_msgs/SetPhysicsPropertiesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPhysicsProperties-request>)))
  "Returns md5sum for a message object of type '<SetPhysicsProperties-request>"
  "97e2057080558ce4730434b5fae75c91")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPhysicsProperties-request)))
  "Returns md5sum for a message object of type 'SetPhysicsProperties-request"
  "97e2057080558ce4730434b5fae75c91")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPhysicsProperties-request>)))
  "Returns full string definition for message of type '<SetPhysicsProperties-request>"
  (cl:format cl:nil "~%float64 time_step~%float64 max_update_rate~%geometry_msgs/Vector3 gravity~%gazebo_msgs/ODEPhysics ode_config~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: gazebo_msgs/ODEPhysics~%bool auto_disable_bodies           # enable auto disabling of bodies, default false~%uint32 sor_pgs_precon_iters        # preconditioning inner iterations when uisng projected Gauss Seidel~%uint32 sor_pgs_iters               # inner iterations when uisng projected Gauss Seidel~%float64 sor_pgs_w                  # relaxation parameter when using projected Gauss Seidel, 1 = no relaxation~%float64 sor_pgs_rms_error_tol      # rms error tolerance before stopping inner iterations~%float64 contact_surface_layer      # contact \"dead-band\" width~%float64 contact_max_correcting_vel # contact maximum correction velocity~%float64 cfm                        # global constraint force mixing~%float64 erp                        # global error reduction parameter~%uint32 max_contacts                # maximum contact joints between two geoms~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPhysicsProperties-request)))
  "Returns full string definition for message of type 'SetPhysicsProperties-request"
  (cl:format cl:nil "~%float64 time_step~%float64 max_update_rate~%geometry_msgs/Vector3 gravity~%gazebo_msgs/ODEPhysics ode_config~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: gazebo_msgs/ODEPhysics~%bool auto_disable_bodies           # enable auto disabling of bodies, default false~%uint32 sor_pgs_precon_iters        # preconditioning inner iterations when uisng projected Gauss Seidel~%uint32 sor_pgs_iters               # inner iterations when uisng projected Gauss Seidel~%float64 sor_pgs_w                  # relaxation parameter when using projected Gauss Seidel, 1 = no relaxation~%float64 sor_pgs_rms_error_tol      # rms error tolerance before stopping inner iterations~%float64 contact_surface_layer      # contact \"dead-band\" width~%float64 contact_max_correcting_vel # contact maximum correction velocity~%float64 cfm                        # global constraint force mixing~%float64 erp                        # global error reduction parameter~%uint32 max_contacts                # maximum contact joints between two geoms~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPhysicsProperties-request>))
  (cl:+ 0
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gravity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ode_config))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPhysicsProperties-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPhysicsProperties-request
    (cl:cons ':time_step (time_step msg))
    (cl:cons ':max_update_rate (max_update_rate msg))
    (cl:cons ':gravity (gravity msg))
    (cl:cons ':ode_config (ode_config msg))
))
;//! \htmlinclude SetPhysicsProperties-response.msg.html

(cl:defclass <SetPhysicsProperties-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetPhysicsProperties-response (<SetPhysicsProperties-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPhysicsProperties-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPhysicsProperties-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<SetPhysicsProperties-response> is deprecated: use gazebo_msgs-srv:SetPhysicsProperties-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetPhysicsProperties-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:success-val is deprecated.  Use gazebo_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'status_message-val :lambda-list '(m))
(cl:defmethod status_message-val ((m <SetPhysicsProperties-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:status_message-val is deprecated.  Use gazebo_msgs-srv:status_message instead.")
  (status_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPhysicsProperties-response>) ostream)
  "Serializes a message object of type '<SetPhysicsProperties-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPhysicsProperties-response>) istream)
  "Deserializes a message object of type '<SetPhysicsProperties-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPhysicsProperties-response>)))
  "Returns string type for a service object of type '<SetPhysicsProperties-response>"
  "gazebo_msgs/SetPhysicsPropertiesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPhysicsProperties-response)))
  "Returns string type for a service object of type 'SetPhysicsProperties-response"
  "gazebo_msgs/SetPhysicsPropertiesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPhysicsProperties-response>)))
  "Returns md5sum for a message object of type '<SetPhysicsProperties-response>"
  "97e2057080558ce4730434b5fae75c91")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPhysicsProperties-response)))
  "Returns md5sum for a message object of type 'SetPhysicsProperties-response"
  "97e2057080558ce4730434b5fae75c91")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPhysicsProperties-response>)))
  "Returns full string definition for message of type '<SetPhysicsProperties-response>"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPhysicsProperties-response)))
  "Returns full string definition for message of type 'SetPhysicsProperties-response"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPhysicsProperties-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'status_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPhysicsProperties-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPhysicsProperties-response
    (cl:cons ':success (success msg))
    (cl:cons ':status_message (status_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetPhysicsProperties)))
  'SetPhysicsProperties-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetPhysicsProperties)))
  'SetPhysicsProperties-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPhysicsProperties)))
  "Returns string type for a service object of type '<SetPhysicsProperties>"
  "gazebo_msgs/SetPhysicsProperties")