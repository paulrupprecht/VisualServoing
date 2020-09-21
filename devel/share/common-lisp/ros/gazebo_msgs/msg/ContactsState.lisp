; Auto-generated. Do not edit!


(cl:in-package gazebo_msgs-msg)


;//! \htmlinclude ContactsState.msg.html

(cl:defclass <ContactsState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (states
    :reader states
    :initarg :states
    :type (cl:vector gazebo_msgs-msg:ContactState)
   :initform (cl:make-array 0 :element-type 'gazebo_msgs-msg:ContactState :initial-element (cl:make-instance 'gazebo_msgs-msg:ContactState))))
)

(cl:defclass ContactsState (<ContactsState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ContactsState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ContactsState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-msg:<ContactsState> is deprecated: use gazebo_msgs-msg:ContactsState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ContactsState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-msg:header-val is deprecated.  Use gazebo_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'states-val :lambda-list '(m))
(cl:defmethod states-val ((m <ContactsState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-msg:states-val is deprecated.  Use gazebo_msgs-msg:states instead.")
  (states m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ContactsState>) ostream)
  "Serializes a message object of type '<ContactsState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'states))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ContactsState>) istream)
  "Deserializes a message object of type '<ContactsState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'gazebo_msgs-msg:ContactState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ContactsState>)))
  "Returns string type for a message object of type '<ContactsState>"
  "gazebo_msgs/ContactsState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ContactsState)))
  "Returns string type for a message object of type 'ContactsState"
  "gazebo_msgs/ContactsState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ContactsState>)))
  "Returns md5sum for a message object of type '<ContactsState>"
  "acbcb1601a8e525bf72509f18e6f668d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ContactsState)))
  "Returns md5sum for a message object of type 'ContactsState"
  "acbcb1601a8e525bf72509f18e6f668d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ContactsState>)))
  "Returns full string definition for message of type '<ContactsState>"
  (cl:format cl:nil "Header header                                   # stamp~%gazebo_msgs/ContactState[] states            # array of geom pairs in contact~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: gazebo_msgs/ContactState~%string info                                   # text info on this contact~%string collision1_name                        # name of contact collision1~%string collision2_name                        # name of contact collision2~%geometry_msgs/Wrench[] wrenches               # list of forces/torques~%geometry_msgs/Wrench total_wrench             # sum of forces/torques in every DOF~%geometry_msgs/Vector3[] contact_positions     # list of contact position~%geometry_msgs/Vector3[] contact_normals       # list of contact normals~%float64[] depths                              # list of penetration depths~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ContactsState)))
  "Returns full string definition for message of type 'ContactsState"
  (cl:format cl:nil "Header header                                   # stamp~%gazebo_msgs/ContactState[] states            # array of geom pairs in contact~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: gazebo_msgs/ContactState~%string info                                   # text info on this contact~%string collision1_name                        # name of contact collision1~%string collision2_name                        # name of contact collision2~%geometry_msgs/Wrench[] wrenches               # list of forces/torques~%geometry_msgs/Wrench total_wrench             # sum of forces/torques in every DOF~%geometry_msgs/Vector3[] contact_positions     # list of contact position~%geometry_msgs/Vector3[] contact_normals       # list of contact normals~%float64[] depths                              # list of penetration depths~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ContactsState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ContactsState>))
  "Converts a ROS message object to a list"
  (cl:list 'ContactsState
    (cl:cons ':header (header msg))
    (cl:cons ':states (states msg))
))
