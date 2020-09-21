;; Auto-generated. Do not edit!


(when (boundp 'ur_dashboard_msgs::ProgramState)
  (if (not (find-package "UR_DASHBOARD_MSGS"))
    (make-package "UR_DASHBOARD_MSGS"))
  (shadow 'ProgramState (find-package "UR_DASHBOARD_MSGS")))
(unless (find-package "UR_DASHBOARD_MSGS::PROGRAMSTATE")
  (make-package "UR_DASHBOARD_MSGS::PROGRAMSTATE"))

(in-package "ROS")
;;//! \htmlinclude ProgramState.msg.html


(intern "*STOPPED*" (find-package "UR_DASHBOARD_MSGS::PROGRAMSTATE"))
(shadow '*STOPPED* (find-package "UR_DASHBOARD_MSGS::PROGRAMSTATE"))
(defconstant ur_dashboard_msgs::ProgramState::*STOPPED* "STOPPED")
(intern "*PLAYING*" (find-package "UR_DASHBOARD_MSGS::PROGRAMSTATE"))
(shadow '*PLAYING* (find-package "UR_DASHBOARD_MSGS::PROGRAMSTATE"))
(defconstant ur_dashboard_msgs::ProgramState::*PLAYING* "PLAYING")
(intern "*PAUSED*" (find-package "UR_DASHBOARD_MSGS::PROGRAMSTATE"))
(shadow '*PAUSED* (find-package "UR_DASHBOARD_MSGS::PROGRAMSTATE"))
(defconstant ur_dashboard_msgs::ProgramState::*PAUSED* "PAUSED")
(defclass ur_dashboard_msgs::ProgramState
  :super ros::object
  :slots (_state ))

(defmethod ur_dashboard_msgs::ProgramState
  (:init
   (&key
    ((:state __state) "")
    )
   (send-super :init)
   (setq _state (string __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; string _state
    4 (length _state)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ur_dashboard_msgs::ProgramState :md5sum-) "0cf2a8b9397741f9e4ac8b71fd354966")
(setf (get ur_dashboard_msgs::ProgramState :datatype-) "ur_dashboard_msgs/ProgramState")
(setf (get ur_dashboard_msgs::ProgramState :definition-)
      "string STOPPED=STOPPED
string PLAYING=PLAYING
string PAUSED=PAUSED

string state


")



(provide :ur_dashboard_msgs/ProgramState "0cf2a8b9397741f9e4ac8b71fd354966")


