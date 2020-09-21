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

class GetWorldPropertiesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetWorldPropertiesRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetWorldPropertiesRequest
    let len;
    let data = new GetWorldPropertiesRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gazebo_msgs/GetWorldPropertiesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetWorldPropertiesRequest(null);
    return resolved;
    }
};

class GetWorldPropertiesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sim_time = null;
      this.model_names = null;
      this.rendering_enabled = null;
      this.success = null;
      this.status_message = null;
    }
    else {
      if (initObj.hasOwnProperty('sim_time')) {
        this.sim_time = initObj.sim_time
      }
      else {
        this.sim_time = 0.0;
      }
      if (initObj.hasOwnProperty('model_names')) {
        this.model_names = initObj.model_names
      }
      else {
        this.model_names = [];
      }
      if (initObj.hasOwnProperty('rendering_enabled')) {
        this.rendering_enabled = initObj.rendering_enabled
      }
      else {
        this.rendering_enabled = false;
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
    // Serializes a message object of type GetWorldPropertiesResponse
    // Serialize message field [sim_time]
    bufferOffset = _serializer.float64(obj.sim_time, buffer, bufferOffset);
    // Serialize message field [model_names]
    bufferOffset = _arraySerializer.string(obj.model_names, buffer, bufferOffset, null);
    // Serialize message field [rendering_enabled]
    bufferOffset = _serializer.bool(obj.rendering_enabled, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [status_message]
    bufferOffset = _serializer.string(obj.status_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetWorldPropertiesResponse
    let len;
    let data = new GetWorldPropertiesResponse(null);
    // Deserialize message field [sim_time]
    data.sim_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [model_names]
    data.model_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [rendering_enabled]
    data.rendering_enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [status_message]
    data.status_message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.model_names.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.status_message.length;
    return length + 18;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gazebo_msgs/GetWorldPropertiesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '36bb0f2eccf4d8be971410c22818ba3f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 sim_time
    string[] model_names
    bool rendering_enabled
    bool success
    string status_message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetWorldPropertiesResponse(null);
    if (msg.sim_time !== undefined) {
      resolved.sim_time = msg.sim_time;
    }
    else {
      resolved.sim_time = 0.0
    }

    if (msg.model_names !== undefined) {
      resolved.model_names = msg.model_names;
    }
    else {
      resolved.model_names = []
    }

    if (msg.rendering_enabled !== undefined) {
      resolved.rendering_enabled = msg.rendering_enabled;
    }
    else {
      resolved.rendering_enabled = false
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
  Request: GetWorldPropertiesRequest,
  Response: GetWorldPropertiesResponse,
  md5sum() { return '36bb0f2eccf4d8be971410c22818ba3f'; },
  datatype() { return 'gazebo_msgs/GetWorldProperties'; }
};
