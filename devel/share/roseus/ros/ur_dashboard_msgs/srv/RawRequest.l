;; Auto-generated. Do not edit!


(when (boundp 'ur_dashboard_msgs::RawRequest)
  (if (not (find-package "UR_DASHBOARD_MSGS"))
    (make-package "UR_DASHBOARD_MSGS"))
  (shadow 'RawRequest (find-package "UR_DASHBOARD_MSGS")))
(unless (find-package "UR_DASHBOARD_MSGS::RAWREQUEST")
  (make-package "UR_DASHBOARD_MSGS::RAWREQUEST"))
(unless (find-package "UR_DASHBOARD_MSGS::RAWREQUESTREQUEST")
  (make-package "UR_DASHBOARD_MSGS::RAWREQUESTREQUEST"))
(unless (find-package "UR_DASHBOARD_MSGS::RAWREQUESTRESPONSE")
  (make-package "UR_DASHBOARD_MSGS::RAWREQUESTRESPONSE"))

(in-package "ROS")





(defclass ur_dashboard_msgs::RawRequestRequest
  :super ros::object
  :slots (_query ))

(defmethod ur_dashboard_msgs::RawRequestRequest
  (:init
   (&key
    ((:query __query) "")
    )
   (send-super :init)
   (setq _query (string __query))
   self)
  (:query
   (&optional __query)
   (if __query (setq _query __query)) _query)
  (:serialization-length
   ()
   (+
    ;; string _query
    4 (length _query)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _query
       (write-long (length _query) s) (princ _query s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _query
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _query (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ur_dashboard_msgs::RawRequestResponse
  :super ros::object
  :slots (_answer ))

(defmethod ur_dashboard_msgs::RawRequestResponse
  (:init
   (&key
    ((:answer __answer) "")
    )
   (send-super :init)
   (setq _answer (string __answer))
   self)
  (:answer
   (&optional __answer)
   (if __answer (setq _answer __answer)) _answer)
  (:serialization-length
   ()
   (+
    ;; string _answer
    4 (length _answer)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _answer
       (write-long (length _answer) s) (princ _answer s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _answer
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _answer (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ur_dashboard_msgs::RawRequest
  :super ros::object
  :slots ())

(setf (get ur_dashboard_msgs::RawRequest :md5sum-) "3f9d6cecb9ae062492929b790df89058")
(setf (get ur_dashboard_msgs::RawRequest :datatype-) "ur_dashboard_msgs/RawRequest")
(setf (get ur_dashboard_msgs::RawRequest :request) ur_dashboard_msgs::RawRequestRequest)
(setf (get ur_dashboard_msgs::RawRequest :response) ur_dashboard_msgs::RawRequestResponse)

(defmethod ur_dashboard_msgs::RawRequestRequest
  (:response () (instance ur_dashboard_msgs::RawRequestResponse :init)))

(setf (get ur_dashboard_msgs::RawRequestRequest :md5sum-) "3f9d6cecb9ae062492929b790df89058")
(setf (get ur_dashboard_msgs::RawRequestRequest :datatype-) "ur_dashboard_msgs/RawRequestRequest")
(setf (get ur_dashboard_msgs::RawRequestRequest :definition-)
      "
string query
---
string answer

")

(setf (get ur_dashboard_msgs::RawRequestResponse :md5sum-) "3f9d6cecb9ae062492929b790df89058")
(setf (get ur_dashboard_msgs::RawRequestResponse :datatype-) "ur_dashboard_msgs/RawRequestResponse")
(setf (get ur_dashboard_msgs::RawRequestResponse :definition-)
      "
string query
---
string answer

")



(provide :ur_dashboard_msgs/RawRequest "3f9d6cecb9ae062492929b790df89058")


