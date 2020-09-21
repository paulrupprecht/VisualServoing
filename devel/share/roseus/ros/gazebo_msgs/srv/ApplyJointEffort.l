;; Auto-generated. Do not edit!


(when (boundp 'gazebo_msgs::ApplyJointEffort)
  (if (not (find-package "GAZEBO_MSGS"))
    (make-package "GAZEBO_MSGS"))
  (shadow 'ApplyJointEffort (find-package "GAZEBO_MSGS")))
(unless (find-package "GAZEBO_MSGS::APPLYJOINTEFFORT")
  (make-package "GAZEBO_MSGS::APPLYJOINTEFFORT"))
(unless (find-package "GAZEBO_MSGS::APPLYJOINTEFFORTREQUEST")
  (make-package "GAZEBO_MSGS::APPLYJOINTEFFORTREQUEST"))
(unless (find-package "GAZEBO_MSGS::APPLYJOINTEFFORTRESPONSE")
  (make-package "GAZEBO_MSGS::APPLYJOINTEFFORTRESPONSE"))

(in-package "ROS")





(defclass gazebo_msgs::ApplyJointEffortRequest
  :super ros::object
  :slots (_joint_name _effort _start_time _duration ))

(defmethod gazebo_msgs::ApplyJointEffortRequest
  (:init
   (&key
    ((:joint_name __joint_name) "")
    ((:effort __effort) 0.0)
    ((:start_time __start_time) (instance ros::time :init))
    ((:duration __duration) (instance ros::time :init))
    )
   (send-super :init)
   (setq _joint_name (string __joint_name))
   (setq _effort (float __effort))
   (setq _start_time __start_time)
   (setq _duration __duration)
   self)
  (:joint_name
   (&optional __joint_name)
   (if __joint_name (setq _joint_name __joint_name)) _joint_name)
  (:effort
   (&optional __effort)
   (if __effort (setq _effort __effort)) _effort)
  (:start_time
   (&optional __start_time)
   (if __start_time (setq _start_time __start_time)) _start_time)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; string _joint_name
    4 (length _joint_name)
    ;; float64 _effort
    8
    ;; time _start_time
    8
    ;; duration _duration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _joint_name
       (write-long (length _joint_name) s) (princ _joint_name s)
     ;; float64 _effort
       (sys::poke _effort (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; time _start_time
       (write-long (send _start_time :sec) s) (write-long (send _start_time :nsec) s)
     ;; duration _duration
       (write-long (send _duration :sec) s) (write-long (send _duration :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _joint_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _joint_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _effort
     (setq _effort (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; time _start_time
     (send _start_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _start_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; duration _duration
     (send _duration :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _duration :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass gazebo_msgs::ApplyJointEffortResponse
  :super ros::object
  :slots (_success _status_message ))

(defmethod gazebo_msgs::ApplyJointEffortResponse
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

(defclass gazebo_msgs::ApplyJointEffort
  :super ros::object
  :slots ())

(setf (get gazebo_msgs::ApplyJointEffort :md5sum-) "c0039811b8cc919490b3cff748cdf46b")
(setf (get gazebo_msgs::ApplyJointEffort :datatype-) "gazebo_msgs/ApplyJointEffort")
(setf (get gazebo_msgs::ApplyJointEffort :request) gazebo_msgs::ApplyJointEffortRequest)
(setf (get gazebo_msgs::ApplyJointEffort :response) gazebo_msgs::ApplyJointEffortResponse)

(defmethod gazebo_msgs::ApplyJointEffortRequest
  (:response () (instance gazebo_msgs::ApplyJointEffortResponse :init)))

(setf (get gazebo_msgs::ApplyJointEffortRequest :md5sum-) "c0039811b8cc919490b3cff748cdf46b")
(setf (get gazebo_msgs::ApplyJointEffortRequest :datatype-) "gazebo_msgs/ApplyJointEffortRequest")
(setf (get gazebo_msgs::ApplyJointEffortRequest :definition-)
      "
string joint_name
float64 effort
time start_time

duration duration




---
bool success
string status_message

")

(setf (get gazebo_msgs::ApplyJointEffortResponse :md5sum-) "c0039811b8cc919490b3cff748cdf46b")
(setf (get gazebo_msgs::ApplyJointEffortResponse :datatype-) "gazebo_msgs/ApplyJointEffortResponse")
(setf (get gazebo_msgs::ApplyJointEffortResponse :definition-)
      "
string joint_name
float64 effort
time start_time

duration duration




---
bool success
string status_message

")



(provide :gazebo_msgs/ApplyJointEffort "c0039811b8cc919490b3cff748cdf46b")


