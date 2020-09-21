;; Auto-generated. Do not edit!


(when (boundp 'ur_dashboard_msgs::GetSafetyMode)
  (if (not (find-package "UR_DASHBOARD_MSGS"))
    (make-package "UR_DASHBOARD_MSGS"))
  (shadow 'GetSafetyMode (find-package "UR_DASHBOARD_MSGS")))
(unless (find-package "UR_DASHBOARD_MSGS::GETSAFETYMODE")
  (make-package "UR_DASHBOARD_MSGS::GETSAFETYMODE"))
(unless (find-package "UR_DASHBOARD_MSGS::GETSAFETYMODEREQUEST")
  (make-package "UR_DASHBOARD_MSGS::GETSAFETYMODEREQUEST"))
(unless (find-package "UR_DASHBOARD_MSGS::GETSAFETYMODERESPONSE")
  (make-package "UR_DASHBOARD_MSGS::GETSAFETYMODERESPONSE"))

(in-package "ROS")





(defclass ur_dashboard_msgs::GetSafetyModeRequest
  :super ros::object
  :slots ())

(defmethod ur_dashboard_msgs::GetSafetyModeRequest
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

(defclass ur_dashboard_msgs::GetSafetyModeResponse
  :super ros::object
  :slots (_safety_mode _answer _success ))

(defmethod ur_dashboard_msgs::GetSafetyModeResponse
  (:init
   (&key
    ((:safety_mode __safety_mode) (instance ur_dashboard_msgs::SafetyMode :init))
    ((:answer __answer) "")
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _safety_mode __safety_mode)
   (setq _answer (string __answer))
   (setq _success __success)
   self)
  (:safety_mode
   (&rest __safety_mode)
   (if (keywordp (car __safety_mode))
       (send* _safety_mode __safety_mode)
     (progn
       (if __safety_mode (setq _safety_mode (car __safety_mode)))
       _safety_mode)))
  (:answer
   (&optional __answer)
   (if __answer (setq _answer __answer)) _answer)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; ur_dashboard_msgs/SafetyMode _safety_mode
    (send _safety_mode :serialization-length)
    ;; string _answer
    4 (length _answer)
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ur_dashboard_msgs/SafetyMode _safety_mode
       (send _safety_mode :serialize s)
     ;; string _answer
       (write-long (length _answer) s) (princ _answer s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ur_dashboard_msgs/SafetyMode _safety_mode
     (send _safety_mode :deserialize buf ptr-) (incf ptr- (send _safety_mode :serialization-length))
   ;; string _answer
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _answer (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ur_dashboard_msgs::GetSafetyMode
  :super ros::object
  :slots ())

(setf (get ur_dashboard_msgs::GetSafetyMode :md5sum-) "42900ff79a0c74f885536dc5add71b7e")
(setf (get ur_dashboard_msgs::GetSafetyMode :datatype-) "ur_dashboard_msgs/GetSafetyMode")
(setf (get ur_dashboard_msgs::GetSafetyMode :request) ur_dashboard_msgs::GetSafetyModeRequest)
(setf (get ur_dashboard_msgs::GetSafetyMode :response) ur_dashboard_msgs::GetSafetyModeResponse)

(defmethod ur_dashboard_msgs::GetSafetyModeRequest
  (:response () (instance ur_dashboard_msgs::GetSafetyModeResponse :init)))

(setf (get ur_dashboard_msgs::GetSafetyModeRequest :md5sum-) "42900ff79a0c74f885536dc5add71b7e")
(setf (get ur_dashboard_msgs::GetSafetyModeRequest :datatype-) "ur_dashboard_msgs/GetSafetyModeRequest")
(setf (get ur_dashboard_msgs::GetSafetyModeRequest :definition-)
      "---
SafetyMode safety_mode
string answer
bool success


================================================================================
MSG: ur_dashboard_msgs/SafetyMode
uint8 NORMAL=1
uint8 REDUCED=2
uint8 PROTECTIVE_STOP=3
uint8 RECOVERY=4
uint8 SAFEGUARD_STOP=5
uint8 SYSTEM_EMERGENCY_STOP=6
uint8 ROBOT_EMERGENCY_STOP=7
uint8 VIOLATION=8
uint8 FAULT=9
uint8 VALIDATE_JOINT_ID=10
uint8 UNDEFINED_SAFETY_MODE=11
uint8 AUTOMATIC_MODE_SAFEGUARD_STOP=12
uint8 SYSTEM_THREE_POSITION_ENABLING_STOP=13

uint8 mode
")

(setf (get ur_dashboard_msgs::GetSafetyModeResponse :md5sum-) "42900ff79a0c74f885536dc5add71b7e")
(setf (get ur_dashboard_msgs::GetSafetyModeResponse :datatype-) "ur_dashboard_msgs/GetSafetyModeResponse")
(setf (get ur_dashboard_msgs::GetSafetyModeResponse :definition-)
      "---
SafetyMode safety_mode
string answer
bool success


================================================================================
MSG: ur_dashboard_msgs/SafetyMode
uint8 NORMAL=1
uint8 REDUCED=2
uint8 PROTECTIVE_STOP=3
uint8 RECOVERY=4
uint8 SAFEGUARD_STOP=5
uint8 SYSTEM_EMERGENCY_STOP=6
uint8 ROBOT_EMERGENCY_STOP=7
uint8 VIOLATION=8
uint8 FAULT=9
uint8 VALIDATE_JOINT_ID=10
uint8 UNDEFINED_SAFETY_MODE=11
uint8 AUTOMATIC_MODE_SAFEGUARD_STOP=12
uint8 SYSTEM_THREE_POSITION_ENABLING_STOP=13

uint8 mode
")



(provide :ur_dashboard_msgs/GetSafetyMode "42900ff79a0c74f885536dc5add71b7e")


