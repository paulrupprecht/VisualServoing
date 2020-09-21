;; Auto-generated. Do not edit!


(when (boundp 'ur_dashboard_msgs::GetLoadedProgram)
  (if (not (find-package "UR_DASHBOARD_MSGS"))
    (make-package "UR_DASHBOARD_MSGS"))
  (shadow 'GetLoadedProgram (find-package "UR_DASHBOARD_MSGS")))
(unless (find-package "UR_DASHBOARD_MSGS::GETLOADEDPROGRAM")
  (make-package "UR_DASHBOARD_MSGS::GETLOADEDPROGRAM"))
(unless (find-package "UR_DASHBOARD_MSGS::GETLOADEDPROGRAMREQUEST")
  (make-package "UR_DASHBOARD_MSGS::GETLOADEDPROGRAMREQUEST"))
(unless (find-package "UR_DASHBOARD_MSGS::GETLOADEDPROGRAMRESPONSE")
  (make-package "UR_DASHBOARD_MSGS::GETLOADEDPROGRAMRESPONSE"))

(in-package "ROS")





(defclass ur_dashboard_msgs::GetLoadedProgramRequest
  :super ros::object
  :slots ())

(defmethod ur_dashboard_msgs::GetLoadedProgramRequest
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

(defclass ur_dashboard_msgs::GetLoadedProgramResponse
  :super ros::object
  :slots (_answer _program_name _success ))

(defmethod ur_dashboard_msgs::GetLoadedProgramResponse
  (:init
   (&key
    ((:answer __answer) "")
    ((:program_name __program_name) "")
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _answer (string __answer))
   (setq _program_name (string __program_name))
   (setq _success __success)
   self)
  (:answer
   (&optional __answer)
   (if __answer (setq _answer __answer)) _answer)
  (:program_name
   (&optional __program_name)
   (if __program_name (setq _program_name __program_name)) _program_name)
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
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ur_dashboard_msgs::GetLoadedProgram
  :super ros::object
  :slots ())

(setf (get ur_dashboard_msgs::GetLoadedProgram :md5sum-) "0193dad3cdb834b9f37e420a88468ebe")
(setf (get ur_dashboard_msgs::GetLoadedProgram :datatype-) "ur_dashboard_msgs/GetLoadedProgram")
(setf (get ur_dashboard_msgs::GetLoadedProgram :request) ur_dashboard_msgs::GetLoadedProgramRequest)
(setf (get ur_dashboard_msgs::GetLoadedProgram :response) ur_dashboard_msgs::GetLoadedProgramResponse)

(defmethod ur_dashboard_msgs::GetLoadedProgramRequest
  (:response () (instance ur_dashboard_msgs::GetLoadedProgramResponse :init)))

(setf (get ur_dashboard_msgs::GetLoadedProgramRequest :md5sum-) "0193dad3cdb834b9f37e420a88468ebe")
(setf (get ur_dashboard_msgs::GetLoadedProgramRequest :datatype-) "ur_dashboard_msgs/GetLoadedProgramRequest")
(setf (get ur_dashboard_msgs::GetLoadedProgramRequest :definition-)
      "---
string answer
string program_name
bool success

")

(setf (get ur_dashboard_msgs::GetLoadedProgramResponse :md5sum-) "0193dad3cdb834b9f37e420a88468ebe")
(setf (get ur_dashboard_msgs::GetLoadedProgramResponse :datatype-) "ur_dashboard_msgs/GetLoadedProgramResponse")
(setf (get ur_dashboard_msgs::GetLoadedProgramResponse :definition-)
      "---
string answer
string program_name
bool success

")



(provide :ur_dashboard_msgs/GetLoadedProgram "0193dad3cdb834b9f37e420a88468ebe")


