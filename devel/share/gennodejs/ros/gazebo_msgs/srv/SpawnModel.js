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

class SpawnModelRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.model_name = null;
      this.model_xml = null;
      this.robot_namespace = null;
      this.initial_pose = null;
      this.reference_frame = null;
    }
    else {
      if (initObj.hasOwnProperty('model_name')) {
        this.model_name = initObj.model_name
      }
      else {
        this.model_name = '';
      }
      if (initObj.hasOwnProperty('model_xml')) {
        this.model_xml = initObj.model_xml
      }
      else {
        this.model_xml = '';
      }
      if (initObj.hasOwnProperty('robot_namespace')) {
        this.robot_namespace = initObj.robot_namespace
      }
      else {
        this.robot_namespace = '';
      }
      if (initObj.hasOwnProperty('initial_pose')) {
        this.initial_pose = initObj.initial_pose
      }
      else {
        this.initial_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('reference_frame')) {
        this.reference_frame = initObj.reference_frame
      }
      else {
        this.reference_frame = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SpawnModelRequest
    // Serialize message field [model_name]
    bufferOffset = _serializer.string(obj.model_name, buffer, bufferOffset);
    // Serialize message field [model_xml]
    bufferOffset = _serializer.string(obj.model_xml, buffer, bufferOffset);
    // Serialize message field [robot_namespace]
    bufferOffset = _serializer.string(obj.robot_namespace, buffer, bufferOffset);
    // Serialize message field [initial_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.initial_pose, buffer, bufferOffset);
    // Serialize message field [reference_frame]
    bufferOffset = _serializer.string(obj.reference_frame, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpawnModelRequest
    let len;
    let data = new SpawnModelRequest(null);
    // Deserialize message field [model_name]
    data.model_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [model_xml]
    data.model_xml = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robot_namespace]
    data.robot_namespace = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [initial_pose]
    data.initial_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [reference_frame]
    data.reference_frame = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.model_name.length;
    length += object.model_xml.length;
    length += object.robot_namespace.length;
    length += object.reference_frame.length;
    return length + 72;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gazebo_msgs/SpawnModelRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6d0eba5753761cd57e6263a056b79930';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string model_name
    string model_xml
    string robot_namespace
    geometry_msgs/Pose initial_pose
    string reference_frame
    
    
    
    
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
    const resolved = new SpawnModelRequest(null);
    if (msg.model_name !== undefined) {
      resolved.model_name = msg.model_name;
    }
    else {
      resolved.model_name = ''
    }

    if (msg.model_xml !== undefined) {
      resolved.model_xml = msg.model_xml;
    }
    else {
      resolved.model_xml = ''
    }

    if (msg.robot_namespace !== undefined) {
      resolved.robot_namespace = msg.robot_namespace;
    }
    else {
      resolved.robot_namespace = ''
    }

    if (msg.initial_pose !== undefined) {
      resolved.initial_pose = geometry_msgs.msg.Pose.Resolve(msg.initial_pose)
    }
    else {
      resolved.initial_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.reference_frame !== undefined) {
      resolved.reference_frame = msg.reference_frame;
    }
    else {
      resolved.reference_frame = ''
    }

    return resolved;
    }
};

class SpawnModelResponse {
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
    // Serializes a message object of type SpawnModelResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [status_message]
    bufferOffset = _serializer.string(obj.status_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpawnModelResponse
    let len;
    let data = new SpawnModelResponse(null);
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
    return 'gazebo_msgs/SpawnModelResponse';
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
    const resolved = new SpawnModelResponse(null);
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
  Request: SpawnModelRequest,
  Response: SpawnModelResponse,
  md5sum() { return '9ed9c82c96abe1a00c3e8cdaeee24413'; },
  datatype() { return 'gazebo_msgs/SpawnModel'; }
};
