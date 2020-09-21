// Auto-generated. Do not edit!

// (in-package gazebo_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetModelPropertiesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.model_name = null;
    }
    else {
      if (initObj.hasOwnProperty('model_name')) {
        this.model_name = initObj.model_name
      }
      else {
        this.model_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetModelPropertiesRequest
    // Serialize message field [model_name]
    bufferOffset = _serializer.string(obj.model_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetModelPropertiesRequest
    let len;
    let data = new GetModelPropertiesRequest(null);
    // Deserialize message field [model_name]
    data.model_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.model_name.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gazebo_msgs/GetModelPropertiesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ea31c8eab6fc401383cf528a7c0984ba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string model_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetModelPropertiesRequest(null);
    if (msg.model_name !== undefined) {
      resolved.model_name = msg.model_name;
    }
    else {
      resolved.model_name = ''
    }

    return resolved;
    }
};

class GetModelPropertiesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.parent_model_name = null;
      this.canonical_body_name = null;
      this.body_names = null;
      this.geom_names = null;
      this.joint_names = null;
      this.child_model_names = null;
      this.is_static = null;
      this.success = null;
      this.status_message = null;
    }
    else {
      if (initObj.hasOwnProperty('parent_model_name')) {
        this.parent_model_name = initObj.parent_model_name
      }
      else {
        this.parent_model_name = '';
      }
      if (initObj.hasOwnProperty('canonical_body_name')) {
        this.canonical_body_name = initObj.canonical_body_name
      }
      else {
        this.canonical_body_name = '';
      }
      if (initObj.hasOwnProperty('body_names')) {
        this.body_names = initObj.body_names
      }
      else {
        this.body_names = [];
      }
      if (initObj.hasOwnProperty('geom_names')) {
        this.geom_names = initObj.geom_names
      }
      else {
        this.geom_names = [];
      }
      if (initObj.hasOwnProperty('joint_names')) {
        this.joint_names = initObj.joint_names
      }
      else {
        this.joint_names = [];
      }
      if (initObj.hasOwnProperty('child_model_names')) {
        this.child_model_names = initObj.child_model_names
      }
      else {
        this.child_model_names = [];
      }
      if (initObj.hasOwnProperty('is_static')) {
        this.is_static = initObj.is_static
      }
      else {
        this.is_static = false;
      }
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
    // Serializes a message object of type GetModelPropertiesResponse
    // Serialize message field [parent_model_name]
    bufferOffset = _serializer.string(obj.parent_model_name, buffer, bufferOffset);
    // Serialize message field [canonical_body_name]
    bufferOffset = _serializer.string(obj.canonical_body_name, buffer, bufferOffset);
    // Serialize message field [body_names]
    bufferOffset = _arraySerializer.string(obj.body_names, buffer, bufferOffset, null);
    // Serialize message field [geom_names]
    bufferOffset = _arraySerializer.string(obj.geom_names, buffer, bufferOffset, null);
    // Serialize message field [joint_names]
    bufferOffset = _arraySerializer.string(obj.joint_names, buffer, bufferOffset, null);
    // Serialize message field [child_model_names]
    bufferOffset = _arraySerializer.string(obj.child_model_names, buffer, bufferOffset, null);
    // Serialize message field [is_static]
    bufferOffset = _serializer.bool(obj.is_static, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [status_message]
    bufferOffset = _serializer.string(obj.status_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetModelPropertiesResponse
    let len;
    let data = new GetModelPropertiesResponse(null);
    // Deserialize message field [parent_model_name]
    data.parent_model_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [canonical_body_name]
    data.canonical_body_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [body_names]
    data.body_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [geom_names]
    data.geom_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [joint_names]
    data.joint_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [child_model_names]
    data.child_model_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [is_static]
    data.is_static = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [status_message]
    data.status_message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.parent_model_name.length;
    length += object.canonical_body_name.length;
    object.body_names.forEach((val) => {
      length += 4 + val.length;
    });
    object.geom_names.forEach((val) => {
      length += 4 + val.length;
    });
    object.joint_names.forEach((val) => {
      length += 4 + val.length;
    });
    object.child_model_names.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.status_message.length;
    return length + 30;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gazebo_msgs/GetModelPropertiesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b7f370938ef77b464b95f1bab3ec5028';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string parent_model_name
    string canonical_body_name
    string[] body_names
    string[] geom_names
    string[] joint_names
    string[] child_model_names
    bool is_static
    bool success
    string status_message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetModelPropertiesResponse(null);
    if (msg.parent_model_name !== undefined) {
      resolved.parent_model_name = msg.parent_model_name;
    }
    else {
      resolved.parent_model_name = ''
    }

    if (msg.canonical_body_name !== undefined) {
      resolved.canonical_body_name = msg.canonical_body_name;
    }
    else {
      resolved.canonical_body_name = ''
    }

    if (msg.body_names !== undefined) {
      resolved.body_names = msg.body_names;
    }
    else {
      resolved.body_names = []
    }

    if (msg.geom_names !== undefined) {
      resolved.geom_names = msg.geom_names;
    }
    else {
      resolved.geom_names = []
    }

    if (msg.joint_names !== undefined) {
      resolved.joint_names = msg.joint_names;
    }
    else {
      resolved.joint_names = []
    }

    if (msg.child_model_names !== undefined) {
      resolved.child_model_names = msg.child_model_names;
    }
    else {
      resolved.child_model_names = []
    }

    if (msg.is_static !== undefined) {
      resolved.is_static = msg.is_static;
    }
    else {
      resolved.is_static = false
    }

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
  Request: GetModelPropertiesRequest,
  Response: GetModelPropertiesResponse,
  md5sum() { return '5717f7bd34ed990fa80e28b3015027a3'; },
  datatype() { return 'gazebo_msgs/GetModelProperties'; }
};
