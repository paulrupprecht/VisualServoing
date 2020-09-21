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

let RobotMode = require('../msg/RobotMode.js');

//-----------------------------------------------------------

class GetRobotModeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetRobotModeRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetRobotModeRequest
    let len;
    let data = new GetRobotModeRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ur_dashboard_msgs/GetRobotModeRequest';
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
    const resolved = new GetRobotModeRequest(null);
    return resolved;
    }
};

class GetRobotModeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_mode = null;
      this.answer = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_mode')) {
        this.robot_mode = initObj.robot_mode
      }
      else {
        this.robot_mode = new RobotMode();
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
    // Serializes a message object of type GetRobotModeResponse
    // Serialize message field [robot_mode]
    bufferOffset = RobotMode.serialize(obj.robot_mode, buffer, bufferOffset);
    // Serialize message field [answer]
    bufferOffset = _serializer.string(obj.answer, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetRobotModeResponse
    let len;
    let data = new GetRobotModeResponse(null);
    // Deserialize message field [robot_mode]
    data.robot_mode = RobotMode.deserialize(buffer, bufferOffset);
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
    return 'ur_dashboard_msgs/GetRobotModeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ef94c03da2e53bb8c576236bb003fe8a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    RobotMode robot_mode
    string answer
    bool success
    
    
    ================================================================================
    MSG: ur_dashboard_msgs/RobotMode
    int8 NO_CONTROLLER=-1
    int8 DISCONNECTED=0
    int8 CONFIRM_SAFETY=1
    int8 BOOTING=2
    int8 POWER_OFF=3
    int8 POWER_ON=4
    int8 IDLE=5
    int8 BACKDRIVE=6
    int8 RUNNING=7
    int8 UPDATING_FIRMWARE=8
    
    int8 mode
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetRobotModeResponse(null);
    if (msg.robot_mode !== undefined) {
      resolved.robot_mode = RobotMode.Resolve(msg.robot_mode)
    }
    else {
      resolved.robot_mode = new RobotMode()
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
  Request: GetRobotModeRequest,
  Response: GetRobotModeResponse,
  md5sum() { return 'ef94c03da2e53bb8c576236bb003fe8a'; },
  datatype() { return 'ur_dashboard_msgs/GetRobotMode'; }
};
