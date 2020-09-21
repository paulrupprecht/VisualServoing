;; Auto-generated. Do not edit!


(when (boundp 'fiducial_msgs::Fiducial)
  (if (not (find-package "FIDUCIAL_MSGS"))
    (make-package "FIDUCIAL_MSGS"))
  (shadow 'Fiducial (find-package "FIDUCIAL_MSGS")))
(unless (find-package "FIDUCIAL_MSGS::FIDUCIAL")
  (make-package "FIDUCIAL_MSGS::FIDUCIAL"))

(in-package "ROS")
;;//! \htmlinclude Fiducial.msg.html


(defclass fiducial_msgs::Fiducial
  :super ros::object
  :slots (_fiducial_id _direction _x0 _y0 _x1 _y1 _x2 _y2 _x3 _y3 ))

(defmethod fiducial_msgs::Fiducial
  (:init
   (&key
    ((:fiducial_id __fiducial_id) 0)
    ((:direction __direction) 0)
    ((:x0 __x0) 0.0)
    ((:y0 __y0) 0.0)
    ((:x1 __x1) 0.0)
    ((:y1 __y1) 0.0)
    ((:x2 __x2) 0.0)
    ((:y2 __y2) 0.0)
    ((:x3 __x3) 0.0)
    ((:y3 __y3) 0.0)
    )
   (send-super :init)
   (setq _fiducial_id (round __fiducial_id))
   (setq _direction (round __direction))
   (setq _x0 (float __x0))
   (setq _y0 (float __y0))
   (setq _x1 (float __x1))
   (setq _y1 (float __y1))
   (setq _x2 (float __x2))
   (setq _y2 (float __y2))
   (setq _x3 (float __x3))
   (setq _y3 (float __y3))
   self)
  (:fiducial_id
   (&optional __fiducial_id)
   (if __fiducial_id (setq _fiducial_id __fiducial_id)) _fiducial_id)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:x0
   (&optional __x0)
   (if __x0 (setq _x0 __x0)) _x0)
  (:y0
   (&optional __y0)
   (if __y0 (setq _y0 __y0)) _y0)
  (:x1
   (&optional __x1)
   (if __x1 (setq _x1 __x1)) _x1)
  (:y1
   (&optional __y1)
   (if __y1 (setq _y1 __y1)) _y1)
  (:x2
   (&optional __x2)
   (if __x2 (setq _x2 __x2)) _x2)
  (:y2
   (&optional __y2)
   (if __y2 (setq _y2 __y2)) _y2)
  (:x3
   (&optional __x3)
   (if __x3 (setq _x3 __x3)) _x3)
  (:y3
   (&optional __y3)
   (if __y3 (setq _y3 __y3)) _y3)
  (:serialization-length
   ()
   (+
    ;; int32 _fiducial_id
    4
    ;; int32 _direction
    4
    ;; float64 _x0
    8
    ;; float64 _y0
    8
    ;; float64 _x1
    8
    ;; float64 _y1
    8
    ;; float64 _x2
    8
    ;; float64 _y2
    8
    ;; float64 _x3
    8
    ;; float64 _y3
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _fiducial_id
       (write-long _fiducial_id s)
     ;; int32 _direction
       (write-long _direction s)
     ;; float64 _x0
       (sys::poke _x0 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y0
       (sys::poke _y0 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x1
       (sys::poke _x1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y1
       (sys::poke _y1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x2
       (sys::poke _x2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y2
       (sys::poke _y2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x3
       (sys::poke _x3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y3
       (sys::poke _y3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _fiducial_id
     (setq _fiducial_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _direction
     (setq _direction (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _x0
     (setq _x0 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y0
     (setq _y0 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x1
     (setq _x1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y1
     (setq _y1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x2
     (setq _x2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y2
     (setq _y2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x3
     (setq _x3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y3
     (setq _y3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get fiducial_msgs::Fiducial :md5sum-) "a0094064db6c7772c6b638a2dab17f42")
(setf (get fiducial_msgs::Fiducial :datatype-) "fiducial_msgs/Fiducial")
(setf (get fiducial_msgs::Fiducial :definition-)
      " # Details of a detected fiducial.

 int32 fiducial_id
 int32 direction

 # vertices
 float64 x0
 float64 y0
 float64 x1
 float64 y1
 float64 x2
 float64 y2
 float64 x3
 float64 y3

")



(provide :fiducial_msgs/Fiducial "a0094064db6c7772c6b638a2dab17f42")


