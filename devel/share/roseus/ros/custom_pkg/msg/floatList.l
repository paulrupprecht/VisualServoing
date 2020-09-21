;; Auto-generated. Do not edit!


(when (boundp 'custom_pkg::floatList)
  (if (not (find-package "CUSTOM_PKG"))
    (make-package "CUSTOM_PKG"))
  (shadow 'floatList (find-package "CUSTOM_PKG")))
(unless (find-package "CUSTOM_PKG::FLOATLIST")
  (make-package "CUSTOM_PKG::FLOATLIST"))

(in-package "ROS")
;;//! \htmlinclude floatList.msg.html


(defclass custom_pkg::floatList
  :super ros::object
  :slots (_old _new ))

(defmethod custom_pkg::floatList
  (:init
   (&key
    ((:old __old) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:new __new) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _old __old)
   (setq _new __new)
   self)
  (:old
   (&optional __old)
   (if __old (setq _old __old)) _old)
  (:new
   (&optional __new)
   (if __new (setq _new __new)) _new)
  (:serialization-length
   ()
   (+
    ;; float64[] _old
    (* 8    (length _old)) 4
    ;; float64[] _new
    (* 8    (length _new)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _old
     (write-long (length _old) s)
     (dotimes (i (length _old))
       (sys::poke (elt _old i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _new
     (write-long (length _new) s)
     (dotimes (i (length _new))
       (sys::poke (elt _new i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _old
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _old (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _old i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _new
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _new (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _new i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get custom_pkg::floatList :md5sum-) "ea878b1bd38d0c31ddfedc174bfca32e")
(setf (get custom_pkg::floatList :datatype-) "custom_pkg/floatList")
(setf (get custom_pkg::floatList :definition-)
      "float64[] old
float64[] new


")



(provide :custom_pkg/floatList "ea878b1bd38d0c31ddfedc174bfca32e")


