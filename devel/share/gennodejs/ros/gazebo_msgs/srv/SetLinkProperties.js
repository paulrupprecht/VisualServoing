// Auto-generated. Do not edit!

// (in-package gazebo_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetLinkPropertiesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.link_name = null;
      this.com = null;
      this.gravity_mode = null;
      this.mass = null;
      this.ixx = null;
      this.ixy = null;
      this.ixz = null;
      this.iyy = null;
      this.iyz = null;
      this.izz = null;
    }
    else {
      if (initObj.hasOwnProperty('link_name')) {
        this.link_name = initObj.link_name
      }
      else {
        this.link_name = '';
      }
      if (initObj.hasOwnProperty('com')) {
        this.com = initObj.com
      }
      else {
        this.com = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('gravity_mode')) {
        this.gravity_mode = initObj.gravity_mode
      }
      else {
        this.gravity_mode = false;
      }
      if (initObj.hasOwnProperty('mass')) {
        this.mass = initObj.mass
      }
      else {
        this.mass = 0.0;
      }
      if (initObj.hasOwnProperty('ixx')) {
        this.ixx = initObj.ixx
      }
      else {
        this.ixx = 0.0;
      }
      if (initObj.hasOwnProperty('ixy')) {
        this.ixy = initObj.ixy
      }
      else {
        this.ixy = 0.0;
      }
      if (initObj.hasOwnProperty('ixz')) {
        this.ixz = initObj.ixz
      }
      else {
        this.ixz = 0.0;
      }
      if (initObj.hasOwnProperty('iyy')) {
        this.iyy = initObj.iyy
      }
      else {
        this.iyy = 0.0;
      }
      if (initObj.hasOwnProperty('iyz')) {
        this.iyz = initObj.iyz
      }
      else {
        this.iyz = 0.0;
      }
      if (initObj.hasOwnProperty('izz')) {
        this.izz = initObj.izz
      }
      else {
        this.izz = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetLinkPropertiesRequest
    // Serialize message field [link_name]
    bufferOffset = _serializer.string(obj.link_name, buffer, bufferOffset);
    // Serialize message field [com]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.com, buffer, bufferOffset);
    // Serialize message field [gravity_mode]
    bufferOffset = _serializer.bool(obj.gravity_mode, buffer, bufferOffset);
    // Serialize message field [mass]
    bufferOffset = _serializer.float64(obj.mass, buffer, bufferOffset);
    // Serialize message field [ixx]
    bufferOffset = _serializer.float64(obj.ixx, buffer, bufferOffset);
    // Serialize message field [ixy]
    bufferOffset = _serializer.float64(obj.ixy, buffer, bufferOffset);
    // Serialize message field [ixz]
    bufferOffset = _serializer.float64(obj.ixz, buffer, bufferOffset);
    // Serialize message field [iyy]
    bufferOffset = _serializer.float64(obj.iyy, buffer, bufferOffset);
    // Serialize message field [iyz]
    bufferOffset = _serializer.float64(obj.iyz, buffer, bufferOffset);
    // Serialize message field [izz]
    bufferOffset = _serializer.float64(obj.izz, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetLinkPropertiesRequest
    let len;
    let data = new SetLinkPropertiesRequest(null);
    // Deserialize message field [link_name]
    data.link_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [com]
    data.com = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [gravity_mode]
    data.gravity_mode = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mass]
    data.mass = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ixx]
    data.ixx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ixy]
    data.ixy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ixz]
    data.ixz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [iyy]
    data.iyy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [iyz]
    data.iyz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [izz]
    data.izz = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.link_name.length;
    return length + 117;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gazebo_msgs/SetLinkPropertiesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '68ac74a4be01b165bc305b5ccdc45e91';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string link_name
    
    geometry_msgs/Pose com
    
    
    bool gravity_mode
    float64 mass
    float64 ixx
    float64 ixy
    float64 ixz
    float64 iyy
    float64 iyz
    float64 izz
    
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
    const resolved = new SetLinkPropertiesRequest(null);
    if (msg.link_name !== undefined) {
      resolved.link_name = msg.link_name;
    }
    else {
      resolved.link_name = ''
    }

    if (msg.com !== undefined) {
      resolved.com = geometry_msgs.msg.Pose.Resolve(msg.com)
    }
    else {
      resolved.com = new geometry_msgs.msg.Pose()
    }

    if (msg.gravity_mode !== undefined) {
      resolved.gravity_mode = msg.gravity_mode;
    }
    else {
      resolved.gravity_mode = false
    }

    if (msg.mass !== undefined) {
      resolved.mass = msg.mass;
    }
    else {
      resolved.mass = 0.0
    }

    if (msg.ixx !== undefined) {
      resolved.ixx = msg.ixx;
    }
    else {
      resolved.ixx = 0.0
    }

    if (msg.ixy !== undefined) {
      resolved.ixy = msg.ixy;
    }
    else {
      resolved.ixy = 0.0
    }

    if (msg.ixz !== undefined) {
      resolved.ixz = msg.ixz;
    }
    else {
      resolved.ixz = 0.0
    }

    if (msg.iyy !== undefined) {
      resolved.iyy = msg.iyy;
    }
    else {
      resolved.iyy = 0.0
    }

    if (msg.iyz !== undefined) {
      resolved.iyz = msg.iyz;
    }
    else {
      resolved.iyz = 0.0
    }

    if (msg.izz !== undefined) {
      resolved.izz = msg.izz;
    }
    else {
      resolved.izz = 0.0
    }

    return resolved;
    }
};

class SetLinkPropertiesResponse {
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
    // Serializes a message object of type SetLinkPropertiesResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [status_message]
    bufferOffset = _serializer.string(obj.status_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetLinkPropertiesResponse
    let len;
    let data = new SetLinkPropertiesResponse(null);
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
    return 'gazebo_msgs/SetLinkPropertiesResponse';
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
    const resolved = new SetLinkPropertiesResponse(null);
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
  Request: SetLinkPropertiesRequest,
  Response: SetLinkPropertiesResponse,
  md5sum() { return 'd534ce1b36ee99de0ffa806c3a6348f0'; },
  datatype() { return 'gazebo_msgs/SetLinkProperties'; }
};
