;; Auto-generated. Do not edit!


(when (boundp 'ur_dashboard_msgs::GetRobotMode)
  (if (not (find-package "UR_DASHBOARD_MSGS"))
    (make-package "UR_DASHBOARD_MSGS"))
  (shadow 'GetRobotMode (find-package "UR_DASHBOARD_MSGS")))
(unless (find-package "UR_DASHBOARD_MSGS::GETROBOTMODE")
  (make-package "UR_DASHBOARD_MSGS::GETROBOTMODE"))
(unless (find-package "UR_DASHBOARD_MSGS::GETROBOTMODEREQUEST")
  (make-package "UR_DASHBOARD_MSGS::GETROBOTMODEREQUEST"))
(unless (find-package "UR_DASHBOARD_MSGS::GETROBOTMODERESPONSE")
  (make-package "UR_DASHBOARD_MSGS::GETROBOTMODERESPONSE"))

(in-package "ROS")





(defclass ur_dashboard_msgs::GetRobotModeRequest
  :super ros::object
  :slots ())

(defmethod ur_dashboard_msgs::GetRobotModeRequest
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

(defclass ur_dashboard_msgs::GetRobotModeResponse
  :super ros::object
  :slots (_robot_mode _answer _success ))

(defmethod ur_dashboard_msgs::GetRobotModeResponse
  (:init
   (&key
    ((:robot_mode __robot_mode) (instance ur_dashboard_msgs::RobotMode :init))
    ((:answer __answer) "")
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _robot_mode __robot_mode)
   (setq _answer (string __answer))
   (setq _success __success)
   self)
  (:robot_mode
   (&rest __robot_mode)
   (if (keywordp (car __robot_mode))
       (send* _robot_mode __robot_mode)
     (progn
       (if __robot_mode (setq _robot_mode (car __robot_mode)))
       _robot_mode)))
  (:answer
   (&optional __answer)
   (if __answer (setq _answer __answer)) _answer)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; ur_dashboard_msgs/RobotMode _robot_mode
    (send _robot_mode :serialization-length)
    ;; string _answer
    4 (length _answer)
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ur_dashboard_msgs/RobotMode _robot_mode
       (send _robot_mode :serialize s)
     ;; string _answer
       (write-long (length _answer) s) (princ _answer s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ur_dashboard_msgs/RobotMode _robot_mode
     (send _robot_mode :deserialize buf ptr-) (incf ptr- (send _robot_mode :serialization-length))
   ;; string _answer
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _answer (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ur_dashboard_msgs::GetRobotMode
  :super ros::object
  :slots ())

(setf (get ur_dashboard_msgs::GetRobotMode :md5sum-) "ef94c03da2e53bb8c576236bb003fe8a")
(setf (get ur_dashboard_msgs::GetRobotMode :datatype-) "ur_dashboard_msgs/GetRobotMode")
(setf (get ur_dashboard_msgs::GetRobotMode :request) ur_dashboard_msgs::GetRobotModeRequest)
(setf (get ur_dashboard_msgs::GetRobotMode :response) ur_dashboard_msgs::GetRobotModeResponse)

(defmethod ur_dashboard_msgs::GetRobotModeRequest
  (:response () (instance ur_dashboard_msgs::GetRobotModeResponse :init)))

(setf (get ur_dashboard_msgs::GetRobotModeRequest :md5sum-) "ef94c03da2e53bb8c576236bb003fe8a")
(setf (get ur_dashboard_msgs::GetRobotModeRequest :datatype-) "ur_dashboard_msgs/GetRobotModeRequest")
(setf (get ur_dashboard_msgs::GetRobotModeRequest :definition-)
      "---
RobotMode robot_mode
string answer
bool success


================================================================================
MSG: ur_dashboard_msgs/RobotMode
int8 NO_CONTROLLER=-1
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

(setf (get ur_dashboard_msgs::GetRobotModeResponse :md5sum-) "ef94c03da2e53bb8c576236bb003fe8a")
(setf (get ur_dashboard_msgs::GetRobotModeResponse :datatype-) "ur_dashboard_msgs/GetRobotModeResponse")
(setf (get ur_dashboard_msgs::GetRobotModeResponse :definition-)
      "---
RobotMode robot_mode
string answer
bool success


================================================================================
MSG: ur_dashboard_msgs/RobotMode
int8 NO_CONTROLLER=-1
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



(provide :ur_dashboard_msgs/GetRobotMode "ef94c03da2e53bb8c576236bb003fe8a")


