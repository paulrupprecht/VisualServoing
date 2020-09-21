;; Auto-generated. Do not edit!


(when (boundp 'gazebo_msgs::GetPhysicsProperties)
  (if (not (find-package "GAZEBO_MSGS"))
    (make-package "GAZEBO_MSGS"))
  (shadow 'GetPhysicsProperties (find-package "GAZEBO_MSGS")))
(unless (find-package "GAZEBO_MSGS::GETPHYSICSPROPERTIES")
  (make-package "GAZEBO_MSGS::GETPHYSICSPROPERTIES"))
(unless (find-package "GAZEBO_MSGS::GETPHYSICSPROPERTIESREQUEST")
  (make-package "GAZEBO_MSGS::GETPHYSICSPROPERTIESREQUEST"))
(unless (find-package "GAZEBO_MSGS::GETPHYSICSPROPERTIESRESPONSE")
  (make-package "GAZEBO_MSGS::GETPHYSICSPROPERTIESRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass gazebo_msgs::GetPhysicsPropertiesRequest
  :super ros::object
  :slots ())

(defmethod gazebo_msgs::GetPhysicsPropertiesRequest
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

(defclass gazebo_msgs::GetPhysicsPropertiesResponse
  :super ros::object
  :slots (_time_step _pause _max_update_rate _gravity _ode_config _success _status_message ))

(defmethod gazebo_msgs::GetPhysicsPropertiesResponse
  (:init
   (&key
    ((:time_step __time_step) 0.0)
    ((:pause __pause) nil)
    ((:max_update_rate __max_update_rate) 0.0)
    ((:gravity __gravity) (instance geometry_msgs::Vector3 :init))
    ((:ode_config __ode_config) (instance gazebo_msgs::ODEPhysics :init))
    ((:success __success) nil)
    ((:status_message __status_message) "")
    )
   (send-super :init)
   (setq _time_step (float __time_step))
   (setq _pause __pause)
   (setq _max_update_rate (float __max_update_rate))
   (setq _gravity __gravity)
   (setq _ode_config __ode_config)
   (setq _success __success)
   (setq _status_message (string __status_message))
   self)
  (:time_step
   (&optional __time_step)
   (if __time_step (setq _time_step __time_step)) _time_step)
  (:pause
   (&optional __pause)
   (if __pause (setq _pause __pause)) _pause)
  (:max_update_rate
   (&optional __max_update_rate)
   (if __max_update_rate (setq _max_update_rate __max_update_rate)) _max_update_rate)
  (:gravity
   (&rest __gravity)
   (if (keywordp (car __gravity))
       (send* _gravity __gravity)
     (progn
       (if __gravity (setq _gravity (car __gravity)))
       _gravity)))
  (:ode_config
   (&rest __ode_config)
   (if (keywordp (car __ode_config))
       (send* _ode_config __ode_config)
     (progn
       (if __ode_config (setq _ode_config (car __ode_config)))
       _ode_config)))
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:status_message
   (&optional __status_message)
   (if __status_message (setq _status_message __status_message)) _status_message)
  (:serialization-length
   ()
   (+
    ;; float64 _time_step
    8
    ;; bool _pause
    1
    ;; float64 _max_update_rate
    8
    ;; geometry_msgs/Vector3 _gravity
    (send _gravity :serialization-length)
    ;; gazebo_msgs/ODEPhysics _ode_config
    (send _ode_config :serialization-length)
    ;; bool _success
    1
    ;; string _status_message
    4 (length _status_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _time_step
       (sys::poke _time_step (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _pause
       (if _pause (write-byte -1 s) (write-byte 0 s))
     ;; float64 _max_update_rate
       (sys::poke _max_update_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Vector3 _gravity
       (send _gravity :serialize s)
     ;; gazebo_msgs/ODEPhysics _ode_config
       (send _ode_config :serialize s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _status_message
       (write-long (length _status_message) s) (princ _status_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _time_step
     (setq _time_step (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _pause
     (setq _pause (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _max_update_rate
     (setq _max_update_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Vector3 _gravity
     (send _gravity :deserialize buf ptr-) (incf ptr- (send _gravity :serialization-length))
   ;; gazebo_msgs/ODEPhysics _ode_config
     (send _ode_config :deserialize buf ptr-) (incf ptr- (send _ode_config :serialization-length))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _status_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass gazebo_msgs::GetPhysicsProperties
  :super ros::object
  :slots ())

(setf (get gazebo_msgs::GetPhysicsProperties :md5sum-) "575a5e74786981b7df2e3afc567693a6")
(setf (get gazebo_msgs::GetPhysicsProperties :datatype-) "gazebo_msgs/GetPhysicsProperties")
(setf (get gazebo_msgs::GetPhysicsProperties :request) gazebo_msgs::GetPhysicsPropertiesRequest)
(setf (get gazebo_msgs::GetPhysicsProperties :response) gazebo_msgs::GetPhysicsPropertiesResponse)

(defmethod gazebo_msgs::GetPhysicsPropertiesRequest
  (:response () (instance gazebo_msgs::GetPhysicsPropertiesResponse :init)))

(setf (get gazebo_msgs::GetPhysicsPropertiesRequest :md5sum-) "575a5e74786981b7df2e3afc567693a6")
(setf (get gazebo_msgs::GetPhysicsPropertiesRequest :datatype-) "gazebo_msgs/GetPhysicsPropertiesRequest")
(setf (get gazebo_msgs::GetPhysicsPropertiesRequest :definition-)
      "---

float64 time_step
bool pause
float64 max_update_rate
geometry_msgs/Vector3 gravity
gazebo_msgs/ODEPhysics ode_config
bool success
string status_message


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
MSG: gazebo_msgs/ODEPhysics
bool auto_disable_bodies           # enable auto disabling of bodies, default false
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

(setf (get gazebo_msgs::GetPhysicsPropertiesResponse :md5sum-) "575a5e74786981b7df2e3afc567693a6")
(setf (get gazebo_msgs::GetPhysicsPropertiesResponse :datatype-) "gazebo_msgs/GetPhysicsPropertiesResponse")
(setf (get gazebo_msgs::GetPhysicsPropertiesResponse :definition-)
      "---

float64 time_step
bool pause
float64 max_update_rate
geometry_msgs/Vector3 gravity
gazebo_msgs/ODEPhysics ode_config
bool success
string status_message


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
MSG: gazebo_msgs/ODEPhysics
bool auto_disable_bodies           # enable auto disabling of bodies, default false
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



(provide :gazebo_msgs/GetPhysicsProperties "575a5e74786981b7df2e3afc567693a6")


