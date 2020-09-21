;; Auto-generated. Do not edit!


(when (boundp 'gazebo_msgs::ODEPhysics)
  (if (not (find-package "GAZEBO_MSGS"))
    (make-package "GAZEBO_MSGS"))
  (shadow 'ODEPhysics (find-package "GAZEBO_MSGS")))
(unless (find-package "GAZEBO_MSGS::ODEPHYSICS")
  (make-package "GAZEBO_MSGS::ODEPHYSICS"))

(in-package "ROS")
;;//! \htmlinclude ODEPhysics.msg.html


(defclass gazebo_msgs::ODEPhysics
  :super ros::object
  :slots (_auto_disable_bodies _sor_pgs_precon_iters _sor_pgs_iters _sor_pgs_w _sor_pgs_rms_error_tol _contact_surface_layer _contact_max_correcting_vel _cfm _erp _max_contacts ))

(defmethod gazebo_msgs::ODEPhysics
  (:init
   (&key
    ((:auto_disable_bodies __auto_disable_bodies) nil)
    ((:sor_pgs_precon_iters __sor_pgs_precon_iters) 0)
    ((:sor_pgs_iters __sor_pgs_iters) 0)
    ((:sor_pgs_w __sor_pgs_w) 0.0)
    ((:sor_pgs_rms_error_tol __sor_pgs_rms_error_tol) 0.0)
    ((:contact_surface_layer __contact_surface_layer) 0.0)
    ((:contact_max_correcting_vel __contact_max_correcting_vel) 0.0)
    ((:cfm __cfm) 0.0)
    ((:erp __erp) 0.0)
    ((:max_contacts __max_contacts) 0)
    )
   (send-super :init)
   (setq _auto_disable_bodies __auto_disable_bodies)
   (setq _sor_pgs_precon_iters (round __sor_pgs_precon_iters))
   (setq _sor_pgs_iters (round __sor_pgs_iters))
   (setq _sor_pgs_w (float __sor_pgs_w))
   (setq _sor_pgs_rms_error_tol (float __sor_pgs_rms_error_tol))
   (setq _contact_surface_layer (float __contact_surface_layer))
   (setq _contact_max_correcting_vel (float __contact_max_correcting_vel))
   (setq _cfm (float __cfm))
   (setq _erp (float __erp))
   (setq _max_contacts (round __max_contacts))
   self)
  (:auto_disable_bodies
   (&optional __auto_disable_bodies)
   (if __auto_disable_bodies (setq _auto_disable_bodies __auto_disable_bodies)) _auto_disable_bodies)
  (:sor_pgs_precon_iters
   (&optional __sor_pgs_precon_iters)
   (if __sor_pgs_precon_iters (setq _sor_pgs_precon_iters __sor_pgs_precon_iters)) _sor_pgs_precon_iters)
  (:sor_pgs_iters
   (&optional __sor_pgs_iters)
   (if __sor_pgs_iters (setq _sor_pgs_iters __sor_pgs_iters)) _sor_pgs_iters)
  (:sor_pgs_w
   (&optional __sor_pgs_w)
   (if __sor_pgs_w (setq _sor_pgs_w __sor_pgs_w)) _sor_pgs_w)
  (:sor_pgs_rms_error_tol
   (&optional __sor_pgs_rms_error_tol)
   (if __sor_pgs_rms_error_tol (setq _sor_pgs_rms_error_tol __sor_pgs_rms_error_tol)) _sor_pgs_rms_error_tol)
  (:contact_surface_layer
   (&optional __contact_surface_layer)
   (if __contact_surface_layer (setq _contact_surface_layer __contact_surface_layer)) _contact_surface_layer)
  (:contact_max_correcting_vel
   (&optional __contact_max_correcting_vel)
   (if __contact_max_correcting_vel (setq _contact_max_correcting_vel __contact_max_correcting_vel)) _contact_max_correcting_vel)
  (:cfm
   (&optional __cfm)
   (if __cfm (setq _cfm __cfm)) _cfm)
  (:erp
   (&optional __erp)
   (if __erp (setq _erp __erp)) _erp)
  (:max_contacts
   (&optional __max_contacts)
   (if __max_contacts (setq _max_contacts __max_contacts)) _max_contacts)
  (:serialization-length
   ()
   (+
    ;; bool _auto_disable_bodies
    1
    ;; uint32 _sor_pgs_precon_iters
    4
    ;; uint32 _sor_pgs_iters
    4
    ;; float64 _sor_pgs_w
    8
    ;; float64 _sor_pgs_rms_error_tol
    8
    ;; float64 _contact_surface_layer
    8
    ;; float64 _contact_max_correcting_vel
    8
    ;; float64 _cfm
    8
    ;; float64 _erp
    8
    ;; uint32 _max_contacts
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _auto_disable_bodies
       (if _auto_disable_bodies (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _sor_pgs_precon_iters
       (write-long _sor_pgs_precon_iters s)
     ;; uint32 _sor_pgs_iters
       (write-long _sor_pgs_iters s)
     ;; float64 _sor_pgs_w
       (sys::poke _sor_pgs_w (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _sor_pgs_rms_error_tol
       (sys::poke _sor_pgs_rms_error_tol (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _contact_surface_layer
       (sys::poke _contact_surface_layer (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _contact_max_correcting_vel
       (sys::poke _contact_max_correcting_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cfm
       (sys::poke _cfm (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _erp
       (sys::poke _erp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _max_contacts
       (write-long _max_contacts s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _auto_disable_bodies
     (setq _auto_disable_bodies (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _sor_pgs_precon_iters
     (setq _sor_pgs_precon_iters (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _sor_pgs_iters
     (setq _sor_pgs_iters (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _sor_pgs_w
     (setq _sor_pgs_w (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _sor_pgs_rms_error_tol
     (setq _sor_pgs_rms_error_tol (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _contact_surface_layer
     (setq _contact_surface_layer (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _contact_max_correcting_vel
     (setq _contact_max_correcting_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cfm
     (setq _cfm (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _erp
     (setq _erp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _max_contacts
     (setq _max_contacts (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get gazebo_msgs::ODEPhysics :md5sum-) "667d56ddbd547918c32d1934503dc335")
(setf (get gazebo_msgs::ODEPhysics :datatype-) "gazebo_msgs/ODEPhysics")
(setf (get gazebo_msgs::ODEPhysics :definition-)
      "bool auto_disable_bodies           # enable auto disabling of bodies, default false
uint32 sor_pgs_precon_iters        # preconditioning inner iterations when uisng projected Gauss Seidel
uint32 sor_pgs_iters               # inner iterations when uisng projected Gauss Seidel
float64 sor_pgs_w                  # relaxation parameter when using projected Gauss Seidel, 1 = no relaxation
float64 sor_pgs_rms_error_tol      # rms error tolerance before stopping inner iterations
float64 contact_surface_layer      # contact \"dead-band\" width
float64 contact_max_correcting_vel # contact maximum correction velocity
float64 cfm                        # global constraint force mixing
float64 erp                        # global error reduction parameter
uint32 max_contacts                # maximum contact joints between two geoms

")



(provide :gazebo_msgs/ODEPhysics "667d56ddbd547918c32d1934503dc335")


