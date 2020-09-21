; Auto-generated. Do not edit!


(cl:in-package gazebo_msgs-msg)


;//! \htmlinclude ODEPhysics.msg.html

(cl:defclass <ODEPhysics> (roslisp-msg-protocol:ros-message)
  ((auto_disable_bodies
    :reader auto_disable_bodies
    :initarg :auto_disable_bodies
    :type cl:boolean
    :initform cl:nil)
   (sor_pgs_precon_iters
    :reader sor_pgs_precon_iters
    :initarg :sor_pgs_precon_iters
    :type cl:integer
    :initform 0)
   (sor_pgs_iters
    :reader sor_pgs_iters
    :initarg :sor_pgs_iters
    :type cl:integer
    :initform 0)
   (sor_pgs_w
    :reader sor_pgs_w
    :initarg :sor_pgs_w
    :type cl:float
    :initform 0.0)
   (sor_pgs_rms_error_tol
    :reader sor_pgs_rms_error_tol
    :initarg :sor_pgs_rms_error_tol
    :type cl:float
    :initform 0.0)
   (contact_surface_layer
    :reader contact_surface_layer
    :initarg :contact_surface_layer
    :type cl:float
    :initform 0.0)
   (contact_max_correcting_vel
    :reader contact_max_correcting_vel
    :initarg :contact_max_correcting_vel
    :type cl:float
    :initform 0.0)
   (cfm
    :reader cfm
    :initarg :cfm
    :type cl:float
    :initform 0.0)
   (erp
    :reader erp
    :initarg :erp
    :type cl:float
    :initform 0.0)
   (max_contacts
    :reader max_contacts
    :initarg :max_contacts
    :type cl:integer
    :initform 0))
)

