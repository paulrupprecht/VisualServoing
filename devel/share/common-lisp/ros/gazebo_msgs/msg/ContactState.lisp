; Auto-generated. Do not edit!


(cl:in-package gazebo_msgs-msg)


;//! \htmlinclude ContactState.msg.html

(cl:defclass <ContactState> (roslisp-msg-protocol:ros-message)
  ((info
    :reader info
    :initarg :info
    :type cl:string
    :initform "")
   (collision1_name
    :reader collision1_name
    :initarg :collision1_name
    :type cl:string
    :initform "")
   (collision2_name
    :reader collision2_name
    :initarg :collision2_name
    :type cl:string
    :initform "")
   (wrenches
    :reader wrenches
    :initarg :wrenches
    :type (cl:vector geometry_msgs-msg:Wrench)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Wrench :initial-element (cl:make-instance 'geometry_msgs-msg:Wrench)))
   (total_wrench
    :reader total_wrench
    :initarg :total_wrench
    :type geometry_msgs-msg:Wrench
    :initform (cl:make-instance 'geometry_msgs-msg:Wrench))
   (contact_positions
    :reader contact_positions
    :initarg :contact_positions
    :type (cl:vector geometry_msgs-msg:Vector3)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Vector3 :initial-element (cl:make-instance 'geometry_msgs-msg:Vector3)))
   (contact_normals
    :reader contact_normals
    :initarg :contact_normals
    :type (cl:vector geometry_msgs-msg:Vector3)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Vector3 :initial-element (cl:make-instance 'geometry_msgs-msg:Vector3)))
   (depths
    :reader depths
    :initarg :depths
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ContactState (<ContactState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ContactState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ContactState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-msg:<ContactState> is deprecated: use gazebo_msgs-msg:ContactState instead.")))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <ContactState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-msg:info-val is deprecated.  Use gazebo_msgs-msg:info instead.")
  (info m))

(cl:ensure-generic-function 'collision1_name-val :lambda-list '(m))
(cl:defmethod collision1_name-val ((m <ContactState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-msg:collision1_name-val is deprecated.  Use gazebo_msgs-msg:collision1_name instead.")
  (collision1_name m))

(cl:ensure-generic-function 'collision2_name-val :lambda-list '(m))
(cl:defmethod collision2_name-val ((m <ContactState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-msg:collision2_name-val is deprecated.  Use gazebo_msgs-msg:collision2_name instead.")
  (collision2_name m))

(cl:ensure-generic-function 'wrenches-val :lambda-list '(m))
(cl:defmethod wrenches-val ((m <ContactState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-msg:wrenches-val is deprecated.  Use gazebo_msgs-msg:wrenches instead.")
  (wrenches m))

(cl:ensure-generic-function 'total_wrench-val :lambda-list '(m))
(cl:defmethod total_wrench-val ((m <ContactState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-msg:total_wrench-val is deprecated.  Use gazebo_msgs-msg:total_wrench instead.")
  (total_wrench m))

(cl:ensure-generic-function 'contact_positions-val :lambda-list '(m))
(cl:defmethod contact_positions-val ((m <ContactState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-msg:contact_positions-val is deprecated.  Use gazebo_msgs-msg:contact_positions instead.")
  (contact_positions m))

(cl:ensure-generic-function 'contact_normals-val :lambda-list '(m))
(cl:defmethod contact_normals-val ((m <ContactState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-msg:contact_normals-val is deprecated.  Use gazebo_msgs-msg:contact_normals instead.")
  (contact_normals m))

(cl:ensure-generic-function 'depths-val :lambda-list '(m))
(cl:defmethod depths-val ((m <ContactState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-msg:depths-val is deprecated.  Use gazebo_msgs-msg:depths instead.")
  (depths m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ContactState>) ostream)
  "Serializes a message object of type '<ContactState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'info))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'collision1_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'collision1_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'collision2_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'collision2_name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'wrenches))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'wrenches))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'total_wrench) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'contact_positions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'contact_positions))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'contact_normals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'contact_normals))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'depths))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'depths))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ContactState>) istream)
  "Deserializes a message object of type '<ContactState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'collision1_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'collision1_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'collision2_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'collision2_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'wrenches) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'wrenches)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Wrench))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'total_wrench) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'contact_positions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'contact_positions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Vector3))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'contact_normals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'contact_normals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Vector3))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'depths) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'depths)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ContactState>)))
  "Returns string type for a message object of type '<ContactState>"
  "gazebo_msgs/ContactState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ContactState)))
  "Returns string type for a message object of type 'ContactState"
  "gazebo_msgs/ContactState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ContactState>)))
  "Returns md5sum for a message object of type '<ContactState>"
  "48c0ffb054b8c444f870cecea1ee50d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ContactState)))
  "Returns md5sum for a message object of type 'ContactState"
  "48c0ffb054b8c444f870cecea1ee50d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ContactState>)))
  "Returns full string definition for message of type '<ContactState>"
  (cl:format cl:nil "string info                                   # text info on this contact~%string collision1_name                        # name of contact collision1~%string collision2_name                        # name of contact collision2~%geometry_msgs/Wrench[] wrenches               # list of forces/torques~%geometry_msgs/Wrench total_wrench             # sum of forces/torques in every DOF~%geometry_msgs/Vector3[] contact_positions     # list of contact position~%geometry_msgs/Vector3[] contact_normals       # list of contact normals~%float64[] depths                              # list of penetration depths~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ContactState)))
  "Returns full string definition for message of type 'ContactState"
  (cl:format cl:nil "string info                                   # text info on this contact~%string collision1_name                        # name of contact collision1~%string collision2_name                        # name of contact collision2~%geometry_msgs/Wrench[] wrenches               # list of forces/torques~%geometry_msgs/Wrench total_wrench             # sum of forces/torques in every DOF~%geometry_msgs/Vector3[] contact_positions     # list of contact position~%geometry_msgs/Vector3[] contact_normals       # list of contact normals~%float64[] depths                              # list of penetration depths~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ContactState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'info))
     4 (cl:length (cl:slot-value msg 'collision1_name))
     4 (cl:length (cl:slot-value msg 'collision2_name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'wrenches) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'total_wrench))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'contact_positions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'contact_normals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'depths) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ContactState>))
  "Converts a ROS message object to a list"
  (cl:list 'ContactState
    (cl:cons ':info (info msg))
    (cl:cons ':collision1_name (collision1_name msg))
    (cl:cons ':collision2_name (collision2_name msg))
    (cl:cons ':wrenches (wrenches msg))
    (cl:cons ':total_wrench (total_wrench msg))
    (cl:cons ':contact_positions (contact_positions msg))
    (cl:cons ':contact_normals (contact_normals msg))
    (cl:cons ':depths (depths msg))
))
