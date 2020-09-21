;; Auto-generated. Do not edit!


(when (boundp 'gazebo_msgs::ApplyBodyWrench)
  (if (not (find-package "GAZEBO_MSGS"))
    (make-package "GAZEBO_MSGS"))
  (shadow 'ApplyBodyWrench (find-package "GAZEBO_MSGS")))
(unless (find-package "GAZEBO_MSGS::APPLYBODYWRENCH")
  (make-package "GAZEBO_MSGS::APPLYBODYWRENCH"))
(unless (find-package "GAZEBO_MSGS::APPLYBODYWRENCHREQUEST")
  (make-package "GAZEBO_MSGS::APPLYBODYWRENCHREQUEST"))
(unless (find-package "GAZEBO_MSGS::APPLYBODYWRENCHRESPONSE")
  (make-package "GAZEBO_MSGS::APPLYBODYWRENCHRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass gazebo_msgs::ApplyBodyWrenchRequest
  :super ros::object
  :slots (_body_name _reference_frame _reference_point _wrench _start_time _duration ))

(defmethod gazebo_msgs::ApplyBodyWrenchRequest
  (:init
   (&key
    ((:body_name __body_name) "")
    ((:reference_frame __reference_frame) "")
    ((:reference_point __reference_point) (instance geometry_msgs::Point :init))
    ((:wrench __wrench) (instance geometry_msgs::Wrench :init))
    ((:start_time __start_time) (instance ros::time :init))
    ((:duration __duration) (instance ros::time :init))
    )
   (send-super :init)
   (setq _body_name (string __body_name))
   (setq _reference_frame (string __reference_frame))
   (setq _reference_point __reference_point)
   (setq _wrench __wrench)
   (setq _start_time __start_time)
   (setq _duration __duration)
   self)
  (:body_name
   (&optional __body_name)
   (if __body_name (setq _body_name __body_name)) _body_name)
  (:reference_frame
   (&optional __reference_frame)
   (if __reference_frame (setq _reference_frame __reference_frame)) _reference_frame)
  (:reference_point
   (&rest __reference_point)
   (if (keywordp (car __reference_point))
       (send* _reference_point __reference_point)
     (progn
       (if __reference_point (setq _reference_point (car __reference_point)))
       _reference_point)))
  (:wrench
   (&rest __wrench)
   (if (keywordp (car __wrench))
       (send* _wrench __wrench)
     (progn
       (if __wrench (setq _wrench (car __wrench)))
       _wrench)))
  (:start_time
   (&optional __start_time)
   (if __start_time (setq _start_time __start_time)) _start_time)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; string _body_name
    4 (length _body_name)
    ;; string _reference_frame
    4 (length _reference_frame)
    ;; geometry_msgs/Point _reference_point
    (send _reference_point :serialization-length)
    ;; geometry_msgs/Wrench _wrench
    (send _wrench :serialization-length)
    ;; time _start_time
    8
    ;; duration _duration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _body_name
       (write-long (length _body_name) s) (princ _body_name s)
     ;; string _reference_frame
       (write-long (length _reference_frame) s) (princ _reference_frame s)
     ;; geometry_msgs/Point _reference_point
       (send _reference_point :serialize s)
     ;; geometry_msgs/Wrench _wrench
       (send _wrench :serialize s)
     ;; time _start_time
       (write-long (send _start_time :sec) s) (write-long (send _start_time :nsec) s)
     ;; duration _duration
       (write-long (send _duration :sec) s) (write-long (send _duration :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _body_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _body_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _reference_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reference_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point _reference_point
     (send _reference_point :deserialize buf ptr-) (incf ptr- (send _reference_point :serialization-length))
   ;; geometry_msgs/Wrench _wrench
     (send _wrench :deserialize buf ptr-) (incf ptr- (send _wrench :serialization-length))
   ;; time _start_time
     (send _start_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _start_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; duration _duration
     (send _duration :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _duration :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass gazebo_msgs::ApplyBodyWrenchResponse
  :super ros::object
  :slots (_success _status_message ))

(defmethod gazebo_msgs::ApplyBodyWrenchResponse
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

(defclass gazebo_msgs::ApplyBodyWrench
  :super ros::object
  :slots ())

(setf (get gazebo_msgs::ApplyBodyWrench :md5sum-) "585b9f9618aa0581b207e2f2d90866bc")
(setf (get gazebo_msgs::ApplyBodyWrench :datatype-) "gazebo_msgs/ApplyBodyWrench")
(setf (get gazebo_msgs::ApplyBodyWrench :request) gazebo_msgs::ApplyBodyWrenchRequest)
(setf (get gazebo_msgs::ApplyBodyWrench :response) gazebo_msgs::ApplyBodyWrenchResponse)

(defmethod gazebo_msgs::ApplyBodyWrenchRequest
  (:response () (instance gazebo_msgs::ApplyBodyWrenchResponse :init)))

(setf (get gazebo_msgs::ApplyBodyWrenchRequest :md5sum-) "585b9f9618aa0581b207e2f2d90866bc")
(setf (get gazebo_msgs::ApplyBodyWrenchRequest :datatype-) "gazebo_msgs/ApplyBodyWrenchRequest")
(setf (get gazebo_msgs::ApplyBodyWrenchRequest :definition-)
      "


string body_name


string reference_frame


geometry_msgs/Point  reference_point
geometry_msgs/Wrench wrench
time start_time


duration duration





================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

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
---
bool success
string status_message

")

(setf (get gazebo_msgs::ApplyBodyWrenchResponse :md5sum-) "585b9f9618aa0581b207e2f2d90866bc")
(setf (get gazebo_msgs::ApplyBodyWrenchResponse :datatype-) "gazebo_msgs/ApplyBodyWrenchResponse")
(setf (get gazebo_msgs::ApplyBodyWrenchResponse :definition-)
      "


string body_name


string reference_frame


geometry_msgs/Point  reference_point
geometry_msgs/Wrench wrench
time start_time


duration duration





================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

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
---
bool success
string status_message

")



(provide :gazebo_msgs/ApplyBodyWrench "585b9f9618aa0581b207e2f2d90866bc")


