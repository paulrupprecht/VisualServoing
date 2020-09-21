;; Auto-generated. Do not edit!


(when (boundp 'ur_dashboard_msgs::AddToLog)
  (if (not (find-package "UR_DASHBOARD_MSGS"))
    (make-package "UR_DASHBOARD_MSGS"))
  (shadow 'AddToLog (find-package "UR_DASHBOARD_MSGS")))
(unless (find-package "UR_DASHBOARD_MSGS::ADDTOLOG")
  (make-package "UR_DASHBOARD_MSGS::ADDTOLOG"))
(unless (find-package "UR_DASHBOARD_MSGS::ADDTOLOGREQUEST")
  (make-package "UR_DASHBOARD_MSGS::ADDTOLOGREQUEST"))
(unless (find-package "UR_DASHBOARD_MSGS::ADDTOLOGRESPONSE")
  (make-package "UR_DASHBOARD_MSGS::ADDTOLOGRESPONSE"))

(in-package "ROS")





(defclass ur_dashboard_msgs::AddToLogRequest
  :super ros::object
  :slots (_message ))

(defmethod ur_dashboard_msgs::AddToLogRequest
  (:init
   (&key
    ((:message __message) "")
    )
   (send-super :init)
   (setq _message (string __message))
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ur_dashboard_msgs::AddToLogResponse
  :super ros::object
  :slots (_answer _success ))

(defmethod ur_dashboard_msgs::AddToLogResponse
  (:init
   (&key
    ((:answer __answer) "")
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _answer (string __answer))
   (setq _success __success)
   self)
  (:answer
   (&optional __answer)
   (if __answer (setq _answer __answer)) _answer)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; string _answer
    4 (length _answer)
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _answer
       (write-long (length _answer) s) (princ _answer s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _answer
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _answer (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ur_dashboard_msgs::AddToLog
  :super ros::object
  :slots ())

(setf (get ur_dashboard_msgs::AddToLog :md5sum-) "2054bf354d51f4d6a4dce330cf7bb805")
(setf (get ur_dashboard_msgs::AddToLog :datatype-) "ur_dashboard_msgs/AddToLog")
(setf (get ur_dashboard_msgs::AddToLog :request) ur_dashboard_msgs::AddToLogRequest)
(setf (get ur_dashboard_msgs::AddToLog :response) ur_dashboard_msgs::AddToLogResponse)

(defmethod ur_dashboard_msgs::AddToLogRequest
  (:response () (instance ur_dashboard_msgs::AddToLogResponse :init)))

(setf (get ur_dashboard_msgs::AddToLogRequest :md5sum-) "2054bf354d51f4d6a4dce330cf7bb805")
(setf (get ur_dashboard_msgs::AddToLogRequest :datatype-) "ur_dashboard_msgs/AddToLogRequest")
(setf (get ur_dashboard_msgs::AddToLogRequest :definition-)
      "string message
---
string answer
bool success

")

(setf (get ur_dashboard_msgs::AddToLogResponse :md5sum-) "2054bf354d51f4d6a4dce330cf7bb805")
(setf (get ur_dashboard_msgs::AddToLogResponse :datatype-) "ur_dashboard_msgs/AddToLogResponse")
(setf (get ur_dashboard_msgs::AddToLogResponse :definition-)
      "string message
---
string answer
bool success

")



(provide :ur_dashboard_msgs/AddToLog "2054bf354d51f4d6a4dce330cf7bb805")


