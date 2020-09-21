;; Auto-generated. Do not edit!


(when (boundp 'fiducial_msgs::FiducialArray)
  (if (not (find-package "FIDUCIAL_MSGS"))
    (make-package "FIDUCIAL_MSGS"))
  (shadow 'FiducialArray (find-package "FIDUCIAL_MSGS")))
(unless (find-package "FIDUCIAL_MSGS::FIDUCIALARRAY")
  (make-package "FIDUCIAL_MSGS::FIDUCIALARRAY"))

(in-package "ROS")
;;//! \htmlinclude FiducialArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass fiducial_msgs::FiducialArray
  :super ros::object
  :slots (_header _image_seq _fiducials ))

(defmethod fiducial_msgs::FiducialArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:image_seq __image_seq) 0)
    ((:fiducials __fiducials) (let (r) (dotimes (i 0) (push (instance fiducial_msgs::Fiducial :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _image_seq (round __image_seq))
   (setq _fiducials __fiducials)
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
  (:fiducials
   (&rest __fiducials)
   (if (keywordp (car __fiducials))
       (send* _fiducials __fiducials)
     (progn
       (if __fiducials (setq _fiducials (car __fiducials)))
       _fiducials)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _image_seq
    4
    ;; fiducial_msgs/Fiducial[] _fiducials
    (apply #'+ (send-all _fiducials :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _image_seq
       (write-long _image_seq s)
     ;; fiducial_msgs/Fiducial[] _fiducials
     (write-long (length _fiducials) s)
     (dolist (elem _fiducials)
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
   ;; fiducial_msgs/Fiducial[] _fiducials
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fiducials (let (r) (dotimes (i n) (push (instance fiducial_msgs::Fiducial :init) r)) r))
     (dolist (elem- _fiducials)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get fiducial_msgs::FiducialArray :md5sum-) "fd851a0658e8a35a4d4f80b76d9f17a0")
(setf (get fiducial_msgs::FiducialArray :datatype-) "fiducial_msgs/FiducialArray")
(setf (get fiducial_msgs::FiducialArray :definition-)
      " # A set of fiducial vertex messages
 # to an image
 Header header
 int32 image_seq
 Fiducial[] fiducials 

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
MSG: fiducial_msgs/Fiducial
 # Details of a detected fiducial.

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



(provide :fiducial_msgs/FiducialArray "fd851a0658e8a35a4d4f80b76d9f17a0")


