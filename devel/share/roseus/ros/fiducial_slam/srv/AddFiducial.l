;; Auto-generated. Do not edit!


(when (boundp 'fiducial_slam::AddFiducial)
  (if (not (find-package "FIDUCIAL_SLAM"))
    (make-package "FIDUCIAL_SLAM"))
  (shadow 'AddFiducial (find-package "FIDUCIAL_SLAM")))
(unless (find-package "FIDUCIAL_SLAM::ADDFIDUCIAL")
  (make-package "FIDUCIAL_SLAM::ADDFIDUCIAL"))
(unless (find-package "FIDUCIAL_SLAM::ADDFIDUCIALREQUEST")
  (make-package "FIDUCIAL_SLAM::ADDFIDUCIALREQUEST"))
(unless (find-package "FIDUCIAL_SLAM::ADDFIDUCIALRESPONSE")
  (make-package "FIDUCIAL_SLAM::ADDFIDUCIALRESPONSE"))

(in-package "ROS")





(defclass fiducial_slam::AddFiducialRequest
  :super ros::object
  :slots (_fiducial_id ))

(defmethod fiducial_slam::AddFiducialRequest
  (:init
   (&key
    ((:fiducial_id __fiducial_id) 0)
    )
   (send-super :init)
   (setq _fiducial_id (round __fiducial_id))
   self)
  (:fiducial_id
   (&optional __fiducial_id)
   (if __fiducial_id (setq _fiducial_id __fiducial_id)) _fiducial_id)
  (:serialization-length
   ()
   (+
    ;; int32 _fiducial_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _fiducial_id
       (write-long _fiducial_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _fiducial_id
     (setq _fiducial_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass fiducial_slam::AddFiducialResponse
  :super ros::object
  :slots ())

(defmethod fiducial_slam::AddFiducialResponse
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

(defclass fiducial_slam::AddFiducial
  :super ros::object
  :slots ())

(setf (get fiducial_slam::AddFiducial :md5sum-) "d6e0c5dec9dcac4f00b77e79be09ed60")
(setf (get fiducial_slam::AddFiducial :datatype-) "fiducial_slam/AddFiducial")
(setf (get fiducial_slam::AddFiducial :request) fiducial_slam::AddFiducialRequest)
(setf (get fiducial_slam::AddFiducial :response) fiducial_slam::AddFiducialResponse)

(defmethod fiducial_slam::AddFiducialRequest
  (:response () (instance fiducial_slam::AddFiducialResponse :init)))

(setf (get fiducial_slam::AddFiducialRequest :md5sum-) "d6e0c5dec9dcac4f00b77e79be09ed60")
(setf (get fiducial_slam::AddFiducialRequest :datatype-) "fiducial_slam/AddFiducialRequest")
(setf (get fiducial_slam::AddFiducialRequest :definition-)
      "int32 fiducial_id
---

")

(setf (get fiducial_slam::AddFiducialResponse :md5sum-) "d6e0c5dec9dcac4f00b77e79be09ed60")
(setf (get fiducial_slam::AddFiducialResponse :datatype-) "fiducial_slam/AddFiducialResponse")
(setf (get fiducial_slam::AddFiducialResponse :definition-)
      "int32 fiducial_id
---

")



(provide :fiducial_slam/AddFiducial "d6e0c5dec9dcac4f00b77e79be09ed60")


