;; Auto-generated. Do not edit!


(when (boundp 'ur_dashboard_msgs::SafetyMode)
  (if (not (find-package "UR_DASHBOARD_MSGS"))
    (make-package "UR_DASHBOARD_MSGS"))
  (shadow 'SafetyMode (find-package "UR_DASHBOARD_MSGS")))
(unless (find-package "UR_DASHBOARD_MSGS::SAFETYMODE")
  (make-package "UR_DASHBOARD_MSGS::SAFETYMODE"))

(in-package "ROS")
;;//! \htmlinclude SafetyMode.msg.html


(intern "*NORMAL*" (find-package "UR_DASHBOARD_MSGS::SAFETYMODE"))
(shadow '*NORMAL* (find-package "UR_DASHBOARD_MSGS::SAFETYMODE"))
(defconstant ur_dashboard_msgs::SafetyMode::*NORMAL* 1)
(intern "*REDUCED*" (find-package "UR_DASHBOARD_MSGS::SAFETYMODE"))
(shadow '*REDUCED* (find-package "UR_DASHBOARD_MSGS::SAFETYMODE"))
(defconstant ur_dashboard_msgs::SafetyMode::*REDUCED* 2)
(intern "*PROTECTIVE_STOP*" (find-package "UR_DASHBOARD_MSGS::SAFETYMODE"))
(shadow '*PROTECTIVE_STOP* (find-package "UR_DASHBOARD_MSGS::SAFETYMODE"))
(defconstant ur_dashboard_msgs::SafetyMode::*PROTECTIVE_STOP* 3)
(intern "*RECOVERY*" (find-package "UR_DASHBOARD_MSGS::SAFETYMODE"))
(shadow '*RECOVERY* (find-package "UR_DASHBOARD_MSGS::SAFETYMODE"))
(defconstant ur_dashboard_msgs::SafetyMode::*RECOVERY* 4)
(intern "*SAFEGUARD_STOP*" (find-package "UR_DASHBOARD_MSGS::SAFETYMODE"))
(shadow '*SAFEGUARD_STOP* (find-package "UR_DASHBOARD_MSGS::SAFETYMODE"))
(defconstant ur_dashboard_msgs::SafetyMode::*SAFEGUARD_STOP* 5)
(intern "*SYSTEM_EMERGENCY_STOP*" (find-package "UR_DASHBOARD_MSGS::SAFETYMODE"))
(shadow '*SYSTEM_EMERGENCY_STOP* (find-package "UR_DASHBOARD_MSGS::SAFETYMODE"))
(defconstant ur_dashboard_msgs::SafetyMode::*SYSTEM_EMERGENCY_STOP* 6)
(intern "*ROBOT_EMERGENCY_STOP*" (find-package "UR_DASHBOARD_MSGS::SAFETYMODE"))
(shadow '*ROBOT_EMERGENCY_STOP* (find-package "UR_DASHBOARD_MSGS::SAFETYMODE"))
(defconstant ur_dashboard_msgs::SafetyMode::*ROBOT_EMERGENCY_STOP* 7)
(intern "*VIOLATION*" (find-package "UR_DASHBOARD_MSGS::SAFETYMODE"))
(shadow '*VIOLATION* (find-package "UR_DASHBOARD_MSGS::SAFETYMODE"))
(defconstant ur_dashboard_msgs::SafetyMode::*VIOLATION* 8)
(intern "*FAULT*" (find-package "UR_DASHBOARD_MSGS::SAFETYMODE"))
(shadow '*FAULT* (find-package "UR_DASHBOARD_MSGS::SAFETYMODE"))
(defconstant ur_dashboard_msgs::SafetyMode::*FAULT* 9)
(intern "*VALIDATE_JOINT_ID*" (find-package "UR_DASHBOARD_MSGS::SAFETYMODE"))
(shadow '*VALIDATE_JOINT_ID* (find-package "UR_DASHBOARD_MSGS::SAFETYMODE"))
(defconstant ur_dashboard_msgs::SafetyMode::*VALIDATE_JOINT_ID* 10)
(intern "*UNDEFINED_SAFETY_MODE*" (find-package "UR_DASHBOARD_MSGS::SAFETYMODE"))
(shadow '*UNDEFINED_SAFETY_MODE* (find-package "UR_DASHBOARD_MSGS::SAFETYMODE"))
(defconstant ur_dashboard_msgs::SafetyMode::*UNDEFINED_SAFETY_MODE* 11)
(intern "*AUTOMATIC_MODE_SAFEGUARD_STOP*" (find-package "UR_DASHBOARD_MSGS::SAFETYMODE"))
(shadow '*AUTOMATIC_MODE_SAFEGUARD_STOP* (find-package "UR_DASHBOARD_MSGS::SAFETYMODE"))
(defconstant ur_dashboard_msgs::SafetyMode::*AUTOMATIC_MODE_SAFEGUARD_STOP* 12)
(intern "*SYSTEM_THREE_POSITION_ENABLING_STOP*" (find-package "UR_DASHBOARD_MSGS::SAFETYMODE"))
(shadow '*SYSTEM_THREE_POSITION_ENABLING_STOP* (find-package "UR_DASHBOARD_MSGS::SAFETYMODE"))
(defconstant ur_dashboard_msgs::SafetyMode::*SYSTEM_THREE_POSITION_ENABLING_STOP* 13)
(defclass ur_dashboard_msgs::SafetyMode
  :super ros::object
  :slots (_mode ))

(defmethod ur_dashboard_msgs::SafetyMode
  (:init
   (&key
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; uint8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ur_dashboard_msgs::SafetyMode :md5sum-) "5da08725a63d4237bad689481131a84b")
(setf (get ur_dashboard_msgs::SafetyMode :datatype-) "ur_dashboard_msgs/SafetyMode")
(setf (get ur_dashboard_msgs::SafetyMode :definition-)
      "uint8 NORMAL=1
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



(provide :ur_dashboard_msgs/SafetyMode "5da08725a63d4237bad689481131a84b")


