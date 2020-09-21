// Auto-generated. Do not edit!

// (in-package gazebo_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class WorldState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.name = null;
      this.pose = null;
      this.twist = null;
      this.wrench = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = [];
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = [];
      }
      if (initObj.hasOwnProperty('twist')) {
        this.twist = initObj.twist
      }
      else {
        this.twist = [];
      }
      if (initObj.hasOwnProperty('wrench')) {
        this.wrench = initObj.wrench
      }
      else {
        this.wrench = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WorldState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _arraySerializer.string(obj.name, buffer, bufferOffset, null);
    // Serialize message field [pose]
    // Serialize the length for message field [pose]
    bufferOffset = _serializer.uint32(obj.pose.length, buffer, bufferOffset);
    obj.pose.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [twist]
    // Serialize the length for message field [twist]
    bufferOffset = _serializer.uint32(obj.twist.length, buffer, bufferOffset);
    obj.twist.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Twist.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [wrench]
    // Serialize the length for message field [wrench]
    bufferOffset = _serializer.uint32(obj.wrench.length, buffer, bufferOffset);
    obj.wrench.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Wrench.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WorldState
    let len;
    let data = new WorldState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [pose]
    // Deserialize array length for message field [pose]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pose = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pose[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [twist]
    // Deserialize array length for message field [twist]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.twist = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.twist[i] = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [wrench]
    // Deserialize array length for message field [wrench]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.wrench = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.wrench[i] = geometry_msgs.msg.Wrench.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.name.forEach((val) => {
      length += 4 + val.length;
    });
    length += 56 * object.pose.length;
    length += 48 * object.twist.length;
    length += 48 * object.wrench.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gazebo_msgs/WorldState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'de1a9de3ab7ba97ac0e9ec01a4eb481e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This is a message that holds data necessary to reconstruct a snapshot of the world
    #
    # = Approach to Message Passing =
    # The state of the world is defined by either
    #   1. Inertial Model pose, twist
    #      * kinematic data - connectivity graph from Model to each Link
    #      * joint angles
    #      * joint velocities
    #      * Applied forces - Body wrench
    #        * relative transform from Body to each collision Geom
    # Or
    #   2. Inertial (absolute) Body pose, twist, wrench
    #      * relative transform from Body to each collision Geom - constant, so not sent over wire
    #      * back compute from canonical body info to get Model pose and twist.
    #
    # Chooing (2.) because it matches most physics engines out there
    #   and is simpler.
    #
    # = Future =
    # Consider impacts on using reduced coordinates / graph (parent/child links) approach
    #   constraint and physics solvers.
    #
    # = Application =
    # This message is used to do the following:
    #   * reconstruct the world and objects for sensor generation
    #   * stop / start simulation - need pose, twist, wrench of each body
    #   * collision detection - need pose of each collision geometry.  velocity/acceleration if
    #
    # = Assumptions =
    # Assuming that each (physics) processor node locally already has
    #   * collision information - Trimesh for Geoms, etc
    #   * relative transforms from Body to Geom - this is assumed to be fixed, do not send oved wire
    #   * inertial information - does not vary in time
    #   * visual information - does not vary in time
    #
    
    Header header
    
    string[] name
    geometry_msgs/Pose[] pose
    geometry_msgs/Twist[] twist
    geometry_msgs/Wrench[] wrench
    
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
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
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
    MSG: geometry_msgs/Wrench
    # This represents force in free space, separated into
    # its linear and angular parts.
    Vector3  force
    Vector3  torque
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WorldState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = []
    }

    if (msg.pose !== undefined) {
      resolved.pose = new Array(msg.pose.length);
      for (let i = 0; i < resolved.pose.length; ++i) {
        resolved.pose[i] = geometry_msgs.msg.Pose.Resolve(msg.pose[i]);
      }
    }
    else {
      resolved.pose = []
    }

    if (msg.twist !== undefined) {
      resolved.twist = new Array(msg.twist.length);
      for (let i = 0; i < resolved.twist.length; ++i) {
        resolved.twist[i] = geometry_msgs.msg.Twist.Resolve(msg.twist[i]);
      }
    }
    else {
      resolved.twist = []
    }

    if (msg.wrench !== undefined) {
      resolved.wrench = new Array(msg.wrench.length);
      for (let i = 0; i < resolved.wrench.length; ++i) {
        resolved.wrench[i] = geometry_msgs.msg.Wrench.Resolve(msg.wrench[i]);
      }
    }
    else {
      resolved.wrench = []
    }

    return resolved;
    }
};

module.exports = WorldState;
