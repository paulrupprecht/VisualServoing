;; Auto-generated. Do not edit!


(when (boundp 'gazebo_msgs::GetModelProperties)
  (if (not (find-package "GAZEBO_MSGS"))
    (make-package "GAZEBO_MSGS"))
  (shadow 'GetModelProperties (find-package "GAZEBO_MSGS")))
(unless (find-package "GAZEBO_MSGS::GETMODELPROPERTIES")
  (make-package "GAZEBO_MSGS::GETMODELPROPERTIES"))
(unless (find-package "GAZEBO_MSGS::GETMODELPROPERTIESREQUEST")
  (make-package "GAZEBO_MSGS::GETMODELPROPERTIESREQUEST"))
(unless (find-package "GAZEBO_MSGS::GETMODELPROPERTIESRESPONSE")
  (make-package "GAZEBO_MSGS::GETMODELPROPERTIESRESPONSE"))

(in-package "ROS")





(defclass gazebo_msgs::GetModelPropertiesRequest
  :super ros::object
  :slots (_model_name ))

(defmethod gazebo_msgs::GetModelPropertiesRequest
  (:init
   (&key
    ((:model_name __model_name) "")
    )
   (send-super :init)
   (setq _model_name (string __model_name))
   self)
  (:model_name
   (&optional __model_name)
   (if __model_name (setq _model_name __model_name)) _model_name)
  (:serialization-length
   ()
   (+
    ;; string _model_name
    4 (length _model_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _model_name
       (write-long (length _model_name) s) (princ _model_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _model_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass gazebo_msgs::GetModelPropertiesResponse
  :super ros::object
  :slots (_parent_model_name _canonical_body_name _body_names _geom_names _joint_names _child_model_names _is_static _success _status_message ))

(defmethod gazebo_msgs::GetModelPropertiesResponse
  (:init
   (&key
    ((:parent_model_name __parent_model_name) "")
    ((:canonical_body_name __canonical_body_name) "")
    ((:body_names __body_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:geom_names __geom_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:joint_names __joint_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:child_model_names __child_model_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:is_static __is_static) nil)
    ((:success __success) nil)
    ((:status_message __status_message) "")
    )
   (send-super :init)
   (setq _parent_model_name (string __parent_model_name))
   (setq _canonical_body_name (string __canonical_body_name))
   (setq _body_names __body_names)
   (setq _geom_names __geom_names)
   (setq _joint_names __joint_names)
   (setq _child_model_names __child_model_names)
   (setq _is_static __is_static)
   (setq _success __success)
   (setq _status_message (string __status_message))
   self)
  (:parent_model_name
   (&optional __parent_model_name)
   (if __parent_model_name (setq _parent_model_name __parent_model_name)) _parent_model_name)
  (:canonical_body_name
   (&optional __canonical_body_name)
   (if __canonical_body_name (setq _canonical_body_name __canonical_body_name)) _canonical_body_name)
  (:body_names
   (&optional __body_names)
   (if __body_names (setq _body_names __body_names)) _body_names)
  (:geom_names
   (&optional __geom_names)
   (if __geom_names (setq _geom_names __geom_names)) _geom_names)
  (:joint_names
   (&optional __joint_names)
   (if __joint_names (setq _joint_names __joint_names)) _joint_names)
  (:child_model_names
   (&optional __child_model_names)
   (if __child_model_names (setq _child_model_names __child_model_names)) _child_model_names)
  (:is_static
   (&optional __is_static)
   (if __is_static (setq _is_static __is_static)) _is_static)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:status_message
   (&optional __status_message)
   (if __status_message (setq _status_message __status_message)) _status_message)
  (:serialization-length
   ()
   (+
    ;; string _parent_model_name
    4 (length _parent_model_name)
    ;; string _canonical_body_name
    4 (length _canonical_body_name)
    ;; string[] _body_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _body_names)) 4
    ;; string[] _geom_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _geom_names)) 4
    ;; string[] _joint_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _joint_names)) 4
    ;; string[] _child_model_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _child_model_names)) 4
    ;; bool _is_static
    1
    ;; bool _success
    1
    ;; string _status_message
    4 (length _status_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _parent_model_name
       (write-long (length _parent_model_name) s) (princ _parent_model_name s)
     ;; string _canonical_body_name
       (write-long (length _canonical_body_name) s) (princ _canonical_body_name s)
     ;; string[] _body_names
     (write-long (length _body_names) s)
     (dolist (elem _body_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _geom_names
     (write-long (length _geom_names) s)
     (dolist (elem _geom_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _joint_names
     (write-long (length _joint_names) s)
     (dolist (elem _joint_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _child_model_names
     (write-long (length _child_model_names) s)
     (dolist (elem _child_model_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; bool _is_static
       (if _is_static (write-byte -1 s) (write-byte 0 s))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _status_message
       (write-long (length _status_message) s) (princ _status_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _parent_model_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _parent_model_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _canonical_body_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _canonical_body_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _body_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _body_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _body_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _geom_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _geom_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _geom_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _joint_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _joint_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _child_model_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _child_model_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _child_model_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; bool _is_static
     (setq _is_static (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _status_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass gazebo_msgs::GetModelProperties
  :super ros::object
  :slots ())

(setf (get gazebo_msgs::GetModelProperties :md5sum-) "5717f7bd34ed990fa80e28b3015027a3")
(setf (get gazebo_msgs::GetModelProperties :datatype-) "gazebo_msgs/GetModelProperties")
(setf (get gazebo_msgs::GetModelProperties :request) gazebo_msgs::GetModelPropertiesRequest)
(setf (get gazebo_msgs::GetModelProperties :response) gazebo_msgs::GetModelPropertiesResponse)

(defmethod gazebo_msgs::GetModelPropertiesRequest
  (:response () (instance gazebo_msgs::GetModelPropertiesResponse :init)))

(setf (get gazebo_msgs::GetModelPropertiesRequest :md5sum-) "5717f7bd34ed990fa80e28b3015027a3")
(setf (get gazebo_msgs::GetModelPropertiesRequest :datatype-) "gazebo_msgs/GetModelPropertiesRequest")
(setf (get gazebo_msgs::GetModelPropertiesRequest :definition-)
      "string model_name
---
string parent_model_name
string canonical_body_name
string[] body_names
string[] geom_names
string[] joint_names
string[] child_model_names
bool is_static
bool success
string status_message

")

(setf (get gazebo_msgs::GetModelPropertiesResponse :md5sum-) "5717f7bd34ed990fa80e28b3015027a3")
(setf (get gazebo_msgs::GetModelPropertiesResponse :datatype-) "gazebo_msgs/GetModelPropertiesResponse")
(setf (get gazebo_msgs::GetModelPropertiesResponse :definition-)
      "string model_name
---
string parent_model_name
string canonical_body_name
string[] body_names
string[] geom_names
string[] joint_names
string[] child_model_names
bool is_static
bool success
string status_message

")



(provide :gazebo_msgs/GetModelProperties "5717f7bd34ed990fa80e28b3015027a3")


