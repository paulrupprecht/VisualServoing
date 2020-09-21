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

let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GetLightPropertiesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.light_name = null;
    }
    else {
      if (initObj.hasOwnProperty('light_name')) {
        this.light_name = initObj.light_name
      }
      else {
        this.light_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetLightPropertiesRequest
    // Serialize message field [light_name]
    bufferOffset = _serializer.string(obj.light_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetLightPropertiesRequest
    let len;
    let data = new GetLightPropertiesRequest(null);
    // Deserialize message field [light_name]
    data.light_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.light_name.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gazebo_msgs/GetLightPropertiesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4fb676dfb4741fc866365702a859441c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string light_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetLightPropertiesRequest(null);
    if (msg.light_name !== undefined) {
      resolved.light_name = msg.light_name;
    }
    else {
      resolved.light_name = ''
    }

    return resolved;
    }
};

class GetLightPropertiesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.diffuse = null;
      this.attenuation_constant = null;
      this.attenuation_linear = null;
      this.attenuation_quadratic = null;
      this.success = null;
      this.status_message = null;
    }
    else {
      if (initObj.hasOwnProperty('diffuse')) {
        this.diffuse = initObj.diffuse
      }
      else {
        this.diffuse = new std_msgs.msg.ColorRGBA();
      }
      if (initObj.hasOwnProperty('attenuation_constant')) {
        this.attenuation_constant = initObj.attenuation_constant
      }
      else {
        this.attenuation_constant = 0.0;
      }
      if (initObj.hasOwnProperty('attenuation_linear')) {
        this.attenuation_linear = initObj.attenuation_linear
      }
      else {
        this.attenuation_linear = 0.0;
      }
      if (initObj.hasOwnProperty('attenuation_quadratic')) {
        this.attenuation_quadratic = initObj.attenuation_quadratic
      }
      else {
        this.attenuation_quadratic = 0.0;
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
    // Serializes a message object of type GetLightPropertiesResponse
    // Serialize message field [diffuse]
    bufferOffset = std_msgs.msg.ColorRGBA.serialize(obj.diffuse, buffer, bufferOffset);
    // Serialize message field [attenuation_constant]
    bufferOffset = _serializer.float64(obj.attenuation_constant, buffer, bufferOffset);
    // Serialize message field [attenuation_linear]
    bufferOffset = _serializer.float64(obj.attenuation_linear, buffer, bufferOffset);
    // Serialize message field [attenuation_quadratic]
    bufferOffset = _serializer.float64(obj.attenuation_quadratic, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [status_message]
    bufferOffset = _serializer.string(obj.status_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetLightPropertiesResponse
    let len;
    let data = new GetLightPropertiesResponse(null);
    // Deserialize message field [diffuse]
    data.diffuse = std_msgs.msg.ColorRGBA.deserialize(buffer, bufferOffset);
    // Deserialize message field [attenuation_constant]
    data.attenuation_constant = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [attenuation_linear]
    data.attenuation_linear = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [attenuation_quadratic]
    data.attenuation_quadratic = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [status_message]
    data.status_message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.status_message.length;
    return length + 45;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gazebo_msgs/GetLightPropertiesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9a19ddd5aab4c13b7643d1722c709f1f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/ColorRGBA diffuse
    float64 attenuation_constant
    float64 attenuation_linear
    float64 attenuation_quadratic
    bool success
    string status_message
    
    
    ================================================================================
    MSG: std_msgs/ColorRGBA
    float32 r
    float32 g
    float32 b
    float32 a
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetLightPropertiesResponse(null);
    if (msg.diffuse !== undefined) {
      resolved.diffuse = std_msgs.msg.ColorRGBA.Resolve(msg.diffuse)
    }
    else {
      resolved.diffuse = new std_msgs.msg.ColorRGBA()
    }

    if (msg.attenuation_constant !== undefined) {
      resolved.attenuation_constant = msg.attenuation_constant;
    }
    else {
      resolved.attenuation_constant = 0.0
    }

    if (msg.attenuation_linear !== undefined) {
      resolved.attenuation_linear = msg.attenuation_linear;
    }
    else {
      resolved.attenuation_linear = 0.0
    }

    if (msg.attenuation_quadratic !== undefined) {
      resolved.attenuation_quadratic = msg.attenuation_quadratic;
    }
    else {
      resolved.attenuation_quadratic = 0.0
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
  Request: GetLightPropertiesRequest,
  Response: GetLightPropertiesResponse,
  md5sum() { return 'df2cef87e13e2e6990e81e8aaa454c19'; },
  datatype() { return 'gazebo_msgs/GetLightProperties'; }
};
