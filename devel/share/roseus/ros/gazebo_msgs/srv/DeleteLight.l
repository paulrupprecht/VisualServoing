;; Auto-generated. Do not edit!


(when (boundp 'gazebo_msgs::DeleteLight)
  (if (not (find-package "GAZEBO_MSGS"))
    (make-package "GAZEBO_MSGS"))
  (shadow 'DeleteLight (find-package "GAZEBO_MSGS")))
(unless (find-package "GAZEBO_MSGS::DELETELIGHT")
  (make-package "GAZEBO_MSGS::DELETELIGHT"))
(unless (find-package "GAZEBO_MSGS::DELETELIGHTREQUEST")
  (make-package "GAZEBO_MSGS::DELETELIGHTREQUEST"))
(unless (find-package "GAZEBO_MSGS::DELETELIGHTRESPONSE")
  (make-package "GAZEBO_MSGS::DELETELIGHTRESPONSE"))

(in-package "ROS")





(defclass gazebo_msgs::DeleteLightRequest
  :super ros::object
  :slots (_light_name ))

(defmethod gazebo_msgs::DeleteLightRequest
  (:init
   (&key
    ((:light_name __light_name) "")
    )
   (send-super :init)
   (setq _light_name (string __light_name))
   self)
  (:light_name
   (&optional __light_name)
   (if __light_name (setq _light_name __light_name)) _light_name)
  (:serialization-length
   ()
   (+
    ;; string _light_name
    4 (length _light_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _light_name
       (write-long (length _light_name) s) (princ _light_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _light_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _light_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass gazebo_msgs::DeleteLightResponse
  :super ros::object
  :slots (_success _status_message ))

(defmethod gazebo_msgs::DeleteLightResponse
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

(defclass gazebo_msgs::DeleteLight
  :super ros::object
  :slots ())

(setf (get gazebo_msgs::DeleteLight :md5sum-) "ae11ea8100d536d5b92c2b5917abf912")
(setf (get gazebo_msgs::DeleteLight :datatype-) "gazebo_msgs/DeleteLight")
(setf (get gazebo_msgs::DeleteLight :request) gazebo_msgs::DeleteLightRequest)
(setf (get gazebo_msgs::DeleteLight :response) gazebo_msgs::DeleteLightResponse)

(defmethod gazebo_msgs::DeleteLightRequest
  (:response () (instance gazebo_msgs::DeleteLightResponse :init)))

(setf (get gazebo_msgs::DeleteLightRequest :md5sum-) "ae11ea8100d536d5b92c2b5917abf912")
(setf (get gazebo_msgs::DeleteLightRequest :datatype-) "gazebo_msgs/DeleteLightRequest")
(setf (get gazebo_msgs::DeleteLightRequest :definition-)
      "string light_name
---
bool success
string status_message

")

(setf (get gazebo_msgs::DeleteLightResponse :md5sum-) "ae11ea8100d536d5b92c2b5917abf912")
(setf (get gazebo_msgs::DeleteLightResponse :datatype-) "gazebo_msgs/DeleteLightResponse")
(setf (get gazebo_msgs::DeleteLightResponse :definition-)
      "string light_name
---
bool success
string status_message

")



(provide :gazebo_msgs/DeleteLight "ae11ea8100d536d5b92c2b5917abf912")


