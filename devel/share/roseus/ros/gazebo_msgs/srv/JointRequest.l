;; Auto-generated. Do not edit!


(when (boundp 'gazebo_msgs::JointRequest)
  (if (not (find-package "GAZEBO_MSGS"))
    (make-package "GAZEBO_MSGS"))
  (shadow 'JointRequest (find-package "GAZEBO_MSGS")))
(unless (find-package "GAZEBO_MSGS::JOINTREQUEST")
  (make-package "GAZEBO_MSGS::JOINTREQUEST"))
(unless (find-package "GAZEBO_MSGS::JOINTREQUESTREQUEST")
  (make-package "GAZEBO_MSGS::JOINTREQUESTREQUEST"))
(unless (find-package "GAZEBO_MSGS::JOINTREQUESTRESPONSE")
  (make-package "GAZEBO_MSGS::JOINTREQUESTRESPONSE"))

(in-package "ROS")





(defclass gazebo_msgs::JointRequestRequest
  :super ros::object
  :slots (_joint_name ))

(defmethod gazebo_msgs::JointRequestRequest
  (:init
   (&key
    ((:joint_name __joint_name) "")
    )
   (send-super :init)
   (setq _joint_name (string __joint_name))
   self)
  (:joint_name
   (&optional __joint_name)
   (if __joint_name (setq _joint_name __joint_name)) _joint_name)
  (:serialization-length
   ()
   (+
    ;; string _joint_name
    4 (length _joint_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _joint_name
       (write-long (length _joint_name) s) (princ _joint_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _joint_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _joint_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass gazebo_msgs::JointRequestResponse
  :super ros::object
  :slots ())

(defmethod gazebo_msgs::JointRequestResponse
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

(defclass gazebo_msgs::JointRequest
  :super ros::object
  :slots ())

(setf (get gazebo_msgs::JointRequest :md5sum-) "0be1351618e1dc030eb7959d9a4902de")
(setf (get gazebo_msgs::JointRequest :datatype-) "gazebo_msgs/JointRequest")
(setf (get gazebo_msgs::JointRequest :request) gazebo_msgs::JointRequestRequest)
(setf (get gazebo_msgs::JointRequest :response) gazebo_msgs::JointRequestResponse)

(defmethod gazebo_msgs::JointRequestRequest
  (:response () (instance gazebo_msgs::JointRequestResponse :init)))

(setf (get gazebo_msgs::JointRequestRequest :md5sum-) "0be1351618e1dc030eb7959d9a4902de")
(setf (get gazebo_msgs::JointRequestRequest :datatype-) "gazebo_msgs/JointRequestRequest")
(setf (get gazebo_msgs::JointRequestRequest :definition-)
      "string joint_name
---


")

(setf (get gazebo_msgs::JointRequestResponse :md5sum-) "0be1351618e1dc030eb7959d9a4902de")
(setf (get gazebo_msgs::JointRequestResponse :datatype-) "gazebo_msgs/JointRequestResponse")
(setf (get gazebo_msgs::JointRequestResponse :definition-)
      "string joint_name
---


")



(provide :gazebo_msgs/JointRequest "0be1351618e1dc030eb7959d9a4902de")


