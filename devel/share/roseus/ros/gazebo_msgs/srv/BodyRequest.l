;; Auto-generated. Do not edit!


(when (boundp 'gazebo_msgs::BodyRequest)
  (if (not (find-package "GAZEBO_MSGS"))
    (make-package "GAZEBO_MSGS"))
  (shadow 'BodyRequest (find-package "GAZEBO_MSGS")))
(unless (find-package "GAZEBO_MSGS::BODYREQUEST")
  (make-package "GAZEBO_MSGS::BODYREQUEST"))
(unless (find-package "GAZEBO_MSGS::BODYREQUESTREQUEST")
  (make-package "GAZEBO_MSGS::BODYREQUESTREQUEST"))
(unless (find-package "GAZEBO_MSGS::BODYREQUESTRESPONSE")
  (make-package "GAZEBO_MSGS::BODYREQUESTRESPONSE"))

(in-package "ROS")





(defclass gazebo_msgs::BodyRequestRequest
  :super ros::object
  :slots (_body_name ))

(defmethod gazebo_msgs::BodyRequestRequest
  (:init
   (&key
    ((:body_name __body_name) "")
    )
   (send-super :init)
   (setq _body_name (string __body_name))
   self)
  (:body_name
   (&optional __body_name)
   (if __body_name (setq _body_name __body_name)) _body_name)
  (:serialization-length
   ()
   (+
    ;; string _body_name
    4 (length _body_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _body_name
       (write-long (length _body_name) s) (princ _body_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _body_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _body_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass gazebo_msgs::BodyRequestResponse
  :super ros::object
  :slots ())

(defmethod gazebo_msgs::BodyRequestResponse
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

(defclass gazebo_msgs::BodyRequest
  :super ros::object
  :slots ())

(setf (get gazebo_msgs::BodyRequest :md5sum-) "5eade9afe7f232d78005bd0cafeab755")
(setf (get gazebo_msgs::BodyRequest :datatype-) "gazebo_msgs/BodyRequest")
(setf (get gazebo_msgs::BodyRequest :request) gazebo_msgs::BodyRequestRequest)
(setf (get gazebo_msgs::BodyRequest :response) gazebo_msgs::BodyRequestResponse)

(defmethod gazebo_msgs::BodyRequestRequest
  (:response () (instance gazebo_msgs::BodyRequestResponse :init)))

(setf (get gazebo_msgs::BodyRequestRequest :md5sum-) "5eade9afe7f232d78005bd0cafeab755")
(setf (get gazebo_msgs::BodyRequestRequest :datatype-) "gazebo_msgs/BodyRequestRequest")
(setf (get gazebo_msgs::BodyRequestRequest :definition-)
      "string body_name
---

")

(setf (get gazebo_msgs::BodyRequestResponse :md5sum-) "5eade9afe7f232d78005bd0cafeab755")
(setf (get gazebo_msgs::BodyRequestResponse :datatype-) "gazebo_msgs/BodyRequestResponse")
(setf (get gazebo_msgs::BodyRequestResponse :definition-)
      "string body_name
---

")



(provide :gazebo_msgs/BodyRequest "5eade9afe7f232d78005bd0cafeab755")


