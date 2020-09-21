;; Auto-generated. Do not edit!


(when (boundp 'gazebo_msgs::SetLinkState)
  (if (not (find-package "GAZEBO_MSGS"))
    (make-package "GAZEBO_MSGS"))
  (shadow 'SetLinkState (find-package "GAZEBO_MSGS")))
(unless (find-package "GAZEBO_MSGS::SETLINKSTATE")
  (make-package "GAZEBO_MSGS::SETLINKSTATE"))
(unless (find-package "GAZEBO_MSGS::SETLINKSTATEREQUEST")
  (make-package "GAZEBO_MSGS::SETLINKSTATEREQUEST"))
(unless (find-package "GAZEBO_MSGS::SETLINKSTATERESPONSE")
  (make-package "GAZEBO_MSGS::SETLINKSTATERESPONSE"))

(in-package "ROS")





(defclass gazebo_msgs::SetLinkStateRequest
  :super ros::object
  :slots (_link_state ))

(defmethod gazebo_msgs::SetLinkStateRequest
  (:init
   (&key
    ((:link_state __link_state) (instance gazebo_msgs::LinkState :init))
    )
   (send-super :init)
   (setq _link_state __link_state)
   self)
  (:link_state
   (&rest __link_state)
   (if (keywordp (car __link_state))
       (send* _link_state __link_state)
     (progn
       (if __link_state (setq _link_state (car __link_state)))
       _link_state)))
  (:serialization-length
   ()
   (+
    ;; gazebo_msgs/LinkState _link_state
    (send _link_state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; gazebo_msgs/LinkState _link_state
       (send _link_state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; gazebo_msgs/LinkState _link_state
     (send _link_state :deserialize buf ptr-) (incf ptr- (send _link_state :serialization-length))
   ;;
   self)
  )

(defclass gazebo_msgs::SetLinkStateResponse
  :super ros::object
  :slots (_success _status_message ))

(defmethod gazebo_msgs::SetLinkStateResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:status_message __status_message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _status_message (string __status_message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:status_message
   (&optional __status_message)
   (if __status_message (setq _status_message __status_message)) _status_message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _status_message
    4 (length _status_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _status_message
       (write-long (length _status_message) s) (princ _status_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _status_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass gazebo_msgs::SetLinkState
  :super ros::object
  :slots ())

(setf (get gazebo_msgs::SetLinkState :md5sum-) "8a5146eb66ae4d26b0860b08f3f271be")
(setf (get gazebo_msgs::SetLinkState :datatype-) "gazebo_msgs/SetLinkState")
(setf (get gazebo_msgs::SetLinkState :request) gazebo_msgs::SetLinkStateRequest)
(setf (get gazebo_msgs::SetLinkState :response) gazebo_msgs::SetLinkStateResponse)

(defmethod gazebo_msgs::SetLinkStateRequest
  (:response () (instance gazebo_msgs::SetLinkStateResponse :init)))

(setf (get gazebo_msgs::SetLinkStateRequest :md5sum-) "8a5146eb66ae4d26b0860b08f3f271be")
(setf (get gazebo_msgs::SetLinkStateRequest :datatype-) "gazebo_msgs/SetLinkStateRequest")
(setf (get gazebo_msgs::SetLinkStateRequest :definition-)
      "gazebo_msgs/LinkState link_state

================================================================================
MSG: gazebo_msgs/LinkState
# @todo: FIXME: sets pose and twist of a link.  All children link poses/twists of the URDF tree are not updated accordingly, but should be.
string link_name            # link name, link_names are in gazebo scoped name notation, [model_name::body_name]
geometry_msgs/Pose pose     # desired pose in reference frame
geometry_msgs/Twist twist   # desired twist in reference frame
string reference_frame      # set pose/twist relative to the frame of this link/body
                            # leave empty or \"world\" or \"map\" defaults to world-frame

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

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
---
bool success
string status_message

")

(setf (get gazebo_msgs::SetLinkStateResponse :md5sum-) "8a5146eb66ae4d26b0860b08f3f271be")
(setf (get gazebo_msgs::SetLinkStateResponse :datatype-) "gazebo_msgs/SetLinkStateResponse")
(setf (get gazebo_msgs::SetLinkStateResponse :definition-)
      "gazebo_msgs/LinkState link_state

================================================================================
MSG: gazebo_msgs/LinkState
# @todo: FIXME: sets pose and twist of a link.  All children link poses/twists of the URDF tree are not updated accordingly, but should be.
string link_name            # link name, link_names are in gazebo scoped name notation, [model_name::body_name]
geometry_msgs/Pose pose     # desired pose in reference frame
geometry_msgs/Twist twist   # desired twist in reference frame
string reference_frame      # set pose/twist relative to the frame of this link/body
                            # leave empty or \"world\" or \"map\" defaults to world-frame

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

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
---
bool success
string status_message

")



(provide :gazebo_msgs/SetLinkState "8a5146eb66ae4d26b0860b08f3f271be")


