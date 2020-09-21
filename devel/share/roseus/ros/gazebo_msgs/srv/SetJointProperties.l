;; Auto-generated. Do not edit!


(when (boundp 'gazebo_msgs::SetJointProperties)
  (if (not (find-package "GAZEBO_MSGS"))
    (make-package "GAZEBO_MSGS"))
  (shadow 'SetJointProperties (find-package "GAZEBO_MSGS")))
(unless (find-package "GAZEBO_MSGS::SETJOINTPROPERTIES")
  (make-package "GAZEBO_MSGS::SETJOINTPROPERTIES"))
(unless (find-package "GAZEBO_MSGS::SETJOINTPROPERTIESREQUEST")
  (make-package "GAZEBO_MSGS::SETJOINTPROPERTIESREQUEST"))
(unless (find-package "GAZEBO_MSGS::SETJOINTPROPERTIESRESPONSE")
  (make-package "GAZEBO_MSGS::SETJOINTPROPERTIESRESPONSE"))

(in-package "ROS")





(defclass gazebo_msgs::SetJointPropertiesRequest
  :super ros::object
  :slots (_joint_name _ode_joint_config ))

(defmethod gazebo_msgs::SetJointPropertiesRequest
  (:init
   (&key
    ((:joint_name __joint_name) "")
    ((:ode_joint_config __ode_joint_config) (instance gazebo_msgs::ODEJointProperties :init))
    )
   (send-super :init)
   (setq _joint_name (string __joint_name))
   (setq _ode_joint_config __ode_joint_config)
   self)
  (:joint_name
   (&optional __joint_name)
   (if __joint_name (setq _joint_name __joint_name)) _joint_name)
  (:ode_joint_config
   (&rest __ode_joint_config)
   (if (keywordp (car __ode_joint_config))
       (send* _ode_joint_config __ode_joint_config)
     (progn
       (if __ode_joint_config (setq _ode_joint_config (car __ode_joint_config)))
       _ode_joint_config)))
  (:serialization-length
   ()
   (+
    ;; string _joint_name
    4 (length _joint_name)
    ;; gazebo_msgs/ODEJointProperties _ode_joint_config
    (send _ode_joint_config :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _joint_name
       (write-long (length _joint_name) s) (princ _joint_name s)
     ;; gazebo_msgs/ODEJointProperties _ode_joint_config
       (send _ode_joint_config :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _joint_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _joint_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; gazebo_msgs/ODEJointProperties _ode_joint_config
     (send _ode_joint_config :deserialize buf ptr-) (incf ptr- (send _ode_joint_config :serialization-length))
   ;;
   self)
  )

(defclass gazebo_msgs::SetJointPropertiesResponse
  :super ros::object
  :slots (_success _status_message ))

(defmethod gazebo_msgs::SetJointPropertiesResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:status_message __status_message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _status_message (string __status_message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:status_message
   (&optional __status_message)
   (if __status_message (setq _status_message __status_message)) _status_message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _status_message
    4 (length _status_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _status_message
       (write-long (length _status_message) s) (princ _status_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _status_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass gazebo_msgs::SetJointProperties
  :super ros::object
  :slots ())

(setf (get gazebo_msgs::SetJointProperties :md5sum-) "15a76e921b1410c698d82782ea5fa370")
(setf (get gazebo_msgs::SetJointProperties :datatype-) "gazebo_msgs/SetJointProperties")
(setf (get gazebo_msgs::SetJointProperties :request) gazebo_msgs::SetJointPropertiesRequest)
(setf (get gazebo_msgs::SetJointProperties :response) gazebo_msgs::SetJointPropertiesResponse)

(defmethod gazebo_msgs::SetJointPropertiesRequest
  (:response () (instance gazebo_msgs::SetJointPropertiesResponse :init)))

(setf (get gazebo_msgs::SetJointPropertiesRequest :md5sum-) "15a76e921b1410c698d82782ea5fa370")
(setf (get gazebo_msgs::SetJointPropertiesRequest :datatype-) "gazebo_msgs/SetJointPropertiesRequest")
(setf (get gazebo_msgs::SetJointPropertiesRequest :definition-)
      "string joint_name
gazebo_msgs/ODEJointProperties ode_joint_config

================================================================================
MSG: gazebo_msgs/ODEJointProperties
# access to low level joint properties, change these at your own risk
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
---
bool success
string status_message

")

(setf (get gazebo_msgs::SetJointPropertiesResponse :md5sum-) "15a76e921b1410c698d82782ea5fa370")
(setf (get gazebo_msgs::SetJointPropertiesResponse :datatype-) "gazebo_msgs/SetJointPropertiesResponse")
(setf (get gazebo_msgs::SetJointPropertiesResponse :definition-)
      "string joint_name
gazebo_msgs/ODEJointProperties ode_joint_config

================================================================================
MSG: gazebo_msgs/ODEJointProperties
# access to low level joint properties, change these at your own risk
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
---
bool success
string status_message

")



(provide :gazebo_msgs/SetJointProperties "15a76e921b1410c698d82782ea5fa370")


