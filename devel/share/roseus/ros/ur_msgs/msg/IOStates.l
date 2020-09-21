;; Auto-generated. Do not edit!


(when (boundp 'ur_msgs::IOStates)
  (if (not (find-package "UR_MSGS"))
    (make-package "UR_MSGS"))
  (shadow 'IOStates (find-package "UR_MSGS")))
(unless (find-package "UR_MSGS::IOSTATES")
  (make-package "UR_MSGS::IOSTATES"))

(in-package "ROS")
;;//! \htmlinclude IOStates.msg.html


(defclass ur_msgs::IOStates
  :super ros::object
  :slots (_digital_in_states _digital_out_states _flag_states _analog_in_states _analog_out_states ))

(defmethod ur_msgs::IOStates
  (:init
   (&key
    ((:digital_in_states __digital_in_states) (let (r) (dotimes (i 0) (push (instance ur_msgs::Digital :init) r)) r))
    ((:digital_out_states __digital_out_states) (let (r) (dotimes (i 0) (push (instance ur_msgs::Digital :init) r)) r))
    ((:flag_states __flag_states) (let (r) (dotimes (i 0) (push (instance ur_msgs::Digital :init) r)) r))
    ((:analog_in_states __analog_in_states) (let (r) (dotimes (i 0) (push (instance ur_msgs::Analog :init) r)) r))
    ((:analog_out_states __analog_out_states) (let (r) (dotimes (i 0) (push (instance ur_msgs::Analog :init) r)) r))
    )
   (send-super :init)
   (setq _digital_in_states __digital_in_states)
   (setq _digital_out_states __digital_out_states)
   (setq _flag_states __flag_states)
   (setq _analog_in_states __analog_in_states)
   (setq _analog_out_states __analog_out_states)
   self)
  (:digital_in_states
   (&rest __digital_in_states)
   (if (keywordp (car __digital_in_states))
       (send* _digital_in_states __digital_in_states)
     (progn
       (if __digital_in_states (setq _digital_in_states (car __digital_in_states)))
       _digital_in_states)))
  (:digital_out_states
   (&rest __digital_out_states)
   (if (keywordp (car __digital_out_states))
       (send* _digital_out_states __digital_out_states)
     (progn
       (if __digital_out_states (setq _digital_out_states (car __digital_out_states)))
       _digital_out_states)))
  (:flag_states
   (&rest __flag_states)
   (if (keywordp (car __flag_states))
       (send* _flag_states __flag_states)
     (progn
       (if __flag_states (setq _flag_states (car __flag_states)))
       _flag_states)))
  (:analog_in_states
   (&rest __analog_in_states)
   (if (keywordp (car __analog_in_states))
       (send* _analog_in_states __analog_in_states)
     (progn
       (if __analog_in_states (setq _analog_in_states (car __analog_in_states)))
       _analog_in_states)))
  (:analog_out_states
   (&rest __analog_out_states)
   (if (keywordp (car __analog_out_states))
       (send* _analog_out_states __analog_out_states)
     (progn
       (if __analog_out_states (setq _analog_out_states (car __analog_out_states)))
       _analog_out_states)))
  (:serialization-length
   ()
   (+
    ;; ur_msgs/Digital[] _digital_in_states
    (apply #'+ (send-all _digital_in_states :serialization-length)) 4
    ;; ur_msgs/Digital[] _digital_out_states
    (apply #'+ (send-all _digital_out_states :serialization-length)) 4
    ;; ur_msgs/Digital[] _flag_states
    (apply #'+ (send-all _flag_states :serialization-length)) 4
    ;; ur_msgs/Analog[] _analog_in_states
    (apply #'+ (send-all _analog_in_states :serialization-length)) 4
    ;; ur_msgs/Analog[] _analog_out_states
    (apply #'+ (send-all _analog_out_states :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ur_msgs/Digital[] _digital_in_states
     (write-long (length _digital_in_states) s)
     (dolist (elem _digital_in_states)
       (send elem :serialize s)
       )
     ;; ur_msgs/Digital[] _digital_out_states
     (write-long (length _digital_out_states) s)
     (dolist (elem _digital_out_states)
       (send elem :serialize s)
       )
     ;; ur_msgs/Digital[] _flag_states
     (write-long (length _flag_states) s)
     (dolist (elem _flag_states)
       (send elem :serialize s)
       )
     ;; ur_msgs/Analog[] _analog_in_states
     (write-long (length _analog_in_states) s)
     (dolist (elem _analog_in_states)
       (send elem :serialize s)
       )
     ;; ur_msgs/Analog[] _analog_out_states
     (write-long (length _analog_out_states) s)
     (dolist (elem _analog_out_states)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ur_msgs/Digital[] _digital_in_states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _digital_in_states (let (r) (dotimes (i n) (push (instance ur_msgs::Digital :init) r)) r))
     (dolist (elem- _digital_in_states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ur_msgs/Digital[] _digital_out_states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _digital_out_states (let (r) (dotimes (i n) (push (instance ur_msgs::Digital :init) r)) r))
     (dolist (elem- _digital_out_states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ur_msgs/Digital[] _flag_states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _flag_states (let (r) (dotimes (i n) (push (instance ur_msgs::Digital :init) r)) r))
     (dolist (elem- _flag_states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ur_msgs/Analog[] _analog_in_states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _analog_in_states (let (r) (dotimes (i n) (push (instance ur_msgs::Analog :init) r)) r))
     (dolist (elem- _analog_in_states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ur_msgs/Analog[] _analog_out_states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _analog_out_states (let (r) (dotimes (i n) (push (instance ur_msgs::Analog :init) r)) r))
     (dolist (elem- _analog_out_states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ur_msgs::IOStates :md5sum-) "3033784e7041da89491b97cc4c1105b5")
(setf (get ur_msgs::IOStates :datatype-) "ur_msgs/IOStates")
(setf (get ur_msgs::IOStates :definition-)
      "Digital[] digital_in_states
Digital[] digital_out_states
Digital[] flag_states
Analog[] analog_in_states
Analog[] analog_out_states

================================================================================
MSG: ur_msgs/Digital
uint8 pin
bool state

================================================================================
MSG: ur_msgs/Analog
uint8 VOLTAGE=0
uint8 CURRENT=1

uint8 pin
uint8 domain # can be VOLTAGE or CURRENT
float32 state

")



(provide :ur_msgs/IOStates "3033784e7041da89491b97cc4c1105b5")


