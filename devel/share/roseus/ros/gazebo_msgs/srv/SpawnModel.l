;; Auto-generated. Do not edit!


(when (boundp 'gazebo_msgs::SpawnModel)
  (if (not (find-package "GAZEBO_MSGS"))
    (make-package "GAZEBO_MSGS"))
  (shadow 'SpawnModel (find-package "GAZEBO_MSGS")))
(unless (find-package "GAZEBO_MSGS::SPAWNMODEL")
  (make-package "GAZEBO_MSGS::SPAWNMODEL"))
(unless (find-package "GAZEBO_MSGS::SPAWNMODELREQUEST")
  (make-package "GAZEBO_MSGS::SPAWNMODELREQUEST"))
(unless (find-package "GAZEBO_MSGS::SPAWNMODELRESPONSE")
  (make-package "GAZEBO_MSGS::SPAWNMODELRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass gazebo_msgs::SpawnModelRequest
  :super ros::object
  :slots (_model_name _model_xml _robot_namespace _initial_pose _reference_frame ))

(defmethod gazebo_msgs::SpawnModelRequest
  (:init
   (&key
    ((:model_name __model_name) "")
    ((:model_xml __model_xml) "")
    ((:robot_namespace __robot_namespace) "")
    ((:initial_pose __initial_pose) (instance geometry_msgs::Pose :init))
    ((:reference_frame __reference_frame) "")
    )
   (send-super :init)
   (setq _model_name (string __model_name))
   (setq _model_xml (string __model_xml))
   (setq _robot_namespace (string __robot_namespace))
   (setq _initial_pose __initial_pose)
   (setq _reference_frame (string __reference_frame))
   self)
  (:model_name
   (&optional __model_name)
   (if __model_name (setq _model_name __model_name)) _model_name)
  (:model_xml
   (&optional __model_xml)
   (if __model_xml (setq _model_xml __model_xml)) _model_xml)
  (:robot_namespace
   (&optional __robot_namespace)
   (if __robot_namespace (setq _robot_namespace __robot_namespace)) _robot_namespace)
  (:initial_pose
   (&rest __initial_pose)
   (if (keywordp (car __initial_pose))
       (send* _initial_pose __initial_pose)
     (progn
       (if __initial_pose (setq _initial_pose (car __initial_pose)))
       _initial_pose)))
  (:reference_frame
   (&optional __reference_frame)
   (if __reference_frame (setq _reference_frame __reference_frame)) _reference_frame)
  (:serialization-length
   ()
   (+
    ;; string _model_name
    4 (length _model_name)
    ;; string _model_xml
    4 (length _model_xml)
    ;; string _robot_namespace
    4 (length _robot_namespace)
    ;; geometry_msgs/Pose _initial_pose
    (send _initial_pose :serialization-length)
    ;; string _reference_frame
    4 (length _reference_frame)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _model_name
       (write-long (length _model_name) s) (princ _model_name s)
     ;; string _model_xml
       (write-long (length _model_xml) s) (princ _model_xml s)
     ;; string _robot_namespace
       (write-long (length _robot_namespace) s) (princ _robot_namespace s)
     ;; geometry_msgs/Pose _initial_pose
       (send _initial_pose :serialize s)
     ;; string _reference_frame
       (write-long (length _reference_frame) s) (princ _reference_frame s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _model_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _model_xml
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model_xml (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _robot_namespace
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_namespace (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _initial_pose
     (send _initial_pose :deserialize buf ptr-) (incf ptr- (send _initial_pose :serialization-length))
   ;; string _reference_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reference_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass gazebo_msgs::SpawnModelResponse
  :super ros::object
  :slots (_success _status_message ))

(defmethod gazebo_msgs::SpawnModelResponse
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

(defclass gazebo_msgs::SpawnModel
  :super ros::object
  :slots ())

(setf (get gazebo_msgs::SpawnModel :md5sum-) "9ed9c82c96abe1a00c3e8cdaeee24413")
(setf (get gazebo_msgs::SpawnModel :datatype-) "gazebo_msgs/SpawnModel")
(setf (get gazebo_msgs::SpawnModel :request) gazebo_msgs::SpawnModelRequest)
(setf (get gazebo_msgs::SpawnModel :response) gazebo_msgs::SpawnModelResponse)

(defmethod gazebo_msgs::SpawnModelRequest
  (:response () (instance gazebo_msgs::SpawnModelResponse :init)))

(setf (get gazebo_msgs::SpawnModelRequest :md5sum-) "9ed9c82c96abe1a00c3e8cdaeee24413")
(setf (get gazebo_msgs::SpawnModelRequest :datatype-) "gazebo_msgs/SpawnModelRequest")
(setf (get gazebo_msgs::SpawnModelRequest :definition-)
      "string model_name
string model_xml
string robot_namespace
geometry_msgs/Pose initial_pose
string reference_frame




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
---
bool success
string status_message

")

(setf (get gazebo_msgs::SpawnModelResponse :md5sum-) "9ed9c82c96abe1a00c3e8cdaeee24413")
(setf (get gazebo_msgs::SpawnModelResponse :datatype-) "gazebo_msgs/SpawnModelResponse")
(setf (get gazebo_msgs::SpawnModelResponse :definition-)
      "string model_name
string model_xml
string robot_namespace
geometry_msgs/Pose initial_pose
string reference_frame




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
---
bool success
string status_message

")



(provide :gazebo_msgs/SpawnModel "9ed9c82c96abe1a00c3e8cdaeee24413")


