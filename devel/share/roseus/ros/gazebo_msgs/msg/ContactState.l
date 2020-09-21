;; Auto-generated. Do not edit!


(when (boundp 'gazebo_msgs::ContactState)
  (if (not (find-package "GAZEBO_MSGS"))
    (make-package "GAZEBO_MSGS"))
  (shadow 'ContactState (find-package "GAZEBO_MSGS")))
(unless (find-package "GAZEBO_MSGS::CONTACTSTATE")
  (make-package "GAZEBO_MSGS::CONTACTSTATE"))

(in-package "ROS")
;;//! \htmlinclude ContactState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass gazebo_msgs::ContactState
  :super ros::object
  :slots (_info _collision1_name _collision2_name _wrenches _total_wrench _contact_positions _contact_normals _depths ))

(defmethod gazebo_msgs::ContactState
  (:init
   (&key
    ((:info __info) "")
    ((:collision1_name __collision1_name) "")
    ((:collision2_name __collision2_name) "")
    ((:wrenches __wrenches) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Wrench :init) r)) r))
    ((:total_wrench __total_wrench) (instance geometry_msgs::Wrench :init))
    ((:contact_positions __contact_positions) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Vector3 :init) r)) r))
    ((:contact_normals __contact_normals) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Vector3 :init) r)) r))
    ((:depths __depths) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _info (string __info))
   (setq _collision1_name (string __collision1_name))
   (setq _collision2_name (string __collision2_name))
   (setq _wrenches __wrenches)
   (setq _total_wrench __total_wrench)
   (setq _contact_positions __contact_positions)
   (setq _contact_normals __contact_normals)
   (setq _depths __depths)
   self)
  (:info
   (&optional __info)
   (if __info (setq _info __info)) _info)
  (:collision1_name
   (&optional __collision1_name)
   (if __collision1_name (setq _collision1_name __collision1_name)) _collision1_name)
  (:collision2_name
   (&optional __collision2_name)
   (if __collision2_name (setq _collision2_name __collision2_name)) _collision2_name)
  (:wrenches
   (&rest __wrenches)
   (if (keywordp (car __wrenches))
       (send* _wrenches __wrenches)
     (progn
       (if __wrenches (setq _wrenches (car __wrenches)))
       _wrenches)))
  (:total_wrench
   (&rest __total_wrench)
   (if (keywordp (car __total_wrench))
       (send* _total_wrench __total_wrench)
     (progn
       (if __total_wrench (setq _total_wrench (car __total_wrench)))
       _total_wrench)))
  (:contact_positions
   (&rest __contact_positions)
   (if (keywordp (car __contact_positions))
       (send* _contact_positions __contact_positions)
     (progn
       (if __contact_positions (setq _contact_positions (car __contact_positions)))
       _contact_positions)))
  (:contact_normals
   (&rest __contact_normals)
   (if (keywordp (car __contact_normals))
       (send* _contact_normals __contact_normals)
     (progn
       (if __contact_normals (setq _contact_normals (car __contact_normals)))
       _contact_normals)))
  (:depths
   (&optional __depths)
   (if __depths (setq _depths __depths)) _depths)
  (:serialization-length
   ()
   (+
    ;; string _info
    4 (length _info)
    ;; string _collision1_name
    4 (length _collision1_name)
    ;; string _collision2_name
    4 (length _collision2_name)
    ;; geometry_msgs/Wrench[] _wrenches
    (apply #'+ (send-all _wrenches :serialization-length)) 4
    ;; geometry_msgs/Wrench _total_wrench
    (send _total_wrench :serialization-length)
    ;; geometry_msgs/Vector3[] _contact_positions
    (apply #'+ (send-all _contact_positions :serialization-length)) 4
    ;; geometry_msgs/Vector3[] _contact_normals
    (apply #'+ (send-all _contact_normals :serialization-length)) 4
    ;; float64[] _depths
    (* 8    (length _depths)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _info
       (write-long (length _info) s) (princ _info s)
     ;; string _collision1_name
       (write-long (length _collision1_name) s) (princ _collision1_name s)
     ;; string _collision2_name
       (write-long (length _collision2_name) s) (princ _collision2_name s)
     ;; geometry_msgs/Wrench[] _wrenches
     (write-long (length _wrenches) s)
     (dolist (elem _wrenches)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Wrench _total_wrench
       (send _total_wrench :serialize s)
     ;; geometry_msgs/Vector3[] _contact_positions
     (write-long (length _contact_positions) s)
     (dolist (elem _contact_positions)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Vector3[] _contact_normals
     (write-long (length _contact_normals) s)
     (dolist (elem _contact_normals)
       (send elem :serialize s)
       )
     ;; float64[] _depths
     (write-long (length _depths) s)
     (dotimes (i (length _depths))
       (sys::poke (elt _depths i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _collision1_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _collision1_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _collision2_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _collision2_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Wrench[] _wrenches
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wrenches (let (r) (dotimes (i n) (push (instance geometry_msgs::Wrench :init) r)) r))
     (dolist (elem- _wrenches)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Wrench _total_wrench
     (send _total_wrench :deserialize buf ptr-) (incf ptr- (send _total_wrench :serialization-length))
   ;; geometry_msgs/Vector3[] _contact_positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _contact_positions (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _contact_positions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Vector3[] _contact_normals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _contact_normals (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _contact_normals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64[] _depths
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _depths (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _depths i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get gazebo_msgs::ContactState :md5sum-) "48c0ffb054b8c444f870cecea1ee50d9")
(setf (get gazebo_msgs::ContactState :datatype-) "gazebo_msgs/ContactState")
(setf (get gazebo_msgs::ContactState :definition-)
      "string info                                   # text info on this contact
string collision1_name                        # name of contact collision1
string collision2_name                        # name of contact collision2
geometry_msgs/Wrench[] wrenches               # list of forces/torques
geometry_msgs/Wrench total_wrench             # sum of forces/torques in every DOF
geometry_msgs/Vector3[] contact_positions     # list of contact position
geometry_msgs/Vector3[] contact_normals       # list of contact normals
float64[] depths                              # list of penetration depths

================================================================================
MSG: geometry_msgs/Wrench
# This represents force in free space, separated into
# its linear and angular parts.
Vector3  force
Vector3  torque

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
")



(provide :gazebo_msgs/ContactState "48c0ffb054b8c444f870cecea1ee50d9")


