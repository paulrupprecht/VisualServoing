; Auto-generated. Do not edit!


(cl:in-package gazebo_msgs-srv)


;//! \htmlinclude ApplyBodyWrench-request.msg.html

(cl:defclass <ApplyBodyWrench-request> (roslisp-msg-protocol:ros-message)
  ((body_name
    :reader body_name
    :initarg :body_name
    :type cl:string
    :initform "")
   (reference_frame
    :reader reference_frame
    :initarg :reference_frame
    :type cl:string
    :initform "")
   (reference_point
    :reader reference_point
    :initarg :reference_point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (wrench
    :reader wrench
    :initarg :wrench
    :type geometry_msgs-msg:Wrench
    :initform (cl:make-instance 'geometry_msgs-msg:Wrench))
   (start_time
    :reader start_time
    :initarg :start_time
    :type cl:real
    :initform 0)
   (duration
    :reader duration
    :initarg :duration
    :type cl:real
    :initform 0))
)

(cl:defclass ApplyBodyWrench-request (<ApplyBodyWrench-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ApplyBodyWrench-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ApplyBodyWrench-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<ApplyBodyWrench-request> is deprecated: use gazebo_msgs-srv:ApplyBodyWrench-request instead.")))

(cl:ensure-generic-function 'body_name-val :lambda-list '(m))
(cl:defmethod body_name-val ((m <ApplyBodyWrench-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:body_name-val is deprecated.  Use gazebo_msgs-srv:body_name instead.")
  (body_name m))

(cl:ensure-generic-function 'reference_frame-val :lambda-list '(m))
(cl:defmethod reference_frame-val ((m <ApplyBodyWrench-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:reference_frame-val is deprecated.  Use gazebo_msgs-srv:reference_frame instead.")
  (reference_frame m))

(cl:ensure-generic-function 'reference_point-val :lambda-list '(m))
(cl:defmethod reference_point-val ((m <ApplyBodyWrench-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:reference_point-val is deprecated.  Use gazebo_msgs-srv:reference_point instead.")
  (reference_point m))

(cl:ensure-generic-function 'wrench-val :lambda-list '(m))
(cl:defmethod wrench-val ((m <ApplyBodyWrench-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:wrench-val is deprecated.  Use gazebo_msgs-srv:wrench instead.")
  (wrench m))

(cl:ensure-generic-function 'start_time-val :lambda-list '(m))
(cl:defmethod start_time-val ((m <ApplyBodyWrench-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:start_time-val is deprecated.  Use gazebo_msgs-srv:start_time instead.")
  (start_time m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <ApplyBodyWrench-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:duration-val is deprecated.  Use gazebo_msgs-srv:duration instead.")
  (duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ApplyBodyWrench-request>) ostream)
  "Serializes a message object of type '<ApplyBodyWrench-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'body_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'body_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reference_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reference_frame))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reference_point) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wrench) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'start_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'start_time) (cl:floor (cl:slot-value msg 'start_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'duration)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'duration) (cl:floor (cl:slot-value msg 'duration)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ApplyBodyWrench-request>) istream)
  "Deserializes a message object of type '<ApplyBodyWrench-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'body_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'body_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reference_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reference_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reference_point) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wrench) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'start_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'duration) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ApplyBodyWrench-request>)))
  "Returns string type for a service object of type '<ApplyBodyWrench-request>"
  "gazebo_msgs/ApplyBodyWrenchRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ApplyBodyWrench-request)))
  "Returns string type for a service object of type 'ApplyBodyWrench-request"
  "gazebo_msgs/ApplyBodyWrenchRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ApplyBodyWrench-request>)))
  "Returns md5sum for a message object of type '<ApplyBodyWrench-request>"
  "585b9f9618aa0581b207e2f2d90866bc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ApplyBodyWrench-request)))
  "Returns md5sum for a message object of type 'ApplyBodyWrench-request"
  "585b9f9618aa0581b207e2f2d90866bc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ApplyBodyWrench-request>)))
  "Returns full string definition for message of type '<ApplyBodyWrench-request>"
  (cl:format cl:nil "~%~%~%string body_name~%~%~%string reference_frame~%~%~%geometry_msgs/Point  reference_point~%geometry_msgs/Wrench wrench~%time start_time~%~%~%duration duration~%~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ApplyBodyWrench-request)))
  "Returns full string definition for message of type 'ApplyBodyWrench-request"
  (cl:format cl:nil "~%~%~%string body_name~%~%~%string reference_frame~%~%~%geometry_msgs/Point  reference_point~%geometry_msgs/Wrench wrench~%time start_time~%~%~%duration duration~%~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ApplyBodyWrench-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'body_name))
     4 (cl:length (cl:slot-value msg 'reference_frame))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reference_point))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wrench))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ApplyBodyWrench-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ApplyBodyWrench-request
    (cl:cons ':body_name (body_name msg))
    (cl:cons ':reference_frame (reference_frame msg))
    (cl:cons ':reference_point (reference_point msg))
    (cl:cons ':wrench (wrench msg))
    (cl:cons ':start_time (start_time msg))
    (cl:cons ':duration (duration msg))
))
;//! \htmlinclude ApplyBodyWrench-response.msg.html

(cl:defclass <ApplyBodyWrench-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (status_message
    :reader status_message
    :initarg :status_message
    :type cl:string
    :initform ""))
)

(cl:defclass ApplyBodyWrench-response (<ApplyBodyWrench-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ApplyBodyWrench-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ApplyBodyWrench-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<ApplyBodyWrench-response> is deprecated: use gazebo_msgs-srv:ApplyBodyWrench-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ApplyBodyWrench-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:success-val is deprecated.  Use gazebo_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'status_message-val :lambda-list '(m))
(cl:defmethod status_message-val ((m <ApplyBodyWrench-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:status_message-val is deprecated.  Use gazebo_msgs-srv:status_message instead.")
  (status_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ApplyBodyWrench-response>) ostream)
  "Serializes a message object of type '<ApplyBodyWrench-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ApplyBodyWrench-response>) istream)
  "Deserializes a message object of type '<ApplyBodyWrench-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ApplyBodyWrench-response>)))
  "Returns string type for a service object of type '<ApplyBodyWrench-response>"
  "gazebo_msgs/ApplyBodyWrenchResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ApplyBodyWrench-response)))
  "Returns string type for a service object of type 'ApplyBodyWrench-response"
  "gazebo_msgs/ApplyBodyWrenchResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ApplyBodyWrench-response>)))
  "Returns md5sum for a message object of type '<ApplyBodyWrench-response>"
  "585b9f9618aa0581b207e2f2d90866bc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ApplyBodyWrench-response)))
  "Returns md5sum for a message object of type 'ApplyBodyWrench-response"
  "585b9f9618aa0581b207e2f2d90866bc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ApplyBodyWrench-response>)))
  "Returns full string definition for message of type '<ApplyBodyWrench-response>"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ApplyBodyWrench-response)))
  "Returns full string definition for message of type 'ApplyBodyWrench-response"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ApplyBodyWrench-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'status_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ApplyBodyWrench-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ApplyBodyWrench-response
    (cl:cons ':success (success msg))
    (cl:cons ':status_message (status_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ApplyBodyWrench)))
  'ApplyBodyWrench-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ApplyBodyWrench)))
  'ApplyBodyWrench-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ApplyBodyWrench)))
  "Returns string type for a service object of type '<ApplyBodyWrench>"
  "gazebo_msgs/ApplyBodyWrench")