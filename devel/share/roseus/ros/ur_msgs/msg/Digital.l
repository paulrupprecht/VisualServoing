;; Auto-generated. Do not edit!


(when (boundp 'ur_msgs::Digital)
  (if (not (find-package "UR_MSGS"))
    (make-package "UR_MSGS"))
  (shadow 'Digital (find-package "UR_MSGS")))
(unless (find-package "UR_MSGS::DIGITAL")
  (make-package "UR_MSGS::DIGITAL"))

(in-package "ROS")
;;//! \htmlinclude Digital.msg.html


(defclass ur_msgs::Digital
  :super ros::object
  :slots (_pin _state ))

(defmethod ur_msgs::Digital
  (:init
   (&key
    ((:pin __pin) 0)
    ((:state __state) nil)
    )
   (send-super :init)
   (setq _pin (round __pin))
   (setq _state __state)
   self)
  (:pin
   (&optional __pin)
   (if __pin (setq _pin __pin)) _pin)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _pin
    1
    ;; bool _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _pin
       (write-byte _pin s)
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _pin
     (setq _pin (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ur_msgs::Digital :md5sum-) "83707be3fa18d2ffe57381ea034aa262")
(setf (get ur_msgs::Digital :datatype-) "ur_msgs/Digital")
(setf (get ur_msgs::Digital :definition-)
      "uint8 pin
bool state

")



(provide :ur_msgs/Digital "83707be3fa18d2ffe57381ea034aa262")


