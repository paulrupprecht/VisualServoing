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

class RobotMode {
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
    // Serializes a message object of type RobotMode
    // Serialize message field [mode]
    bufferOffset = _serializer.int8(obj.mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotMode
    let len;
    let data = new RobotMode(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ur_dashboard_msgs/RobotMode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '73b72d58742c4889c47118411b03a3b4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new RobotMode(null);
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
RobotMode.Constants = {
  NO_CONTROLLER: -1,
  DISCONNECTED: 0,
  CONFIRM_SAFETY: 1,
  BOOTING: 2,
  POWER_OFF: 3,
  POWER_ON: 4,
  IDLE: 5,
  BACKDRIVE: 6,
  RUNNING: 7,
  UPDATING_FIRMWARE: 8,
}

module.exports = RobotMode;
