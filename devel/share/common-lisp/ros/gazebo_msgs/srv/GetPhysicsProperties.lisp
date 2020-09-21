; Auto-generated. Do not edit!


(cl:in-package gazebo_msgs-srv)


;//! \htmlinclude GetPhysicsProperties-request.msg.html

(cl:defclass <GetPhysicsProperties-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetPhysicsProperties-request (<GetPhysicsProperties-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPhysicsProperties-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPhysicsProperties-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<GetPhysicsProperties-request> is deprecated: use gazebo_msgs-srv:GetPhysicsProperties-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPhysicsProperties-request>) ostream)
  "Serializes a message object of type '<GetPhysicsProperties-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPhysicsProperties-request>) istream)
  "Deserializes a message object of type '<GetPhysicsProperties-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPhysicsProperties-request>)))
  "Returns string type for a service object of type '<GetPhysicsProperties-request>"
  "gazebo_msgs/GetPhysicsPropertiesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPhysicsProperties-request)))
  "Returns string type for a service object of type 'GetPhysicsProperties-request"
  "gazebo_msgs/GetPhysicsPropertiesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPhysicsProperties-request>)))
  "Returns md5sum for a message object of type '<GetPhysicsProperties-request>"
  "575a5e74786981b7df2e3afc567693a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPhysicsProperties-request)))
  "Returns md5sum for a message object of type 'GetPhysicsProperties-request"
  "575a5e74786981b7df2e3afc567693a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPhysicsProperties-request>)))
  "Returns full string definition for message of type '<GetPhysicsProperties-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPhysicsProperties-request)))
  "Returns full string definition for message of type 'GetPhysicsProperties-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPhysicsProperties-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPhysicsProperties-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPhysicsProperties-request
))
;//! \htmlinclude GetPhysicsProperties-response.msg.html

