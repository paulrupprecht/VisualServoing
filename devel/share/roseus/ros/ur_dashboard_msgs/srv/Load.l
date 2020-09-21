;; Auto-generated. Do not edit!


(when (boundp 'ur_dashboard_msgs::Load)
  (if (not (find-package "UR_DASHBOARD_MSGS"))
    (make-package "UR_DASHBOARD_MSGS"))
  (shadow 'Load (find-package "UR_DASHBOARD_MSGS")))
(unless (find-package "UR_DASHBOARD_MSGS::LOAD")
  (make-package "UR_DASHBOARD_MSGS::LOAD"))
(unless (find-package "UR_DASHBOARD_MSGS::LOADREQUEST")
  (make-package "UR_DASHBOARD_MSGS::LOADREQUEST"))
(unless (find-package "UR_DASHBOARD_MSGS::LOADRESPONSE")
  (make-package "UR_DASHBOARD_MSGS::LOADRESPONSE"))

(in-package "ROS")





(defclass ur_dashboard_msgs::LoadRequest
  :super ros::object
  :slots (_filename ))

(defmethod ur_dashboard_msgs::LoadRequest
  (:init
   (&key
    ((:filename __filename) "")
    )
   (send-super :init)
   (setq _filename (string __filename))
   self)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:serialization-length
   ()
   (+
    ;; string _filename
    4 (length _filename)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ur_dashboard_msgs::LoadResponse
  :super ros::object
  :slots (_answer _success ))

(defmethod ur_dashboard_msgs::LoadResponse
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

(defclass ur_dashboard_msgs::Load
  :super ros::object
  :slots ())

(setf (get ur_dashboard_msgs::Load :md5sum-) "abbee7d5c683c0b3af261ba331da1fbb")
(setf (get ur_dashboard_msgs::Load :datatype-) "ur_dashboard_msgs/Load")
(setf (get ur_dashboard_msgs::Load :request) ur_dashboard_msgs::LoadRequest)
(setf (get ur_dashboard_msgs::Load :response) ur_dashboard_msgs::LoadResponse)

(defmethod ur_dashboard_msgs::LoadRequest
  (:response () (instance ur_dashboard_msgs::LoadResponse :init)))

(setf (get ur_dashboard_msgs::LoadRequest :md5sum-) "abbee7d5c683c0b3af261ba331da1fbb")
(setf (get ur_dashboard_msgs::LoadRequest :datatype-) "ur_dashboard_msgs/LoadRequest")
(setf (get ur_dashboard_msgs::LoadRequest :definition-)
      "
string filename
---
string answer
bool success

")

(setf (get ur_dashboard_msgs::LoadResponse :md5sum-) "abbee7d5c683c0b3af261ba331da1fbb")
(setf (get ur_dashboard_msgs::LoadResponse :datatype-) "ur_dashboard_msgs/LoadResponse")
(setf (get ur_dashboard_msgs::LoadResponse :definition-)
      "
string filename
---
string answer
bool success

")



(provide :ur_dashboard_msgs/Load "abbee7d5c683c0b3af261ba331da1fbb")


