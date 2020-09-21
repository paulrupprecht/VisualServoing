;; Auto-generated. Do not edit!


(when (boundp 'ur_dashboard_msgs::IsProgramRunning)
  (if (not (find-package "UR_DASHBOARD_MSGS"))
    (make-package "UR_DASHBOARD_MSGS"))
  (shadow 'IsProgramRunning (find-package "UR_DASHBOARD_MSGS")))
(unless (find-package "UR_DASHBOARD_MSGS::ISPROGRAMRUNNING")
  (make-package "UR_DASHBOARD_MSGS::ISPROGRAMRUNNING"))
(unless (find-package "UR_DASHBOARD_MSGS::ISPROGRAMRUNNINGREQUEST")
  (make-package "UR_DASHBOARD_MSGS::ISPROGRAMRUNNINGREQUEST"))
(unless (find-package "UR_DASHBOARD_MSGS::ISPROGRAMRUNNINGRESPONSE")
  (make-package "UR_DASHBOARD_MSGS::ISPROGRAMRUNNINGRESPONSE"))

(in-package "ROS")





(defclass ur_dashboard_msgs::IsProgramRunningRequest
  :super ros::object
  :slots ())

(defmethod ur_dashboard_msgs::IsProgramRunningRequest
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

(defclass ur_dashboard_msgs::IsProgramRunningResponse
  :super ros::object
  :slots (_answer _program_running _success ))

(defmethod ur_dashboard_msgs::IsProgramRunningResponse
  (:init
   (&key
    ((:answer __answer) "")
    ((:program_running __program_running) nil)
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _answer (string __answer))
   (setq _program_running __program_running)
   (setq _success __success)
   self)
  (:answer
   (&optional __answer)
   (if __answer (setq _answer __answer)) _answer)
  (:program_running
   (&optional __program_running)
   (if __program_running (setq _program_running __program_running)) _program_running)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; string _answer
    4 (length _answer)
    ;; bool _program_running
    1
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _answer
       (write-long (length _answer) s) (princ _answer s)
     ;; bool _program_running
       (if _program_running (write-byte -1 s) (write-byte 0 s))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _answer
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _answer (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _program_running
     (setq _program_running (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ur_dashboard_msgs::IsProgramRunning
  :super ros::object
  :slots ())

(setf (get ur_dashboard_msgs::IsProgramRunning :md5sum-) "290f0cb02c3a44353957f0a92f954209")
(setf (get ur_dashboard_msgs::IsProgramRunning :datatype-) "ur_dashboard_msgs/IsProgramRunning")
(setf (get ur_dashboard_msgs::IsProgramRunning :request) ur_dashboard_msgs::IsProgramRunningRequest)
(setf (get ur_dashboard_msgs::IsProgramRunning :response) ur_dashboard_msgs::IsProgramRunningResponse)

(defmethod ur_dashboard_msgs::IsProgramRunningRequest
  (:response () (instance ur_dashboard_msgs::IsProgramRunningResponse :init)))

(setf (get ur_dashboard_msgs::IsProgramRunningRequest :md5sum-) "290f0cb02c3a44353957f0a92f954209")
(setf (get ur_dashboard_msgs::IsProgramRunningRequest :datatype-) "ur_dashboard_msgs/IsProgramRunningRequest")
(setf (get ur_dashboard_msgs::IsProgramRunningRequest :definition-)
      "---
string answer
bool program_running
bool success

")

(setf (get ur_dashboard_msgs::IsProgramRunningResponse :md5sum-) "290f0cb02c3a44353957f0a92f954209")
(setf (get ur_dashboard_msgs::IsProgramRunningResponse :datatype-) "ur_dashboard_msgs/IsProgramRunningResponse")
(setf (get ur_dashboard_msgs::IsProgramRunningResponse :definition-)
      "---
string answer
bool program_running
bool success

")



(provide :ur_dashboard_msgs/IsProgramRunning "290f0cb02c3a44353957f0a92f954209")


