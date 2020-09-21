;; Auto-generated. Do not edit!


(when (boundp 'ur_msgs::SetPayload)
  (if (not (find-package "UR_MSGS"))
    (make-package "UR_MSGS"))
  (shadow 'SetPayload (find-package "UR_MSGS")))
(unless (find-package "UR_MSGS::SETPAYLOAD")
  (make-package "UR_MSGS::SETPAYLOAD"))
(unless (find-package "UR_MSGS::SETPAYLOADREQUEST")
  (make-package "UR_MSGS::SETPAYLOADREQUEST"))
(unless (find-package "UR_MSGS::SETPAYLOADRESPONSE")
  (make-package "UR_MSGS::SETPAYLOADRESPONSE"))

(in-package "ROS")





(defclass ur_msgs::SetPayloadRequest
  :super ros::object
  :slots (_payload ))

(defmethod ur_msgs::SetPayloadRequest
  (:init
   (&key
    ((:payload __payload) 0.0)
    )
   (send-super :init)
   (setq _payload (float __payload))
   self)
  (:payload
   (&optional __payload)
   (if __payload (setq _payload __payload)) _payload)
  (:serialization-length
   ()
   (+
    ;; float32 _payload
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _payload
       (sys::poke _payload (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _payload
     (setq _payload (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ur_msgs::SetPayloadResponse
  :super ros::object
  :slots (_success ))

(defmethod ur_msgs::SetPayloadResponse
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

(defclass ur_msgs::SetPayload
  :super ros::object
  :slots ())

(setf (get ur_msgs::SetPayload :md5sum-) "7f12eb632882cb73e5721178d0073e39")
(setf (get ur_msgs::SetPayload :datatype-) "ur_msgs/SetPayload")
(setf (get ur_msgs::SetPayload :request) ur_msgs::SetPayloadRequest)
(setf (get ur_msgs::SetPayload :response) ur_msgs::SetPayloadResponse)

(defmethod ur_msgs::SetPayloadRequest
  (:response () (instance ur_msgs::SetPayloadResponse :init)))

(setf (get ur_msgs::SetPayloadRequest :md5sum-) "7f12eb632882cb73e5721178d0073e39")
(setf (get ur_msgs::SetPayloadRequest :datatype-) "ur_msgs/SetPayloadRequest")
(setf (get ur_msgs::SetPayloadRequest :definition-)
      "float32 payload
---
bool success

")

(setf (get ur_msgs::SetPayloadResponse :md5sum-) "7f12eb632882cb73e5721178d0073e39")
(setf (get ur_msgs::SetPayloadResponse :datatype-) "ur_msgs/SetPayloadResponse")
(setf (get ur_msgs::SetPayloadResponse :definition-)
      "float32 payload
---
bool success

")



(provide :ur_msgs/SetPayload "7f12eb632882cb73e5721178d0073e39")


