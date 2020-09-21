;; Auto-generated. Do not edit!


(when (boundp 'gazebo_msgs::ContactsState)
  (if (not (find-package "GAZEBO_MSGS"))
    (make-package "GAZEBO_MSGS"))
  (shadow 'ContactsState (find-package "GAZEBO_MSGS")))
(unless (find-package "GAZEBO_MSGS::CONTACTSSTATE")
  (make-package "GAZEBO_MSGS::CONTACTSSTATE"))

(in-package "ROS")
;;//! \htmlinclude ContactsState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gazebo_msgs::ContactsState
  :super ros::object
  :slots (_header _states ))

(defmethod gazebo_msgs::ContactsState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:states __states) (let (r) (dotimes (i 0) (push (instance gazebo_msgs::ContactState :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _states __states)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:states
   (&rest __states)
   (if (keywordp (car __states))
       (send* _states __states)
     (progn
       (if __states (setq _states (car __states)))
       _states)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; gazebo_msgs/ContactState[] _states
    (apply #'+ (send-all _states :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; gazebo_msgs/ContactState[] _states
     (write-long (length _states) s)
     (dolist (elem _states)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; gazebo_msgs/ContactState[] _states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _states (let (r) (dotimes (i n) (push (instance gazebo_msgs::ContactState :init) r)) r))
     (dolist (elem- _states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get gazebo_msgs::ContactsState :md5sum-) "acbcb1601a8e525bf72509f18e6f668d")
(setf (get gazebo_msgs::ContactsState :datatype-) "gazebo_msgs/ContactsState")
(setf (get gazebo_msgs::ContactsState :definition-)
      "Header header                                   # stamp
gazebo_msgs/ContactState[] states            # array of geom pairs in contact

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: gazebo_msgs/ContactState
string info                                   # text info on this contact
string collision1_name                        # name of contact collision1
string collision2_name                        # name of contact collision2
geometry_msgs/Wrench[] wrenches               # list of forces/torques
geometry_msgs/Wrench total_wrench             # sum of forces/torques in every DOF
geometry_msgs/Vector3[] contact_positions     # list of contact position
geometry_msgs/Vector3[] contact_normals       # list of contact normals
float64[] depths                              # list of penetration depths

================================================================================
MSG: geometry_msgs/Wrench
# This represents force in free space, separated into
# its linear and angular parts.
Vector3  force
Vector3  torque

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :gazebo_msgs/ContactsState "acbcb1601a8e525bf72509f18e6f668d")


