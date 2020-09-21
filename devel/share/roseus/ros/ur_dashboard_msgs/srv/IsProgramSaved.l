;; Auto-generated. Do not edit!


(when (boundp 'ur_dashboard_msgs::IsProgramSaved)
  (if (not (find-package "UR_DASHBOARD_MSGS"))
    (make-package "UR_DASHBOARD_MSGS"))
  (shadow 'IsProgramSaved (find-package "UR_DASHBOARD_MSGS")))
(unless (find-package "UR_DASHBOARD_MSGS::ISPROGRAMSAVED")
  (make-package "UR_DASHBOARD_MSGS::ISPROGRAMSAVED"))
(unless (find-package "UR_DASHBOARD_MSGS::ISPROGRAMSAVEDREQUEST")
  (make-package "UR_DASHBOARD_MSGS::ISPROGRAMSAVEDREQUEST"))
(unless (find-package "UR_DASHBOARD_MSGS::ISPROGRAMSAVEDRESPONSE")
  (make-package "UR_DASHBOARD_MSGS::ISPROGRAMSAVEDRESPONSE"))

(in-package "ROS")





(defclass ur_dashboard_msgs::IsProgramSavedRequest
  :super ros::object
  :slots ())

(defmethod ur_dashboard_msgs::IsProgramSavedRequest
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

(defclass ur_dashboard_msgs::IsProgramSavedResponse
  :super ros::object
  :slots (_answer _program_name _program_saved _success ))

(defmethod ur_dashboard_msgs::IsProgramSavedResponse
  (:init
   (&key
    ((:answer __answer) "")
    ((:program_name __program_name) "")
    ((:program_saved __program_saved) nil)
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _answer (string __answer))
   (setq _program_name (string __program_name))
   (setq _program_saved __program_saved)
   (setq _success __success)
   self)
  (:answer
   (&optional __answer)
   (if __answer (setq _answer __answer)) _answer)
  (:program_name
   (&optional __program_name)
   (if __program_name (setq _program_name __program_name)) _program_name)
  (:program_saved
   (&optional __program_saved)
   (if __program_saved (setq _program_saved __program_saved)) _program_saved)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; string _answer
    4 (length _answer)
    ;; string _program_name
    4 (length _program_name)
    ;; bool _program_saved
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
     ;; string _program_name
       (write-long (length _program_name) s) (princ _program_name s)
     ;; bool _program_saved
       (if _program_saved (write-byte -1 s) (write-byte 0 s))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _answer
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _answer (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _program_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _program_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _program_saved
     (setq _program_saved (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ur_dashboard_msgs::IsProgramSaved
  :super ros::object
  :slots ())

(setf (get ur_dashboard_msgs::IsProgramSaved :md5sum-) "e922e4e4f5e4157c23417860c8b2336a")
(setf (get ur_dashboard_msgs::IsProgramSaved :datatype-) "ur_dashboard_msgs/IsProgramSaved")
(setf (get ur_dashboard_msgs::IsProgramSaved :request) ur_dashboard_msgs::IsProgramSavedRequest)
(setf (get ur_dashboard_msgs::IsProgramSaved :response) ur_dashboard_msgs::IsProgramSavedResponse)

(defmethod ur_dashboard_msgs::IsProgramSavedRequest
  (:response () (instance ur_dashboard_msgs::IsProgramSavedResponse :init)))

(setf (get ur_dashboard_msgs::IsProgramSavedRequest :md5sum-) "e922e4e4f5e4157c23417860c8b2336a")
(setf (get ur_dashboard_msgs::IsProgramSavedRequest :datatype-) "ur_dashboard_msgs/IsProgramSavedRequest")
(setf (get ur_dashboard_msgs::IsProgramSavedRequest :definition-)
      "---
string answer
string program_name
bool program_saved
bool success

")

(setf (get ur_dashboard_msgs::IsProgramSavedResponse :md5sum-) "e922e4e4f5e4157c23417860c8b2336a")
(setf (get ur_dashboard_msgs::IsProgramSavedResponse :datatype-) "ur_dashboard_msgs/IsProgramSavedResponse")
(setf (get ur_dashboard_msgs::IsProgramSavedResponse :definition-)
      "---
string answer
string program_name
bool program_saved
bool success

")



(provide :ur_dashboard_msgs/IsProgramSaved "e922e4e4f5e4157c23417860c8b2336a")


