;; Auto-generated. Do not edit!


(when (boundp 'gazebo_msgs::GetWorldProperties)
  (if (not (find-package "GAZEBO_MSGS"))
    (make-package "GAZEBO_MSGS"))
  (shadow 'GetWorldProperties (find-package "GAZEBO_MSGS")))
(unless (find-package "GAZEBO_MSGS::GETWORLDPROPERTIES")
  (make-package "GAZEBO_MSGS::GETWORLDPROPERTIES"))
(unless (find-package "GAZEBO_MSGS::GETWORLDPROPERTIESREQUEST")
  (make-package "GAZEBO_MSGS::GETWORLDPROPERTIESREQUEST"))
(unless (find-package "GAZEBO_MSGS::GETWORLDPROPERTIESRESPONSE")
  (make-package "GAZEBO_MSGS::GETWORLDPROPERTIESRESPONSE"))

(in-package "ROS")





(defclass gazebo_msgs::GetWorldPropertiesRequest
  :super ros::object
  :slots ())

(defmethod gazebo_msgs::GetWorldPropertiesRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass gazebo_msgs::GetWorldPropertiesResponse
  :super ros::object
  :slots (_sim_time _model_names _rendering_enabled _success _status_message ))

(defmethod gazebo_msgs::GetWorldPropertiesResponse
  (:init
   (&key
    ((:sim_time __sim_time) 0.0)
    ((:model_names __model_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:rendering_enabled __rendering_enabled) nil)
    ((:success __success) nil)
    ((:status_message __status_message) "")
    )
   (send-super :init)
   (setq _sim_time (float __sim_time))
   (setq _model_names __model_names)
   (setq _rendering_enabled __rendering_enabled)
   (setq _success __success)
   (setq _status_message (string __status_message))
   self)
  (:sim_time
   (&optional __sim_time)
   (if __sim_time (setq _sim_time __sim_time)) _sim_time)
  (:model_names
   (&optional __model_names)
   (if __model_names (setq _model_names __model_names)) _model_names)
  (:rendering_enabled
   (&optional __rendering_enabled)
   (if __rendering_enabled (setq _rendering_enabled __rendering_enabled)) _rendering_enabled)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:status_message
   (&optional __status_message)
   (if __status_message (setq _status_message __status_message)) _status_message)
  (:serialization-length
   ()
   (+
    ;; float64 _sim_time
    8
    ;; string[] _model_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _model_names)) 4
    ;; bool _rendering_enabled
    1
    ;; bool _success
    1
    ;; string _status_message
    4 (length _status_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _sim_time
       (sys::poke _sim_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string[] _model_names
     (write-long (length _model_names) s)
     (dolist (elem _model_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; bool _rendering_enabled
       (if _rendering_enabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _status_message
       (write-long (length _status_message) s) (princ _status_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _sim_time
     (setq _sim_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string[] _model_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _model_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _model_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; bool _rendering_enabled
     (setq _rendering_enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _status_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass gazebo_msgs::GetWorldProperties
  :super ros::object
  :slots ())

(setf (get gazebo_msgs::GetWorldProperties :md5sum-) "36bb0f2eccf4d8be971410c22818ba3f")
(setf (get gazebo_msgs::GetWorldProperties :datatype-) "gazebo_msgs/GetWorldProperties")
(setf (get gazebo_msgs::GetWorldProperties :request) gazebo_msgs::GetWorldPropertiesRequest)
(setf (get gazebo_msgs::GetWorldProperties :response) gazebo_msgs::GetWorldPropertiesResponse)

(defmethod gazebo_msgs::GetWorldPropertiesRequest
  (:response () (instance gazebo_msgs::GetWorldPropertiesResponse :init)))

(setf (get gazebo_msgs::GetWorldPropertiesRequest :md5sum-) "36bb0f2eccf4d8be971410c22818ba3f")
(setf (get gazebo_msgs::GetWorldPropertiesRequest :datatype-) "gazebo_msgs/GetWorldPropertiesRequest")
(setf (get gazebo_msgs::GetWorldPropertiesRequest :definition-)
      "---
float64 sim_time
string[] model_names
bool rendering_enabled
bool success
string status_message

")

(setf (get gazebo_msgs::GetWorldPropertiesResponse :md5sum-) "36bb0f2eccf4d8be971410c22818ba3f")
(setf (get gazebo_msgs::GetWorldPropertiesResponse :datatype-) "gazebo_msgs/GetWorldPropertiesResponse")
(setf (get gazebo_msgs::GetWorldPropertiesResponse :definition-)
      "---
float64 sim_time
string[] model_names
bool rendering_enabled
bool success
string status_message

")



(provide :gazebo_msgs/GetWorldProperties "36bb0f2eccf4d8be971410c22818ba3f")


