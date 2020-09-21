// Auto-generated. Do not edit!

// (in-package gazebo_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let trajectory_msgs = _finder('trajectory_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetJointTrajectoryRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.model_name = null;
      this.joint_trajectory = null;
      this.model_pose = null;
      this.set_model_pose = null;
      this.disable_physics_updates = null;
    }
    else {
      if (initObj.hasOwnProperty('model_name')) {
        this.model_name = initObj.model_name
      }
      else {
        this.model_name = '';
      }
      if (initObj.hasOwnProperty('joint_trajectory')) {
        this.joint_trajectory = initObj.joint_trajectory
      }
      else {
        this.joint_trajectory = new trajectory_msgs.msg.JointTrajectory();
      }
      if (initObj.hasOwnProperty('model_pose')) {
        this.model_pose = initObj.model_pose
      }
      else {
        this.model_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('set_model_pose')) {
        this.set_model_pose = initObj.set_model_pose
      }
      else {
        this.set_model_pose = false;
      }
      if (initObj.hasOwnProperty('disable_physics_updates')) {
        this.disable_physics_updates = initObj.disable_physics_updates
      }
      else {
        this.disable_physics_updates = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetJointTrajectoryRequest
    // Serialize message field [model_name]
    bufferOffset = _serializer.string(obj.model_name, buffer, bufferOffset);
    // Serialize message field [joint_trajectory]
    bufferOffset = trajectory_msgs.msg.JointTrajectory.serialize(obj.joint_trajectory, buffer, bufferOffset);
    // Serialize message field [model_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.model_pose, buffer, bufferOffset);
    // Serialize message field [set_model_pose]
    bufferOffset = _serializer.bool(obj.set_model_pose, buffer, bufferOffset);
    // Serialize message field [disable_physics_updates]
    bufferOffset = _serializer.bool(obj.disable_physics_updates, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetJointTrajectoryRequest
    let len;
    let data = new SetJointTrajectoryRequest(null);
    // Deserialize message field [model_name]
    data.model_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [joint_trajectory]
    data.joint_trajectory = trajectory_msgs.msg.JointTrajectory.deserialize(buffer, bufferOffset);
    // Deserialize message field [model_pose]
    data.model_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [set_model_pose]
    data.set_model_pose = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [disable_physics_updates]
    data.disable_physics_updates = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.model_name.length;
    length += trajectory_msgs.msg.JointTrajectory.getMessageSize(object.joint_trajectory);
    return length + 62;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gazebo_msgs/SetJointTrajectoryRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '649dd2eba5ffd358069238825f9f85ab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string model_name
    trajectory_msgs/JointTrajectory joint_trajectory
    geometry_msgs/Pose model_pose
    bool set_model_pose
    bool disable_physics_updates
    
    ================================================================================
    MSG: trajectory_msgs/JointTrajectory
    Header header
    string[] joint_names
    JointTrajectoryPoint[] points
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: trajectory_msgs/JointTrajectoryPoint
    # Each trajectory point specifies either positions[, velocities[, accelerations]]
    # or positions[, effort] for the trajectory to be executed.
    # All specified values are in the same order as the joint names in JointTrajectory.msg
    
    float64[] positions
    float64[] velocities
    float64[] accelerations
    float64[] effort
    duration time_from_start
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetJointTrajectoryRequest(null);
    if (msg.model_name !== undefined) {
      resolved.model_name = msg.model_name;
    }
    else {
      resolved.model_name = ''
    }

    if (msg.joint_trajectory !== undefined) {
      resolved.joint_trajectory = trajectory_msgs.msg.JointTrajectory.Resolve(msg.joint_trajectory)
    }
    else {
      resolved.joint_trajectory = new trajectory_msgs.msg.JointTrajectory()
    }

    if (msg.model_pose !== undefined) {
      resolved.model_pose = geometry_msgs.msg.Pose.Resolve(msg.model_pose)
    }
    else {
      resolved.model_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.set_model_pose !== undefined) {
      resolved.set_model_pose = msg.set_model_pose;
    }
    else {
      resolved.set_model_pose = false
    }

    if (msg.disable_physics_updates !== undefined) {
      resolved.disable_physics_updates = msg.disable_physics_updates;
    }
    else {
      resolved.disable_physics_updates = false
    }

    return resolved;
    }
};

class SetJointTrajectoryResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.status_message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('status_message')) {
        this.status_message = initObj.status_message
      }
      else {
        this.status_message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetJointTrajectoryResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [status_message]
    bufferOffset = _serializer.string(obj.status_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetJointTrajectoryResponse
    let len;
    let data = new SetJointTrajectoryResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [status_message]
    data.status_message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.status_message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gazebo_msgs/SetJointTrajectoryResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2ec6f3eff0161f4257b808b12bc830c2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string status_message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetJointTrajectoryResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.status_message !== undefined) {
      resolved.status_message = msg.status_message;
    }
    else {
      resolved.status_message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: SetJointTrajectoryRequest,
  Response: SetJointTrajectoryResponse,
  md5sum() { return '88f5c10979e3f9649d5ae87a3b12aa65'; },
  datatype() { return 'gazebo_msgs/SetJointTrajectory'; }
};
