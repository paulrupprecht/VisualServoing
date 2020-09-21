;; Auto-generated. Do not edit!


(when (boundp 'ur_msgs::Analog)
  (if (not (find-package "UR_MSGS"))
    (make-package "UR_MSGS"))
  (shadow 'Analog (find-package "UR_MSGS")))
(unless (find-package "UR_MSGS::ANALOG")
  (make-package "UR_MSGS::ANALOG"))

(in-package "ROS")
;;//! \htmlinclude Analog.msg.html


(intern "*VOLTAGE*" (find-package "UR_MSGS::ANALOG"))
(shadow '*VOLTAGE* (find-package "UR_MSGS::ANALOG"))
(defconstant ur_msgs::Analog::*VOLTAGE* 0)
(intern "*CURRENT*" (find-package "UR_MSGS::ANALOG"))
(shadow '*CURRENT* (find-package "UR_MSGS::ANALOG"))
(defconstant ur_msgs::Analog::*CURRENT* 1)
(defclass ur_msgs::Analog
  :super ros::object
  :slots (_pin _domain _state ))

(defmethod ur_msgs::Analog
  (:init
   (&key
    ((:pin __pin) 0)
    ((:domain __domain) 0)
    ((:state __state) 0.0)
    )
   (send-super :init)
   (setq _pin (round __pin))
   (setq _domain (round __domain))
   (setq _state (float __state))
   self)
  (:pin
   (&optional __pin)
   (if __pin (setq _pin __pin)) _pin)
  (:domain
   (&optional __domain)
   (if __domain (setq _domain __domain)) _domain)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _pin
    1
    ;; uint8 _domain
    1
    ;; float32 _state
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _pin
       (write-byte _pin s)
     ;; uint8 _domain
       (write-byte _domain s)
     ;; float32 _state
       (sys::poke _state (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _pin
     (setq _pin (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _domain
     (setq _domain (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _state
     (setq _state (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ur_msgs::Analog :md5sum-) "f41c08a810adf63713aec88712cd553d")
(setf (get ur_msgs::Analog :datatype-) "ur_msgs/Analog")
(setf (get ur_msgs::Analog :definition-)
      "uint8 VOLTAGE=0
uint8 CURRENT=1

uint8 pin
uint8 domain # can be VOLTAGE or CURRENT
float32 state

")



(provide :ur_msgs/Analog "f41c08a810adf63713aec88712cd553d")


