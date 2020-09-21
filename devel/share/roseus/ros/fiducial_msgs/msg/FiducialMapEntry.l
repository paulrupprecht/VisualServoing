;; Auto-generated. Do not edit!


(when (boundp 'fiducial_msgs::FiducialMapEntry)
  (if (not (find-package "FIDUCIAL_MSGS"))
    (make-package "FIDUCIAL_MSGS"))
  (shadow 'FiducialMapEntry (find-package "FIDUCIAL_MSGS")))
(unless (find-package "FIDUCIAL_MSGS::FIDUCIALMAPENTRY")
  (make-package "FIDUCIAL_MSGS::FIDUCIALMAPENTRY"))

(in-package "ROS")
;;//! \htmlinclude FiducialMapEntry.msg.html


(defclass fiducial_msgs::FiducialMapEntry
  :super ros::object
  :slots (_fiducial_id _x _y _z _rx _ry _rz ))

(defmethod fiducial_msgs::FiducialMapEntry
  (:init
   (&key
    ((:fiducial_id __fiducial_id) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:rx __rx) 0.0)
    ((:ry __ry) 0.0)
    ((:rz __rz) 0.0)
    )
   (send-super :init)
   (setq _fiducial_id (round __fiducial_id))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _rx (float __rx))
   (setq _ry (float __ry))
   (setq _rz (float __rz))
   self)
  (:fiducial_id
   (&optional __fiducial_id)
   (if __fiducial_id (setq _fiducial_id __fiducial_id)) _fiducial_id)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:rx
   (&optional __rx)
   (if __rx (setq _rx __rx)) _rx)
  (:ry
   (&optional __ry)
   (if __ry (setq _ry __ry)) _ry)
  (:rz
   (&optional __rz)
   (if __rz (setq _rz __rz)) _rz)
  (:serialization-length
   ()
   (+
    ;; int32 _fiducial_id
    4
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _rx
    8
    ;; float64 _ry
    8
    ;; float64 _rz
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _fiducial_id
       (write-long _fiducial_id s)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rx
       (sys::poke _rx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ry
       (sys::poke _ry (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rz
       (sys::poke _rz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _fiducial_id
     (setq _fiducial_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rx
     (setq _rx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ry
     (setq _ry (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rz
     (setq _rz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get fiducial_msgs::FiducialMapEntry :md5sum-) "2dc3e2ac5967f3a2c19627a1fc1d7dcc")
(setf (get fiducial_msgs::FiducialMapEntry :datatype-) "fiducial_msgs/FiducialMapEntry")
(setf (get fiducial_msgs::FiducialMapEntry :definition-)
      "# pose of a fiducial
int32 fiducial_id
# translation
float64 x
float64 y
float64 z
# rotation
float64 rx
float64 ry
float64 rz


")



(provide :fiducial_msgs/FiducialMapEntry "2dc3e2ac5967f3a2c19627a1fc1d7dcc")


