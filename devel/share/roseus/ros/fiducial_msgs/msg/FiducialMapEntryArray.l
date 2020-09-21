;; Auto-generated. Do not edit!


(when (boundp 'fiducial_msgs::FiducialMapEntryArray)
  (if (not (find-package "FIDUCIAL_MSGS"))
    (make-package "FIDUCIAL_MSGS"))
  (shadow 'FiducialMapEntryArray (find-package "FIDUCIAL_MSGS")))
(unless (find-package "FIDUCIAL_MSGS::FIDUCIALMAPENTRYARRAY")
  (make-package "FIDUCIAL_MSGS::FIDUCIALMAPENTRYARRAY"))

(in-package "ROS")
;;//! \htmlinclude FiducialMapEntryArray.msg.html


(defclass fiducial_msgs::FiducialMapEntryArray
  :super ros::object
  :slots (_fiducials ))

(defmethod fiducial_msgs::FiducialMapEntryArray
  (:init
   (&key
    ((:fiducials __fiducials) (let (r) (dotimes (i 0) (push (instance fiducial_msgs::FiducialMapEntry :init) r)) r))
    )
   (send-super :init)
   (setq _fiducials __fiducials)
   self)
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
    ;; fiducial_msgs/FiducialMapEntry[] _fiducials
    (apply #'+ (send-all _fiducials :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; fiducial_msgs/FiducialMapEntry[] _fiducials
     (write-long (length _fiducials) s)
     (dolist (elem _fiducials)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; fiducial_msgs/FiducialMapEntry[] _fiducials
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fiducials (let (r) (dotimes (i n) (push (instance fiducial_msgs::FiducialMapEntry :init) r)) r))
     (dolist (elem- _fiducials)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get fiducial_msgs::FiducialMapEntryArray :md5sum-) "f3d7e1cb2717bda61be54acdb77f4f79")
(setf (get fiducial_msgs::FiducialMapEntryArray :datatype-) "fiducial_msgs/FiducialMapEntryArray")
(setf (get fiducial_msgs::FiducialMapEntryArray :definition-)
      "FiducialMapEntry[] fiducials

================================================================================
MSG: fiducial_msgs/FiducialMapEntry
# pose of a fiducial
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



(provide :fiducial_msgs/FiducialMapEntryArray "f3d7e1cb2717bda61be54acdb77f4f79")


