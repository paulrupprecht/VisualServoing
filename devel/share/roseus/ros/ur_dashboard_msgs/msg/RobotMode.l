;; Auto-generated. Do not edit!


(when (boundp 'ur_dashboard_msgs::RobotMode)
  (if (not (find-package "UR_DASHBOARD_MSGS"))
    (make-package "UR_DASHBOARD_MSGS"))
  (shadow 'RobotMode (find-package "UR_DASHBOARD_MSGS")))
(unless (find-package "UR_DASHBOARD_MSGS::ROBOTMODE")
  (make-package "UR_DASHBOARD_MSGS::ROBOTMODE"))

(in-package "ROS")
;;//! \htmlinclude RobotMode.msg.html


(intern "*NO_CONTROLLER*" (find-package "UR_DASHBOARD_MSGS::ROBOTMODE"))
(shadow '*NO_CONTROLLER* (find-package "UR_DASHBOARD_MSGS::ROBOTMODE"))
(defconstant ur_dashboard_msgs::RobotMode::*NO_CONTROLLER* -1)
(intern "*DISCONNECTED*" (find-package "UR_DASHBOARD_MSGS::ROBOTMODE"))
(shadow '*DISCONNECTED* (find-package "UR_DASHBOARD_MSGS::ROBOTMODE"))
(defconstant ur_dashboard_msgs::RobotMode::*DISCONNECTED* 0)
(intern "*CONFIRM_SAFETY*" (find-package "UR_DASHBOARD_MSGS::ROBOTMODE"))
(shadow '*CONFIRM_SAFETY* (find-package "UR_DASHBOARD_MSGS::ROBOTMODE"))
(defconstant ur_dashboard_msgs::RobotMode::*CONFIRM_SAFETY* 1)
(intern "*BOOTING*" (find-package "UR_DASHBOARD_MSGS::ROBOTMODE"))
(shadow '*BOOTING* (find-package "UR_DASHBOARD_MSGS::ROBOTMODE"))
(defconstant ur_dashboard_msgs::RobotMode::*BOOTING* 2)
(intern "*POWER_OFF*" (find-package "UR_DASHBOARD_MSGS::ROBOTMODE"))
(shadow '*POWER_OFF* (find-package "UR_DASHBOARD_MSGS::ROBOTMODE"))
(defconstant ur_dashboard_msgs::RobotMode::*POWER_OFF* 3)
(intern "*POWER_ON*" (find-package "UR_DASHBOARD_MSGS::ROBOTMODE"))
(shadow '*POWER_ON* (find-package "UR_DASHBOARD_MSGS::ROBOTMODE"))
(defconstant ur_dashboard_msgs::RobotMode::*POWER_ON* 4)
(intern "*IDLE*" (find-package "UR_DASHBOARD_MSGS::ROBOTMODE"))
(shadow '*IDLE* (find-package "UR_DASHBOARD_MSGS::ROBOTMODE"))
(defconstant ur_dashboard_msgs::RobotMode::*IDLE* 5)
(intern "*BACKDRIVE*" (find-package "UR_DASHBOARD_MSGS::ROBOTMODE"))
(shadow '*BACKDRIVE* (find-package "UR_DASHBOARD_MSGS::ROBOTMODE"))
(defconstant ur_dashboard_msgs::RobotMode::*BACKDRIVE* 6)
(intern "*RUNNING*" (find-package "UR_DASHBOARD_MSGS::ROBOTMODE"))
(shadow '*RUNNING* (find-package "UR_DASHBOARD_MSGS::ROBOTMODE"))
(defconstant ur_dashboard_msgs::RobotMode::*RUNNING* 7)
(intern "*UPDATING_FIRMWARE*" (find-package "UR_DASHBOARD_MSGS::ROBOTMODE"))
(shadow '*UPDATING_FIRMWARE* (find-package "UR_DASHBOARD_MSGS::ROBOTMODE"))
(defconstant ur_dashboard_msgs::RobotMode::*UPDATING_FIRMWARE* 8)
(defclass ur_dashboard_msgs::RobotMode
  :super ros::object
  :slots (_mode ))

(defmethod ur_dashboard_msgs::RobotMode
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
    ;; int8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _mode 127) (setq _mode (- _mode 256)))
   ;;
   self)
  )

(setf (get ur_dashboard_msgs::RobotMode :md5sum-) "73b72d58742c4889c47118411b03a3b4")
(setf (get ur_dashboard_msgs::RobotMode :datatype-) "ur_dashboard_msgs/RobotMode")
(setf (get ur_dashboard_msgs::RobotMode :definition-)
      "int8 NO_CONTROLLER=-1
int8 DISCONNECTED=0
int8 CONFIRM_SAFETY=1
int8 BOOTING=2
int8 POWER_OFF=3
int8 POWER_ON=4
int8 IDLE=5
int8 BACKDRIVE=6
int8 RUNNING=7
int8 UPDATING_FIRMWARE=8

int8 mode


")



(provide :ur_dashboard_msgs/RobotMode "73b72d58742c4889c47118411b03a3b4")


