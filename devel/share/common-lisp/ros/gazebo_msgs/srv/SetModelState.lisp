; Auto-generated. Do not edit!


(cl:in-package gazebo_msgs-srv)


;//! \htmlinclude SetModelState-request.msg.html

(cl:defclass <SetModelState-request> (roslisp-msg-protocol:ros-message)
  ((model_state
    :reader model_state
    :initarg :model_state
    :type gazebo_msgs-msg:ModelState
    :initform (cl:make-instance 'gazebo_msgs-msg:ModelState)))
)

(cl:defclass SetModelState-request (<SetModelState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetModelState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetModelState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<SetModelState-request> is deprecated: use gazebo_msgs-srv:SetModelState-request instead.")))

(cl:ensure-generic-function 'model_state-val :lambda-list '(m))
(cl:defmethod model_state-val ((m <SetModelState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:model_state-val is deprecated.  Use gazebo_msgs-srv:model_state instead.")
  (model_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetModelState-request>) ostream)
  "Serializes a message object of type '<SetModelState-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'model_state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetModelState-request>) istream)
  "Deserializes a message object of type '<SetModelState-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'model_state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetModelState-request>)))
  "Returns string type for a service object of type '<SetModelState-request>"
  "gazebo_msgs/SetModelStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetModelState-request)))
  "Returns string type for a service object of type 'SetModelState-request"
  "gazebo_msgs/SetModelStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetModelState-request>)))
  "Returns md5sum for a message object of type '<SetModelState-request>"
  "5b3ab0281d4f5445def017e3a2e4a07b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetModelState-request)))
  "Returns md5sum for a message object of type 'SetModelState-request"
  "5b3ab0281d4f5445def017e3a2e4a07b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetModelState-request>)))
  "Returns full string definition for message of type '<SetModelState-request>"
  (cl:format cl:nil "gazebo_msgs/ModelState model_state~%~%================================================================================~%MSG: gazebo_msgs/ModelState~%# Set Gazebo Model pose and twist~%string model_name           # model to set state (pose and twist)~%geometry_msgs/Pose pose     # desired pose in reference frame~%geometry_msgs/Twist twist   # desired twist in reference frame~%string reference_frame      # set pose/twist relative to the frame of this entity (Body/Model)~%                            # leave empty or \"world\" or \"map\" defaults to world-frame~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetModelState-request)))
  "Returns full string definition for message of type 'SetModelState-request"
  (cl:format cl:nil "gazebo_msgs/ModelState model_state~%~%================================================================================~%MSG: gazebo_msgs/ModelState~%# Set Gazebo Model pose and twist~%string model_name           # model to set state (pose and twist)~%geometry_msgs/Pose pose     # desired pose in reference frame~%geometry_msgs/Twist twist   # desired twist in reference frame~%string reference_frame      # set pose/twist relative to the frame of this entity (Body/Model)~%                            # leave empty or \"world\" or \"map\" defaults to world-frame~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetModelState-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'model_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetModelState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetModelState-request
    (cl:cons ':model_state (model_state msg))
))
;//! \htmlinclude SetModelState-response.msg.html

(cl:defclass <SetModelState-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetModelState-response (<SetModelState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetModelState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetModelState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<SetModelState-response> is deprecated: use gazebo_msgs-srv:SetModelState-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetModelState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:success-val is deprecated.  Use gazebo_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'status_message-val :lambda-list '(m))
(cl:defmethod status_message-val ((m <SetModelState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:status_message-val is deprecated.  Use gazebo_msgs-srv:status_message instead.")
  (status_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetModelState-response>) ostream)
  "Serializes a message object of type '<SetModelState-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetModelState-response>) istream)
  "Deserializes a message object of type '<SetModelState-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetModelState-response>)))
  "Returns string type for a service object of type '<SetModelState-response>"
  "gazebo_msgs/SetModelStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetModelState-response)))
  "Returns string type for a service object of type 'SetModelState-response"
  "gazebo_msgs/SetModelStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetModelState-response>)))
  "Returns md5sum for a message object of type '<SetModelState-response>"
  "5b3ab0281d4f5445def017e3a2e4a07b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetModelState-response)))
  "Returns md5sum for a message object of type 'SetModelState-response"
  "5b3ab0281d4f5445def017e3a2e4a07b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetModelState-response>)))
  "Returns full string definition for message of type '<SetModelState-response>"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetModelState-response)))
  "Returns full string definition for message of type 'SetModelState-response"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetModelState-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'status_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetModelState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetModelState-response
    (cl:cons ':success (success msg))
    (cl:cons ':status_message (status_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetModelState)))
  'SetModelState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetModelState)))
  'SetModelState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetModelState)))
  "Returns string type for a service object of type '<SetModelState>"
  "gazebo_msgs/SetModelState")