(cl:defclass ODEPhysics (<ODEPhysics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ODEPhysics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ODEPhysics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-msg:<ODEPhysics> is deprecated: use gazebo_msgs-msg:ODEPhysics instead.")))

(cl:ensure-generic-function 'auto_disable_bodies-val :lambda-list '(m))
(cl:defmethod auto_disable_bodies-val ((m <ODEPhysics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-msg:auto_disable_bodies-val is deprecated.  Use gazebo_msgs-msg:auto_disable_bodies instead.")
  (auto_disable_bodies m))

(cl:ensure-generic-function 'sor_pgs_precon_iters-val :lambda-list '(m))
(cl:defmethod sor_pgs_precon_iters-val ((m <ODEPhysics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-msg:sor_pgs_precon_iters-val is deprecated.  Use gazebo_msgs-msg:sor_pgs_precon_iters instead.")
  (sor_pgs_precon_iters m))

(cl:ensure-generic-function 'sor_pgs_iters-val :lambda-list '(m))
(cl:defmethod sor_pgs_iters-val ((m <ODEPhysics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-msg:sor_pgs_iters-val is deprecated.  Use gazebo_msgs-msg:sor_pgs_iters instead.")
  (sor_pgs_iters m))

(cl:ensure-generic-function 'sor_pgs_w-val :lambda-list '(m))
(cl:defmethod sor_pgs_w-val ((m <ODEPhysics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-msg:sor_pgs_w-val is deprecated.  Use gazebo_msgs-msg:sor_pgs_w instead.")
  (sor_pgs_w m))

(cl:ensure-generic-function 'sor_pgs_rms_error_tol-val :lambda-list '(m))
(cl:defmethod sor_pgs_rms_error_tol-val ((m <ODEPhysics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-msg:sor_pgs_rms_error_tol-val is deprecated.  Use gazebo_msgs-msg:sor_pgs_rms_error_tol instead.")
  (sor_pgs_rms_error_tol m))

(cl:ensure-generic-function 'contact_surface_layer-val :lambda-list '(m))
(cl:defmethod contact_surface_layer-val ((m <ODEPhysics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-msg:contact_surface_layer-val is deprecated.  Use gazebo_msgs-msg:contact_surface_layer instead.")
  (contact_surface_layer m))

(cl:ensure-generic-function 'contact_max_correcting_vel-val :lambda-list '(m))
(cl:defmethod contact_max_correcting_vel-val ((m <ODEPhysics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-msg:contact_max_correcting_vel-val is deprecated.  Use gazebo_msgs-msg:contact_max_correcting_vel instead.")
  (contact_max_correcting_vel m))

(cl:ensure-generic-function 'cfm-val :lambda-list '(m))
(cl:defmethod cfm-val ((m <ODEPhysics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-msg:cfm-val is deprecated.  Use gazebo_msgs-msg:cfm instead.")
  (cfm m))

(cl:ensure-generic-function 'erp-val :lambda-list '(m))
(cl:defmethod erp-val ((m <ODEPhysics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-msg:erp-val is deprecated.  Use gazebo_msgs-msg:erp instead.")
  (erp m))

(cl:ensure-generic-function 'max_contacts-val :lambda-list '(m))
(cl:defmethod max_contacts-val ((m <ODEPhysics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-msg:max_contacts-val is deprecated.  Use gazebo_msgs-msg:max_contacts instead.")
  (max_contacts m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ODEPhysics>) ostream)
  "Serializes a message object of type '<ODEPhysics>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'auto_disable_bodies) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sor_pgs_precon_iters)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sor_pgs_precon_iters)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sor_pgs_precon_iters)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sor_pgs_precon_iters)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sor_pgs_iters)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sor_pgs_iters)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sor_pgs_iters)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sor_pgs_iters)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'sor_pgs_w))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'sor_pgs_rms_error_tol))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'contact_surface_layer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'contact_max_correcting_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cfm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'erp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_contacts)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'max_contacts)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'max_contacts)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'max_contacts)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ODEPhysics>) istream)
  "Deserializes a message object of type '<ODEPhysics>"
    (cl:setf (cl:slot-value msg 'auto_disable_bodies) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sor_pgs_precon_iters)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sor_pgs_precon_iters)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sor_pgs_precon_iters)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sor_pgs_precon_iters)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sor_pgs_iters)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sor_pgs_iters)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sor_pgs_iters)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sor_pgs_iters)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sor_pgs_w) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sor_pgs_rms_error_tol) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'contact_surface_layer) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'contact_max_correcting_vel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cfm) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'erp) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_contacts)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'max_contacts)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'max_contacts)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'max_contacts)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ODEPhysics>)))
  "Returns string type for a message object of type '<ODEPhysics>"
  "gazebo_msgs/ODEPhysics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ODEPhysics)))
  "Returns string type for a message object of type 'ODEPhysics"
  "gazebo_msgs/ODEPhysics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ODEPhysics>)))
  "Returns md5sum for a message object of type '<ODEPhysics>"
  "667d56ddbd547918c32d1934503dc335")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ODEPhysics)))
  "Returns md5sum for a message object of type 'ODEPhysics"
  "667d56ddbd547918c32d1934503dc335")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ODEPhysics>)))
  "Returns full string definition for message of type '<ODEPhysics>"
  (cl:format cl:nil "bool auto_disable_bodies           # enable auto disabling of bodies, default false~%uint32 sor_pgs_precon_iters        # preconditioning inner iterations when uisng projected Gauss Seidel~%uint32 sor_pgs_iters               # inner iterations when uisng projected Gauss Seidel~%float64 sor_pgs_w                  # relaxation parameter when using projected Gauss Seidel, 1 = no relaxation~%float64 sor_pgs_rms_error_tol      # rms error tolerance before stopping inner iterations~%float64 contact_surface_layer      # contact \"dead-band\" width~%float64 contact_max_correcting_vel # contact maximum correction velocity~%float64 cfm                        # global constraint force mixing~%float64 erp                        # global error reduction parameter~%uint32 max_contacts                # maximum contact joints between two geoms~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ODEPhysics)))
  "Returns full string definition for message of type 'ODEPhysics"
  (cl:format cl:nil "bool auto_disable_bodies           # enable auto disabling of bodies, default false~%uint32 sor_pgs_precon_iters        # preconditioning inner iterations when uisng projected Gauss Seidel~%uint32 sor_pgs_iters               # inner iterations when uisng projected Gauss Seidel~%float64 sor_pgs_w                  # relaxation parameter when using projected Gauss Seidel, 1 = no relaxation~%float64 sor_pgs_rms_error_tol      # rms error tolerance before stopping inner iterations~%float64 contact_surface_layer      # contact \"dead-band\" width~%float64 contact_max_correcting_vel # contact maximum correction velocity~%float64 cfm                        # global constraint force mixing~%float64 erp                        # global error reduction parameter~%uint32 max_contacts                # maximum contact joints between two geoms~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ODEPhysics>))
  (cl:+ 0
     1
     4
     4
     8
     8
     8
     8
     8
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ODEPhysics>))
  "Converts a ROS message object to a list"
  (cl:list 'ODEPhysics
    (cl:cons ':auto_disable_bodies (auto_disable_bodies msg))
    (cl:cons ':sor_pgs_precon_iters (sor_pgs_precon_iters msg))
    (cl:cons ':sor_pgs_iters (sor_pgs_iters msg))
    (cl:cons ':sor_pgs_w (sor_pgs_w msg))
    (cl:cons ':sor_pgs_rms_error_tol (sor_pgs_rms_error_tol msg))
    (cl:cons ':contact_surface_layer (contact_surface_layer msg))
    (cl:cons ':contact_max_correcting_vel (contact_max_correcting_vel msg))
    (cl:cons ':cfm (cfm msg))
    (cl:cons ':erp (erp msg))
    (cl:cons ':max_contacts (max_contacts msg))
))
