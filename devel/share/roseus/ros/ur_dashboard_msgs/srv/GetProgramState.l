;; Auto-generated. Do not edit!


(when (boundp 'ur_dashboard_msgs::GetProgramState)
  (if (not (find-package "UR_DASHBOARD_MSGS"))
    (make-package "UR_DASHBOARD_MSGS"))
  (shadow 'GetProgramState (find-package "UR_DASHBOARD_MSGS")))
(unless (find-package "UR_DASHBOARD_MSGS::GETPROGRAMSTATE")
  (make-package "UR_DASHBOARD_MSGS::GETPROGRAMSTATE"))
(unless (find-package "UR_DASHBOARD_MSGS::GETPROGRAMSTATEREQUEST")
  (make-package "UR_DASHBOARD_MSGS::GETPROGRAMSTATEREQUEST"))
(unless (find-package "UR_DASHBOARD_MSGS::GETPROGRAMSTATERESPONSE")
  (make-package "UR_DASHBOARD_MSGS::GETPROGRAMSTATERESPONSE"))

(in-package "ROS")





(defclass ur_dashboard_msgs::GetProgramStateRequest
  :super ros::object
  :slots ())

(defmethod ur_dashboard_msgs::GetProgramStateRequest
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

(defclass ur_dashboard_msgs::GetProgramStateResponse
  :super ros::object
  :slots (_state _program_name _answer _success ))

(defmethod ur_dashboard_msgs::GetProgramStateResponse
  (:init
   (&key
    ((:state __state) (instance ur_dashboard_msgs::ProgramState :init))
    ((:program_name __program_name) "")
    ((:answer __answer) "")
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _state __state)
   (setq _program_name (string __program_name))
   (setq _answer (string __answer))
   (setq _success __success)
   self)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:program_name
   (&optional __program_name)
   (if __program_name (setq _program_name __program_name)) _program_name)
  (:answer
   (&optional __answer)
   (if __answer (setq _answer __answer)) _answer)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; ur_dashboard_msgs/ProgramState _state
    (send _state :serialization-length)
    ;; string _program_name
    4 (length _program_name)
    ;; string _answer
    4 (length _answer)
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ur_dashboard_msgs/ProgramState _state
       (send _state :serialize s)
     ;; string _program_name
       (write-long (length _program_name) s) (princ _program_name s)
     ;; string _answer
       (write-long (length _answer) s) (princ _answer s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ur_dashboard_msgs/ProgramState _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;; string _program_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _program_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _answer
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _answer (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ur_dashboard_msgs::GetProgramState
  :super ros::object
  :slots ())

(setf (get ur_dashboard_msgs::GetProgramState :md5sum-) "522d35a6f2ebd9702cb1e33489e1aa96")
(setf (get ur_dashboard_msgs::GetProgramState :datatype-) "ur_dashboard_msgs/GetProgramState")
(setf (get ur_dashboard_msgs::GetProgramState :request) ur_dashboard_msgs::GetProgramStateRequest)
(setf (get ur_dashboard_msgs::GetProgramState :response) ur_dashboard_msgs::GetProgramStateResponse)

(defmethod ur_dashboard_msgs::GetProgramStateRequest
  (:response () (instance ur_dashboard_msgs::GetProgramStateResponse :init)))

(setf (get ur_dashboard_msgs::GetProgramStateRequest :md5sum-) "522d35a6f2ebd9702cb1e33489e1aa96")
(setf (get ur_dashboard_msgs::GetProgramStateRequest :datatype-) "ur_dashboard_msgs/GetProgramStateRequest")
(setf (get ur_dashboard_msgs::GetProgramStateRequest :definition-)
      "---
ProgramState state
string program_name
string answer
bool success


================================================================================
MSG: ur_dashboard_msgs/ProgramState
string STOPPED=STOPPED
string PLAYING=PLAYING
string PAUSED=PAUSED

string state

")

(setf (get ur_dashboard_msgs::GetProgramStateResponse :md5sum-) "522d35a6f2ebd9702cb1e33489e1aa96")
(setf (get ur_dashboard_msgs::GetProgramStateResponse :datatype-) "ur_dashboard_msgs/GetProgramStateResponse")
(setf (get ur_dashboard_msgs::GetProgramStateResponse :definition-)
      "---
ProgramState state
string program_name
string answer
bool success


================================================================================
MSG: ur_dashboard_msgs/ProgramState
string STOPPED=STOPPED
string PLAYING=PLAYING
string PAUSED=PAUSED

string state

")



(provide :ur_dashboard_msgs/GetProgramState "522d35a6f2ebd9702cb1e33489e1aa96")