(cl:defclass <GetPhysicsProperties-response> (roslisp-msg-protocol:ros-message)
  ((time_step
    :reader time_step
    :initarg :time_step
    :type cl:float
    :initform 0.0)
   (pause
    :reader pause
    :initarg :pause
    :type cl:boolean
    :initform cl:nil)
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
    :initform (cl:make-instance 'gazebo_msgs-msg:ODEPhysics))
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

(cl:defclass GetPhysicsProperties-response (<GetPhysicsProperties-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPhysicsProperties-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPhysicsProperties-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<GetPhysicsProperties-response> is deprecated: use gazebo_msgs-srv:GetPhysicsProperties-response instead.")))

(cl:ensure-generic-function 'time_step-val :lambda-list '(m))
(cl:defmethod time_step-val ((m <GetPhysicsProperties-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:time_step-val is deprecated.  Use gazebo_msgs-srv:time_step instead.")
  (time_step m))

(cl:ensure-generic-function 'pause-val :lambda-list '(m))
(cl:defmethod pause-val ((m <GetPhysicsProperties-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:pause-val is deprecated.  Use gazebo_msgs-srv:pause instead.")
  (pause m))

(cl:ensure-generic-function 'max_update_rate-val :lambda-list '(m))
(cl:defmethod max_update_rate-val ((m <GetPhysicsProperties-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:max_update_rate-val is deprecated.  Use gazebo_msgs-srv:max_update_rate instead.")
  (max_update_rate m))

(cl:ensure-generic-function 'gravity-val :lambda-list '(m))
(cl:defmethod gravity-val ((m <GetPhysicsProperties-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:gravity-val is deprecated.  Use gazebo_msgs-srv:gravity instead.")
  (gravity m))

(cl:ensure-generic-function 'ode_config-val :lambda-list '(m))
(cl:defmethod ode_config-val ((m <GetPhysicsProperties-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:ode_config-val is deprecated.  Use gazebo_msgs-srv:ode_config instead.")
  (ode_config m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetPhysicsProperties-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:success-val is deprecated.  Use gazebo_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'status_message-val :lambda-list '(m))
(cl:defmethod status_message-val ((m <GetPhysicsProperties-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:status_message-val is deprecated.  Use gazebo_msgs-srv:status_message instead.")
  (status_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPhysicsProperties-response>) ostream)
  "Serializes a message object of type '<GetPhysicsProperties-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time_step))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pause) 1 0)) ostream)
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPhysicsProperties-response>) istream)
  "Deserializes a message object of type '<GetPhysicsProperties-response>"
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
    (cl:setf (cl:slot-value msg 'pause) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPhysicsProperties-response>)))
  "Returns string type for a service object of type '<GetPhysicsProperties-response>"
  "gazebo_msgs/GetPhysicsPropertiesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPhysicsProperties-response)))
  "Returns string type for a service object of type 'GetPhysicsProperties-response"
  "gazebo_msgs/GetPhysicsPropertiesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPhysicsProperties-response>)))
  "Returns md5sum for a message object of type '<GetPhysicsProperties-response>"
  "575a5e74786981b7df2e3afc567693a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPhysicsProperties-response)))
  "Returns md5sum for a message object of type 'GetPhysicsProperties-response"
  "575a5e74786981b7df2e3afc567693a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPhysicsProperties-response>)))
  "Returns full string definition for message of type '<GetPhysicsProperties-response>"
  (cl:format cl:nil "~%float64 time_step~%bool pause~%float64 max_update_rate~%geometry_msgs/Vector3 gravity~%gazebo_msgs/ODEPhysics ode_config~%bool success~%string status_message~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: gazebo_msgs/ODEPhysics~%bool auto_disable_bodies           # enable auto disabling of bodies, default false~%uint32 sor_pgs_precon_iters        # preconditioning inner iterations when uisng projected Gauss Seidel~%uint32 sor_pgs_iters               # inner iterations when uisng projected Gauss Seidel~%float64 sor_pgs_w                  # relaxation parameter when using projected Gauss Seidel, 1 = no relaxation~%float64 sor_pgs_rms_error_tol      # rms error tolerance before stopping inner iterations~%float64 contact_surface_layer      # contact \"dead-band\" width~%float64 contact_max_correcting_vel # contact maximum correction velocity~%float64 cfm                        # global constraint force mixing~%float64 erp                        # global error reduction parameter~%uint32 max_contacts                # maximum contact joints between two geoms~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPhysicsProperties-response)))
  "Returns full string definition for message of type 'GetPhysicsProperties-response"
  (cl:format cl:nil "~%float64 time_step~%bool pause~%float64 max_update_rate~%geometry_msgs/Vector3 gravity~%gazebo_msgs/ODEPhysics ode_config~%bool success~%string status_message~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: gazebo_msgs/ODEPhysics~%bool auto_disable_bodies           # enable auto disabling of bodies, default false~%uint32 sor_pgs_precon_iters        # preconditioning inner iterations when uisng projected Gauss Seidel~%uint32 sor_pgs_iters               # inner iterations when uisng projected Gauss Seidel~%float64 sor_pgs_w                  # relaxation parameter when using projected Gauss Seidel, 1 = no relaxation~%float64 sor_pgs_rms_error_tol      # rms error tolerance before stopping inner iterations~%float64 contact_surface_layer      # contact \"dead-band\" width~%float64 contact_max_correcting_vel # contact maximum correction velocity~%float64 cfm                        # global constraint force mixing~%float64 erp                        # global error reduction parameter~%uint32 max_contacts                # maximum contact joints between two geoms~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPhysicsProperties-response>))
  (cl:+ 0
     8
     1
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gravity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ode_config))
     1
     4 (cl:length (cl:slot-value msg 'status_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPhysicsProperties-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPhysicsProperties-response
    (cl:cons ':time_step (time_step msg))
    (cl:cons ':pause (pause msg))
    (cl:cons ':max_update_rate (max_update_rate msg))
    (cl:cons ':gravity (gravity msg))
    (cl:cons ':ode_config (ode_config msg))
    (cl:cons ':success (success msg))
    (cl:cons ':status_message (status_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPhysicsProperties)))
  'GetPhysicsProperties-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPhysicsProperties)))
  'GetPhysicsProperties-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPhysicsProperties)))
  "Returns string type for a service object of type '<GetPhysicsProperties>"
  "gazebo_msgs/GetPhysicsProperties")