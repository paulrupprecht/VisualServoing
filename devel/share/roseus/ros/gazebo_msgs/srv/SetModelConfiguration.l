;; Auto-generated. Do not edit!


(when (boundp 'gazebo_msgs::SetModelConfiguration)
  (if (not (find-package "GAZEBO_MSGS"))
    (make-package "GAZEBO_MSGS"))
  (shadow 'SetModelConfiguration (find-package "GAZEBO_MSGS")))
(unless (find-package "GAZEBO_MSGS::SETMODELCONFIGURATION")
  (make-package "GAZEBO_MSGS::SETMODELCONFIGURATION"))
(unless (find-package "GAZEBO_MSGS::SETMODELCONFIGURATIONREQUEST")
  (make-package "GAZEBO_MSGS::SETMODELCONFIGURATIONREQUEST"))
(unless (find-package "GAZEBO_MSGS::SETMODELCONFIGURATIONRESPONSE")
  (make-package "GAZEBO_MSGS::SETMODELCONFIGURATIONRESPONSE"))

(in-package "ROS")





(defclass gazebo_msgs::SetModelConfigurationRequest
  :super ros::object
  :slots (_model_name _urdf_param_name _joint_names _joint_positions ))

(defmethod gazebo_msgs::SetModelConfigurationRequest
  (:init
   (&key
    ((:model_name __model_name) "")
    ((:urdf_param_name __urdf_param_name) "")
    ((:joint_names __joint_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:joint_positions __joint_positions) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _model_name (string __model_name))
   (setq _urdf_param_name (string __urdf_param_name))
   (setq _joint_names __joint_names)
   (setq _joint_positions __joint_positions)
   self)
  (:model_name
   (&optional __model_name)
   (if __model_name (setq _model_name __model_name)) _model_name)
  (:urdf_param_name
   (&optional __urdf_param_name)
   (if __urdf_param_name (setq _urdf_param_name __urdf_param_name)) _urdf_param_name)
  (:joint_names
   (&optional __joint_names)
   (if __joint_names (setq _joint_names __joint_names)) _joint_names)
  (:joint_positions
   (&optional __joint_positions)
   (if __joint_positions (setq _joint_positions __joint_positions)) _joint_positions)
  (:serialization-length
   ()
   (+
    ;; string _model_name
    4 (length _model_name)
    ;; string _urdf_param_name
    4 (length _urdf_param_name)
    ;; string[] _joint_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _joint_names)) 4
    ;; float64[] _joint_positions
    (* 8    (length _joint_positions)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _model_name
       (write-long (length _model_name) s) (princ _model_name s)
     ;; string _urdf_param_name
       (write-long (length _urdf_param_name) s) (princ _urdf_param_name s)
     ;; string[] _joint_names
     (write-long (length _joint_names) s)
     (dolist (elem _joint_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _joint_positions
     (write-long (length _joint_positions) s)
     (dotimes (i (length _joint_positions))
       (sys::poke (elt _joint_positions i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _model_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _urdf_param_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _urdf_param_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _joint_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _joint_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _joint_positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_positions (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_positions i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass gazebo_msgs::SetModelConfigurationResponse
  :super ros::object
  :slots (_success _status_message ))

(defmethod gazebo_msgs::SetModelConfigurationResponse
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

(defclass gazebo_msgs::SetModelConfiguration
  :super ros::object
  :slots ())

(setf (get gazebo_msgs::SetModelConfiguration :md5sum-) "10e3139d3b669c40afc057d38956fff7")
(setf (get gazebo_msgs::SetModelConfiguration :datatype-) "gazebo_msgs/SetModelConfiguration")
(setf (get gazebo_msgs::SetModelConfiguration :request) gazebo_msgs::SetModelConfigurationRequest)
(setf (get gazebo_msgs::SetModelConfiguration :response) gazebo_msgs::SetModelConfigurationResponse)

(defmethod gazebo_msgs::SetModelConfigurationRequest
  (:response () (instance gazebo_msgs::SetModelConfigurationResponse :init)))

(setf (get gazebo_msgs::SetModelConfigurationRequest :md5sum-) "10e3139d3b669c40afc057d38956fff7")
(setf (get gazebo_msgs::SetModelConfigurationRequest :datatype-) "gazebo_msgs/SetModelConfigurationRequest")
(setf (get gazebo_msgs::SetModelConfigurationRequest :definition-)
      "
string model_name
string urdf_param_name

string[] joint_names
float64[] joint_positions
---
bool success
string status_message

")

(setf (get gazebo_msgs::SetModelConfigurationResponse :md5sum-) "10e3139d3b669c40afc057d38956fff7")
(setf (get gazebo_msgs::SetModelConfigurationResponse :datatype-) "gazebo_msgs/SetModelConfigurationResponse")
(setf (get gazebo_msgs::SetModelConfigurationResponse :definition-)
      "
string model_name
string urdf_param_name

string[] joint_names
float64[] joint_positions
---
bool success
string status_message

")



(provide :gazebo_msgs/SetModelConfiguration "10e3139d3b669c40afc057d38956fff7")


