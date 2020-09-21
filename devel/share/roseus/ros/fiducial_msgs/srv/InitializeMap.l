;; Auto-generated. Do not edit!


(when (boundp 'fiducial_msgs::InitializeMap)
  (if (not (find-package "FIDUCIAL_MSGS"))
    (make-package "FIDUCIAL_MSGS"))
  (shadow 'InitializeMap (find-package "FIDUCIAL_MSGS")))
(unless (find-package "FIDUCIAL_MSGS::INITIALIZEMAP")
  (make-package "FIDUCIAL_MSGS::INITIALIZEMAP"))
(unless (find-package "FIDUCIAL_MSGS::INITIALIZEMAPREQUEST")
  (make-package "FIDUCIAL_MSGS::INITIALIZEMAPREQUEST"))
(unless (find-package "FIDUCIAL_MSGS::INITIALIZEMAPRESPONSE")
  (make-package "FIDUCIAL_MSGS::INITIALIZEMAPRESPONSE"))

(in-package "ROS")





(defclass fiducial_msgs::InitializeMapRequest
  :super ros::object
  :slots (_fiducials ))

(defmethod fiducial_msgs::InitializeMapRequest
  (:init
   (&key
    ((:fiducials __fiducials) (instance fiducial_msgs::FiducialMapEntryArray :init))
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
    ;; fiducial_msgs/FiducialMapEntryArray _fiducials
    (send _fiducials :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; fiducial_msgs/FiducialMapEntryArray _fiducials
       (send _fiducials :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; fiducial_msgs/FiducialMapEntryArray _fiducials
     (send _fiducials :deserialize buf ptr-) (incf ptr- (send _fiducials :serialization-length))
   ;;
   self)
  )

(defclass fiducial_msgs::InitializeMapResponse
  :super ros::object
  :slots ())

(defmethod fiducial_msgs::InitializeMapResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass fiducial_msgs::InitializeMap
  :super ros::object
  :slots ())

(setf (get fiducial_msgs::InitializeMap :md5sum-) "af3be60cc8712d87e234a795a01490e4")
(setf (get fiducial_msgs::InitializeMap :datatype-) "fiducial_msgs/InitializeMap")
(setf (get fiducial_msgs::InitializeMap :request) fiducial_msgs::InitializeMapRequest)
(setf (get fiducial_msgs::InitializeMap :response) fiducial_msgs::InitializeMapResponse)

(defmethod fiducial_msgs::InitializeMapRequest
  (:response () (instance fiducial_msgs::InitializeMapResponse :init)))

(setf (get fiducial_msgs::InitializeMapRequest :md5sum-) "af3be60cc8712d87e234a795a01490e4")
(setf (get fiducial_msgs::InitializeMapRequest :datatype-) "fiducial_msgs/InitializeMapRequest")
(setf (get fiducial_msgs::InitializeMapRequest :definition-)
      "FiducialMapEntryArray fiducials

================================================================================
MSG: fiducial_msgs/FiducialMapEntryArray
FiducialMapEntry[] fiducials

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

---

")

(setf (get fiducial_msgs::InitializeMapResponse :md5sum-) "af3be60cc8712d87e234a795a01490e4")
(setf (get fiducial_msgs::InitializeMapResponse :datatype-) "fiducial_msgs/InitializeMapResponse")
(setf (get fiducial_msgs::InitializeMapResponse :definition-)
      "FiducialMapEntryArray fiducials

================================================================================
MSG: fiducial_msgs/FiducialMapEntryArray
FiducialMapEntry[] fiducials

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

---

")



(provide :fiducial_msgs/InitializeMap "af3be60cc8712d87e234a795a01490e4")


