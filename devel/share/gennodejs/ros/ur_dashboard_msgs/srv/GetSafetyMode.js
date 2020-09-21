// Auto-generated. Do not edit!

// (in-package ur_dashboard_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let SafetyMode = require('../msg/SafetyMode.js');

//-----------------------------------------------------------

class GetSafetyModeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetSafetyModeRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetSafetyModeRequest
    let len;
    let data = new GetSafetyModeRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ur_dashboard_msgs/GetSafetyModeRequest';
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
    const resolved = new GetSafetyModeRequest(null);
    return resolved;
    }
};

class GetSafetyModeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.safety_mode = null;
      this.answer = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('safety_mode')) {
        this.safety_mode = initObj.safety_mode
      }
      else {
        this.safety_mode = new SafetyMode();
      }
      if (initObj.hasOwnProperty('answer')) {
        this.answer = initObj.answer
      }
      else {
        this.answer = '';
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetSafetyModeResponse
    // Serialize message field [safety_mode]
    bufferOffset = SafetyMode.serialize(obj.safety_mode, buffer, bufferOffset);
    // Serialize message field [answer]
    bufferOffset = _serializer.string(obj.answer, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetSafetyModeResponse
    let len;
    let data = new GetSafetyModeResponse(null);
    // Deserialize message field [safety_mode]
    data.safety_mode = SafetyMode.deserialize(buffer, bufferOffset);
    // Deserialize message field [answer]
    data.answer = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.answer.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ur_dashboard_msgs/GetSafetyModeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '42900ff79a0c74f885536dc5add71b7e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    SafetyMode safety_mode
    string answer
    bool success
    
    
    ================================================================================
    MSG: ur_dashboard_msgs/SafetyMode
    uint8 NORMAL=1
    uint8 REDUCED=2
    uint8 PROTECTIVE_STOP=3
    uint8 RECOVERY=4
    uint8 SAFEGUARD_STOP=5
    uint8 SYSTEM_EMERGENCY_STOP=6
    uint8 ROBOT_EMERGENCY_STOP=7
    uint8 VIOLATION=8
    uint8 FAULT=9
    uint8 VALIDATE_JOINT_ID=10
    uint8 UNDEFINED_SAFETY_MODE=11
    uint8 AUTOMATIC_MODE_SAFEGUARD_STOP=12
    uint8 SYSTEM_THREE_POSITION_ENABLING_STOP=13
    
    uint8 mode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetSafetyModeResponse(null);
    if (msg.safety_mode !== undefined) {
      resolved.safety_mode = SafetyMode.Resolve(msg.safety_mode)
    }
    else {
      resolved.safety_mode = new SafetyMode()
    }

    if (msg.answer !== undefined) {
      resolved.answer = msg.answer;
    }
    else {
      resolved.answer = ''
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: GetSafetyModeRequest,
  Response: GetSafetyModeResponse,
  md5sum() { return '42900ff79a0c74f885536dc5add71b7e'; },
  datatype() { return 'ur_dashboard_msgs/GetSafetyMode'; }
};
