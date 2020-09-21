;; Auto-generated. Do not edit!


(when (boundp 'gazebo_msgs::ODEJointProperties)
  (if (not (find-package "GAZEBO_MSGS"))
    (make-package "GAZEBO_MSGS"))
  (shadow 'ODEJointProperties (find-package "GAZEBO_MSGS")))
(unless (find-package "GAZEBO_MSGS::ODEJOINTPROPERTIES")
  (make-package "GAZEBO_MSGS::ODEJOINTPROPERTIES"))

(in-package "ROS")
;;//! \htmlinclude ODEJointProperties.msg.html


(defclass gazebo_msgs::ODEJointProperties
  :super ros::object
  :slots (_damping _hiStop _loStop _erp _cfm _stop_erp _stop_cfm _fudge_factor _fmax _vel ))

(defmethod gazebo_msgs::ODEJointProperties
  (:init
   (&key
    ((:damping __damping) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:hiStop __hiStop) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:loStop __loStop) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:erp __erp) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:cfm __cfm) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:stop_erp __stop_erp) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:stop_cfm __stop_cfm) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:fudge_factor __fudge_factor) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:fmax __fmax) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:vel __vel) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _damping __damping)
   (setq _hiStop __hiStop)
   (setq _loStop __loStop)
   (setq _erp __erp)
   (setq _cfm __cfm)
   (setq _stop_erp __stop_erp)
   (setq _stop_cfm __stop_cfm)
   (setq _fudge_factor __fudge_factor)
   (setq _fmax __fmax)
   (setq _vel __vel)
   self)
  (:damping
   (&optional __damping)
   (if __damping (setq _damping __damping)) _damping)
  (:hiStop
   (&optional __hiStop)
   (if __hiStop (setq _hiStop __hiStop)) _hiStop)
  (:loStop
   (&optional __loStop)
   (if __loStop (setq _loStop __loStop)) _loStop)
  (:erp
   (&optional __erp)
   (if __erp (setq _erp __erp)) _erp)
  (:cfm
   (&optional __cfm)
   (if __cfm (setq _cfm __cfm)) _cfm)
  (:stop_erp
   (&optional __stop_erp)
   (if __stop_erp (setq _stop_erp __stop_erp)) _stop_erp)
  (:stop_cfm
   (&optional __stop_cfm)
   (if __stop_cfm (setq _stop_cfm __stop_cfm)) _stop_cfm)
  (:fudge_factor
   (&optional __fudge_factor)
   (if __fudge_factor (setq _fudge_factor __fudge_factor)) _fudge_factor)
  (:fmax
   (&optional __fmax)
   (if __fmax (setq _fmax __fmax)) _fmax)
  (:vel
   (&optional __vel)
   (if __vel (setq _vel __vel)) _vel)
  (:serialization-length
   ()
   (+
    ;; float64[] _damping
    (* 8    (length _damping)) 4
    ;; float64[] _hiStop
    (* 8    (length _hiStop)) 4
    ;; float64[] _loStop
    (* 8    (length _loStop)) 4
    ;; float64[] _erp
    (* 8    (length _erp)) 4
    ;; float64[] _cfm
    (* 8    (length _cfm)) 4
    ;; float64[] _stop_erp
    (* 8    (length _stop_erp)) 4
    ;; float64[] _stop_cfm
    (* 8    (length _stop_cfm)) 4
    ;; float64[] _fudge_factor
    (* 8    (length _fudge_factor)) 4
    ;; float64[] _fmax
    (* 8    (length _fmax)) 4
    ;; float64[] _vel
    (* 8    (length _vel)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _damping
     (write-long (length _damping) s)
     (dotimes (i (length _damping))
       (sys::poke (elt _damping i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _hiStop
     (write-long (length _hiStop) s)
     (dotimes (i (length _hiStop))
       (sys::poke (elt _hiStop i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _loStop
     (write-long (length _loStop) s)
     (dotimes (i (length _loStop))
       (sys::poke (elt _loStop i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _erp
     (write-long (length _erp) s)
     (dotimes (i (length _erp))
       (sys::poke (elt _erp i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _cfm
     (write-long (length _cfm) s)
     (dotimes (i (length _cfm))
       (sys::poke (elt _cfm i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _stop_erp
     (write-long (length _stop_erp) s)
     (dotimes (i (length _stop_erp))
       (sys::poke (elt _stop_erp i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _stop_cfm
     (write-long (length _stop_cfm) s)
     (dotimes (i (length _stop_cfm))
       (sys::poke (elt _stop_cfm i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _fudge_factor
     (write-long (length _fudge_factor) s)
     (dotimes (i (length _fudge_factor))
       (sys::poke (elt _fudge_factor i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _fmax
     (write-long (length _fmax) s)
     (dotimes (i (length _fmax))
       (sys::poke (elt _fmax i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _vel
     (write-long (length _vel) s)
     (dotimes (i (length _vel))
       (sys::poke (elt _vel i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _damping
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _damping (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _damping i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _hiStop
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _hiStop (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _hiStop i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _loStop
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _loStop (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _loStop i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _erp
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _erp (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _erp i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _cfm
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cfm (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cfm i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _stop_erp
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _stop_erp (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _stop_erp i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _stop_cfm
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _stop_cfm (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _stop_cfm i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _fudge_factor
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fudge_factor (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _fudge_factor i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _fmax
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fmax (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _fmax i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _vel
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vel (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _vel i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get gazebo_msgs::ODEJointProperties :md5sum-) "1b744c32a920af979f53afe2f9c3511f")
(setf (get gazebo_msgs::ODEJointProperties :datatype-) "gazebo_msgs/ODEJointProperties")
(setf (get gazebo_msgs::ODEJointProperties :definition-)
      "# access to low level joint properties, change these at your own risk
float64[] damping             # joint damping
float64[] hiStop              # joint limit
float64[] loStop              # joint limit
float64[] erp                 # set joint erp
float64[] cfm                 # set joint cfm
float64[] stop_erp            # set joint erp for joint limit \"contact\" joint
float64[] stop_cfm            # set joint cfm for joint limit \"contact\" joint
float64[] fudge_factor        # joint fudge_factor applied at limits, see ODE manual for info.
float64[] fmax                # ode joint param fmax
float64[] vel                 # ode joint param vel

")



(provide :gazebo_msgs/ODEJointProperties "1b744c32a920af979f53afe2f9c3511f")


