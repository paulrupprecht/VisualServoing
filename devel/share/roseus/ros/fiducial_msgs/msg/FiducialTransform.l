;; Auto-generated. Do not edit!


(when (boundp 'fiducial_msgs::FiducialTransform)
  (if (not (find-package "FIDUCIAL_MSGS"))
    (make-package "FIDUCIAL_MSGS"))
  (shadow 'FiducialTransform (find-package "FIDUCIAL_MSGS")))
(unless (find-package "FIDUCIAL_MSGS::FIDUCIALTRANSFORM")
  (make-package "FIDUCIAL_MSGS::FIDUCIALTRANSFORM"))

(in-package "ROS")
;;//! \htmlinclude FiducialTransform.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass fiducial_msgs::FiducialTransform
  :super ros::object
  :slots (_fiducial_id _transform _image_error _object_error _fiducial_area ))

(defmethod fiducial_msgs::FiducialTransform
  (:init
   (&key
    ((:fiducial_id __fiducial_id) 0)
    ((:transform __transform) (instance geometry_msgs::Transform :init))
    ((:image_error __image_error) 0.0)
    ((:object_error __object_error) 0.0)
    ((:fiducial_area __fiducial_area) 0.0)
    )
   (send-super :init)
   (setq _fiducial_id (round __fiducial_id))
   (setq _transform __transform)
   (setq _image_error (float __image_error))
   (setq _object_error (float __object_error))
   (setq _fiducial_area (float __fiducial_area))
   self)
  (:fiducial_id
   (&optional __fiducial_id)
   (if __fiducial_id (setq _fiducial_id __fiducial_id)) _fiducial_id)
  (:transform
   (&rest __transform)
   (if (keywordp (car __transform))
       (send* _transform __transform)
     (progn
       (if __transform (setq _transform (car __transform)))
       _transform)))
  (:image_error
   (&optional __image_error)
   (if __image_error (setq _image_error __image_error)) _image_error)
  (:object_error
   (&optional __object_error)
   (if __object_error (setq _object_error __object_error)) _object_error)
  (:fiducial_area
   (&optional __fiducial_area)
   (if __fiducial_area (setq _fiducial_area __fiducial_area)) _fiducial_area)
  (:serialization-length
   ()
   (+
    ;; int32 _fiducial_id
    4
    ;; geometry_msgs/Transform _transform
    (send _transform :serialization-length)
    ;; float64 _image_error
    8
    ;; float64 _object_error
    8
    ;; float64 _fiducial_area
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _fiducial_id
       (write-long _fiducial_id s)
     ;; geometry_msgs/Transform _transform
       (send _transform :serialize s)
     ;; float64 _image_error
       (sys::poke _image_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _object_error
       (sys::poke _object_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fiducial_area
       (sys::poke _fiducial_area (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _fiducial_id
     (setq _fiducial_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Transform _transform
     (send _transform :deserialize buf ptr-) (incf ptr- (send _transform :serialization-length))
   ;; float64 _image_error
     (setq _image_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _object_error
     (setq _object_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fiducial_area
     (setq _fiducial_area (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get fiducial_msgs::FiducialTransform :md5sum-) "9f77f4c92fda876d2249ffbc19859044")
(setf (get fiducial_msgs::FiducialTransform :datatype-) "fiducial_msgs/FiducialTransform")
(setf (get fiducial_msgs::FiducialTransform :definition-)
      " # A camera to fiducial transform with supporting data
 int32 fiducial_id
 geometry_msgs/Transform transform
 float64 image_error
 float64 object_error
 float64 fiducial_area
================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :fiducial_msgs/FiducialTransform "9f77f4c92fda876d2249ffbc19859044")


