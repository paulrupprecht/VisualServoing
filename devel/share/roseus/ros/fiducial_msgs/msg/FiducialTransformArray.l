;; Auto-generated. Do not edit!


(when (boundp 'fiducial_msgs::FiducialTransformArray)
  (if (not (find-package "FIDUCIAL_MSGS"))
    (make-package "FIDUCIAL_MSGS"))
  (shadow 'FiducialTransformArray (find-package "FIDUCIAL_MSGS")))
(unless (find-package "FIDUCIAL_MSGS::FIDUCIALTRANSFORMARRAY")
  (make-package "FIDUCIAL_MSGS::FIDUCIALTRANSFORMARRAY"))

(in-package "ROS")
;;//! \htmlinclude FiducialTransformArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass fiducial_msgs::FiducialTransformArray
  :super ros::object
  :slots (_header _image_seq _transforms ))

(defmethod fiducial_msgs::FiducialTransformArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:image_seq __image_seq) 0)
    ((:transforms __transforms) (let (r) (dotimes (i 0) (push (instance fiducial_msgs::FiducialTransform :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _image_seq (round __image_seq))
   (setq _transforms __transforms)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:image_seq
   (&optional __image_seq)
   (if __image_seq (setq _image_seq __image_seq)) _image_seq)
  (:transforms
   (&rest __transforms)
   (if (keywordp (car __transforms))
       (send* _transforms __transforms)
     (progn
       (if __transforms (setq _transforms (car __transforms)))
       _transforms)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _image_seq
    4
    ;; fiducial_msgs/FiducialTransform[] _transforms
    (apply #'+ (send-all _transforms :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _image_seq
       (write-long _image_seq s)
     ;; fiducial_msgs/FiducialTransform[] _transforms
     (write-long (length _transforms) s)
     (dolist (elem _transforms)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _image_seq
     (setq _image_seq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; fiducial_msgs/FiducialTransform[] _transforms
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _transforms (let (r) (dotimes (i n) (push (instance fiducial_msgs::FiducialTransform :init) r)) r))
     (dolist (elem- _transforms)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get fiducial_msgs::FiducialTransformArray :md5sum-) "a9391b25df2859cb1ae6fa6ee45ef075")
(setf (get fiducial_msgs::FiducialTransformArray :datatype-) "fiducial_msgs/FiducialTransformArray")
(setf (get fiducial_msgs::FiducialTransformArray :definition-)
      " # A set of camera to fiducial transform with supporting data corresponding
 # to an image
 Header header
 int32 image_seq
 FiducialTransform[] transforms 

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: fiducial_msgs/FiducialTransform
 # A camera to fiducial transform with supporting data
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



(provide :fiducial_msgs/FiducialTransformArray "a9391b25df2859cb1ae6fa6ee45ef075")


