;; Auto-generated. Do not edit!


(when (boundp 'gazebo_msgs::GetLinkState)
  (if (not (find-package "GAZEBO_MSGS"))
    (make-package "GAZEBO_MSGS"))
  (shadow 'GetLinkState (find-package "GAZEBO_MSGS")))
(unless (find-package "GAZEBO_MSGS::GETLINKSTATE")
  (make-package "GAZEBO_MSGS::GETLINKSTATE"))
(unless (find-package "GAZEBO_MSGS::GETLINKSTATEREQUEST")
  (make-package "GAZEBO_MSGS::GETLINKSTATEREQUEST"))
(unless (find-package "GAZEBO_MSGS::GETLINKSTATERESPONSE")
  (make-package "GAZEBO_MSGS::GETLINKSTATERESPONSE"))

(in-package "ROS")





(defclass gazebo_msgs::GetLinkStateRequest
  :super ros::object
  :slots (_link_name _reference_frame ))

(defmethod gazebo_msgs::GetLinkStateRequest
  (:init
   (&key
    ((:link_name __link_name) "")
    ((:reference_frame __reference_frame) "")
    )
   (send-super :init)
   (setq _link_name (string __link_name))
   (setq _reference_frame (string __reference_frame))
   self)
  (:link_name
   (&optional __link_name)
   (if __link_name (setq _link_name __link_name)) _link_name)
  (:reference_frame
   (&optional __reference_frame)
   (if __reference_frame (setq _reference_frame __reference_frame)) _reference_frame)
  (:serialization-length
   ()
   (+
    ;; string _link_name
    4 (length _link_name)
    ;; string _reference_frame
    4 (length _reference_frame)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _link_name
       (write-long (length _link_name) s) (princ _link_name s)
     ;; string _reference_frame
       (write-long (length _reference_frame) s) (princ _reference_frame s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _link_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _link_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _reference_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reference_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass gazebo_msgs::GetLinkStateResponse
  :super ros::object
  :slots (_link_state _success _status_message ))

(defmethod gazebo_msgs::GetLinkStateResponse
  (:init
   (&key
    ((:link_state __link_state) (instance gazebo_msgs::LinkState :init))
    ((:success __success) nil)
    ((:status_message __status_message) "")
    )
   (send-super :init)
   (setq _link_state __link_state)
   (setq _success __success)
   (setq _status_message (string __status_message))
   self)
  (:link_state
   (&rest __link_state)
   (if (keywordp (car __link_state))
       (send* _link_state __link_state)
     (progn
       (if __link_state (setq _link_state (car __link_state)))
       _link_state)))
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:status_message
   (&optional __status_message)
   (if __status_message (setq _status_message __status_message)) _status_message)
  (:serialization-length
   ()
   (+
    ;; gazebo_msgs/LinkState _link_state
    (send _link_state :serialization-length)
    ;; bool _success
    1
    ;; string _status_message
    4 (length _status_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; gazebo_msgs/LinkState _link_state
       (send _link_state :serialize s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _status_message
       (write-long (length _status_message) s) (princ _status_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; gazebo_msgs/LinkState _link_state
     (send _link_state :deserialize buf ptr-) (incf ptr- (send _link_state :serialization-length))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _status_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass gazebo_msgs::GetLinkState
  :super ros::object
  :slots ())

(setf (get gazebo_msgs::GetLinkState :md5sum-) "09d6c98cce97b35f7ab9bd70300657ab")
(setf (get gazebo_msgs::GetLinkState :datatype-) "gazebo_msgs/GetLinkState")
(setf (get gazebo_msgs::GetLinkState :request) gazebo_msgs::GetLinkStateRequest)
(setf (get gazebo_msgs::GetLinkState :response) gazebo_msgs::GetLinkStateResponse)

(defmethod gazebo_msgs::GetLinkStateRequest
  (:response () (instance gazebo_msgs::GetLinkStateResponse :init)))

(setf (get gazebo_msgs::GetLinkStateRequest :md5sum-) "09d6c98cce97b35f7ab9bd70300657ab")
(setf (get gazebo_msgs::GetLinkStateRequest :datatype-) "gazebo_msgs/GetLinkStateRequest")
(setf (get gazebo_msgs::GetLinkStateRequest :definition-)
      "string link_name

string reference_frame


---
gazebo_msgs/LinkState link_state
bool success
string status_message


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
")

(setf (get gazebo_msgs::GetLinkStateResponse :md5sum-) "09d6c98cce97b35f7ab9bd70300657ab")
(setf (get gazebo_msgs::GetLinkStateResponse :datatype-) "gazebo_msgs/GetLinkStateResponse")
(setf (get gazebo_msgs::GetLinkStateResponse :definition-)
      "string link_name

string reference_frame


---
gazebo_msgs/LinkState link_state
bool success
string status_message


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
")



(provide :gazebo_msgs/GetLinkState "09d6c98cce97b35f7ab9bd70300657ab")


