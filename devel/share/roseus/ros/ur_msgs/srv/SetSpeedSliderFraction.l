;; Auto-generated. Do not edit!


(when (boundp 'ur_msgs::SetSpeedSliderFraction)
  (if (not (find-package "UR_MSGS"))
    (make-package "UR_MSGS"))
  (shadow 'SetSpeedSliderFraction (find-package "UR_MSGS")))
(unless (find-package "UR_MSGS::SETSPEEDSLIDERFRACTION")
  (make-package "UR_MSGS::SETSPEEDSLIDERFRACTION"))
(unless (find-package "UR_MSGS::SETSPEEDSLIDERFRACTIONREQUEST")
  (make-package "UR_MSGS::SETSPEEDSLIDERFRACTIONREQUEST"))
(unless (find-package "UR_MSGS::SETSPEEDSLIDERFRACTIONRESPONSE")
  (make-package "UR_MSGS::SETSPEEDSLIDERFRACTIONRESPONSE"))

(in-package "ROS")





(defclass ur_msgs::SetSpeedSliderFractionRequest
  :super ros::object
  :slots (_speed_slider_fraction ))

(defmethod ur_msgs::SetSpeedSliderFractionRequest
  (:init
   (&key
    ((:speed_slider_fraction __speed_slider_fraction) 0.0)
    )
   (send-super :init)
   (setq _speed_slider_fraction (float __speed_slider_fraction))
   self)
  (:speed_slider_fraction
   (&optional __speed_slider_fraction)
   (if __speed_slider_fraction (setq _speed_slider_fraction __speed_slider_fraction)) _speed_slider_fraction)
  (:serialization-length
   ()
   (+
    ;; float64 _speed_slider_fraction
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _speed_slider_fraction
       (sys::poke _speed_slider_fraction (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _speed_slider_fraction
     (setq _speed_slider_fraction (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass ur_msgs::SetSpeedSliderFractionResponse
  :super ros::object
  :slots (_success ))

(defmethod ur_msgs::SetSpeedSliderFractionResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ur_msgs::SetSpeedSliderFraction
  :super ros::object
  :slots ())

(setf (get ur_msgs::SetSpeedSliderFraction :md5sum-) "172aeb6c49379a44cf68480fa5bfad3c")
(setf (get ur_msgs::SetSpeedSliderFraction :datatype-) "ur_msgs/SetSpeedSliderFraction")
(setf (get ur_msgs::SetSpeedSliderFraction :request) ur_msgs::SetSpeedSliderFractionRequest)
(setf (get ur_msgs::SetSpeedSliderFraction :response) ur_msgs::SetSpeedSliderFractionResponse)

(defmethod ur_msgs::SetSpeedSliderFractionRequest
  (:response () (instance ur_msgs::SetSpeedSliderFractionResponse :init)))

(setf (get ur_msgs::SetSpeedSliderFractionRequest :md5sum-) "172aeb6c49379a44cf68480fa5bfad3c")
(setf (get ur_msgs::SetSpeedSliderFractionRequest :datatype-) "ur_msgs/SetSpeedSliderFractionRequest")
(setf (get ur_msgs::SetSpeedSliderFractionRequest :definition-)
      "




float64 speed_slider_fraction
---
bool success

")

(setf (get ur_msgs::SetSpeedSliderFractionResponse :md5sum-) "172aeb6c49379a44cf68480fa5bfad3c")
(setf (get ur_msgs::SetSpeedSliderFractionResponse :datatype-) "ur_msgs/SetSpeedSliderFractionResponse")
(setf (get ur_msgs::SetSpeedSliderFractionResponse :definition-)
      "




float64 speed_slider_fraction
---
bool success

")



(provide :ur_msgs/SetSpeedSliderFraction "172aeb6c49379a44cf68480fa5bfad3c")


