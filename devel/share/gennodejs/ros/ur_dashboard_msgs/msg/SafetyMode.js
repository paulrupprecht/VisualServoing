// Auto-generated. Do not edit!

// (in-package ur_dashboard_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SafetyMode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SafetyMode
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SafetyMode
    let len;
    let data = new SafetyMode(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ur_dashboard_msgs/SafetyMode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5da08725a63d4237bad689481131a84b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new SafetyMode(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    return resolved;
    }
};

// Constants for message
SafetyMode.Constants = {
  NORMAL: 1,
  REDUCED: 2,
  PROTECTIVE_STOP: 3,
  RECOVERY: 4,
  SAFEGUARD_STOP: 5,
  SYSTEM_EMERGENCY_STOP: 6,
  ROBOT_EMERGENCY_STOP: 7,
  VIOLATION: 8,
  FAULT: 9,
  VALIDATE_JOINT_ID: 10,
  UNDEFINED_SAFETY_MODE: 11,
  AUTOMATIC_MODE_SAFEGUARD_STOP: 12,
  SYSTEM_THREE_POSITION_ENABLING_STOP: 13,
}

module.exports = SafetyMode;
