;; Auto-generated. Do not edit!


(when (boundp 'gazebo_msgs::SetModelState)
  (if (not (find-package "GAZEBO_MSGS"))
    (make-package "GAZEBO_MSGS"))
  (shadow 'SetModelState (find-package "GAZEBO_MSGS")))
(unless (find-package "GAZEBO_MSGS::SETMODELSTATE")
  (make-package "GAZEBO_MSGS::SETMODELSTATE"))
(unless (find-package "GAZEBO_MSGS::SETMODELSTATEREQUEST")
  (make-package "GAZEBO_MSGS::SETMODELSTATEREQUEST"))
(unless (find-package "GAZEBO_MSGS::SETMODELSTATERESPONSE")
  (make-package "GAZEBO_MSGS::SETMODELSTATERESPONSE"))

(in-package "ROS")





(defclass gazebo_msgs::SetModelStateRequest
  :super ros::object
  :slots (_model_state ))

(defmethod gazebo_msgs::SetModelStateRequest
  (:init
   (&key
    ((:model_state __model_state) (instance gazebo_msgs::ModelState :init))
    )
   (send-super :init)
   (setq _model_state __model_state)
   self)
  (:model_state
   (&rest __model_state)
   (if (keywordp (car __model_state))
       (send* _model_state __model_state)
     (progn
       (if __model_state (setq _model_state (car __model_state)))
       _model_state)))
  (:serialization-length
   ()
   (+
    ;; gazebo_msgs/ModelState _model_state
    (send _model_state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; gazebo_msgs/ModelState _model_state
       (send _model_state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; gazebo_msgs/ModelState _model_state
     (send _model_state :deserialize buf ptr-) (incf ptr- (send _model_state :serialization-length))
   ;;
   self)
  )

(defclass gazebo_msgs::SetModelStateResponse
  :super ros::object
  :slots (_success _status_message ))

(defmethod gazebo_msgs::SetModelStateResponse
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

(defclass gazebo_msgs::SetModelState
  :super ros::object
  :slots ())

(setf (get gazebo_msgs::SetModelState :md5sum-) "5b3ab0281d4f5445def017e3a2e4a07b")
(setf (get gazebo_msgs::SetModelState :datatype-) "gazebo_msgs/SetModelState")
(setf (get gazebo_msgs::SetModelState :request) gazebo_msgs::SetModelStateRequest)
(setf (get gazebo_msgs::SetModelState :response) gazebo_msgs::SetModelStateResponse)

(defmethod gazebo_msgs::SetModelStateRequest
  (:response () (instance gazebo_msgs::SetModelStateResponse :init)))

(setf (get gazebo_msgs::SetModelStateRequest :md5sum-) "5b3ab0281d4f5445def017e3a2e4a07b")
(setf (get gazebo_msgs::SetModelStateRequest :datatype-) "gazebo_msgs/SetModelStateRequest")
(setf (get gazebo_msgs::SetModelStateRequest :definition-)
      "gazebo_msgs/ModelState model_state

================================================================================
MSG: gazebo_msgs/ModelState
# Set Gazebo Model pose and twist
string model_name           # model to set state (pose and twist)
geometry_msgs/Pose pose     # desired pose in reference frame
geometry_msgs/Twist twist   # desired twist in reference frame
string reference_frame      # set pose/twist relative to the frame of this entity (Body/Model)
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

(setf (get gazebo_msgs::SetModelStateResponse :md5sum-) "5b3ab0281d4f5445def017e3a2e4a07b")
(setf (get gazebo_msgs::SetModelStateResponse :datatype-) "gazebo_msgs/SetModelStateResponse")
(setf (get gazebo_msgs::SetModelStateResponse :definition-)
      "gazebo_msgs/ModelState model_state

================================================================================
MSG: gazebo_msgs/ModelState
# Set Gazebo Model pose and twist
string model_name           # model to set state (pose and twist)
geometry_msgs/Pose pose     # desired pose in reference frame
geometry_msgs/Twist twist   # desired twist in reference frame
string reference_frame      # set pose/twist relative to the frame of this entity (Body/Model)
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



(provide :gazebo_msgs/SetModelState "5b3ab0281d4f5445def017e3a2e4a07b")


