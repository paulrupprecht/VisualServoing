// Auto-generated. Do not edit!

// (in-package ur_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RobotModeDataMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp = null;
      this.is_robot_connected = null;
      this.is_real_robot_enabled = null;
      this.is_power_on_robot = null;
      this.is_emergency_stopped = null;
      this.is_protective_stopped = null;
      this.is_program_running = null;
      this.is_program_paused = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = 0;
      }
      if (initObj.hasOwnProperty('is_robot_connected')) {
        this.is_robot_connected = initObj.is_robot_connected
      }
      else {
        this.is_robot_connected = false;
      }
      if (initObj.hasOwnProperty('is_real_robot_enabled')) {
        this.is_real_robot_enabled = initObj.is_real_robot_enabled
      }
      else {
        this.is_real_robot_enabled = false;
      }
      if (initObj.hasOwnProperty('is_power_on_robot')) {
        this.is_power_on_robot = initObj.is_power_on_robot
      }
      else {
        this.is_power_on_robot = false;
      }
      if (initObj.hasOwnProperty('is_emergency_stopped')) {
        this.is_emergency_stopped = initObj.is_emergency_stopped
      }
      else {
        this.is_emergency_stopped = false;
      }
      if (initObj.hasOwnProperty('is_protective_stopped')) {
        this.is_protective_stopped = initObj.is_protective_stopped
      }
      else {
        this.is_protective_stopped = false;
      }
      if (initObj.hasOwnProperty('is_program_running')) {
        this.is_program_running = initObj.is_program_running
      }
      else {
        this.is_program_running = false;
      }
      if (initObj.hasOwnProperty('is_program_paused')) {
        this.is_program_paused = initObj.is_program_paused
      }
      else {
        this.is_program_paused = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotModeDataMsg
    // Serialize message field [timestamp]
    bufferOffset = _serializer.uint64(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [is_robot_connected]
    bufferOffset = _serializer.bool(obj.is_robot_connected, buffer, bufferOffset);
    // Serialize message field [is_real_robot_enabled]
    bufferOffset = _serializer.bool(obj.is_real_robot_enabled, buffer, bufferOffset);
    // Serialize message field [is_power_on_robot]
    bufferOffset = _serializer.bool(obj.is_power_on_robot, buffer, bufferOffset);
    // Serialize message field [is_emergency_stopped]
    bufferOffset = _serializer.bool(obj.is_emergency_stopped, buffer, bufferOffset);
    // Serialize message field [is_protective_stopped]
    bufferOffset = _serializer.bool(obj.is_protective_stopped, buffer, bufferOffset);
    // Serialize message field [is_program_running]
    bufferOffset = _serializer.bool(obj.is_program_running, buffer, bufferOffset);
    // Serialize message field [is_program_paused]
    bufferOffset = _serializer.bool(obj.is_program_paused, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotModeDataMsg
    let len;
    let data = new RobotModeDataMsg(null);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [is_robot_connected]
    data.is_robot_connected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_real_robot_enabled]
    data.is_real_robot_enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_power_on_robot]
    data.is_power_on_robot = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_emergency_stopped]
    data.is_emergency_stopped = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_protective_stopped]
    data.is_protective_stopped = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_program_running]
    data.is_program_running = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_program_paused]
    data.is_program_paused = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ur_msgs/RobotModeDataMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '867308ca39e2cc0644b50db27deb661f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This data structure contains the RobotModeData structure
    # used by the Universal Robots controller
    #
    # This data structure is send at 10 Hz on TCP port 30002
    #
    # Note: this message does not carry all fields from the RobotModeData structure as broadcast by the robot controller, but a subset.
    
    uint64 timestamp
    bool is_robot_connected
    bool is_real_robot_enabled
    bool is_power_on_robot
    bool is_emergency_stopped
    bool is_protective_stopped
    bool is_program_running
    bool is_program_paused
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotModeDataMsg(null);
    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = 0
    }

    if (msg.is_robot_connected !== undefined) {
      resolved.is_robot_connected = msg.is_robot_connected;
    }
    else {
      resolved.is_robot_connected = false
    }

    if (msg.is_real_robot_enabled !== undefined) {
      resolved.is_real_robot_enabled = msg.is_real_robot_enabled;
    }
    else {
      resolved.is_real_robot_enabled = false
    }

    if (msg.is_power_on_robot !== undefined) {
      resolved.is_power_on_robot = msg.is_power_on_robot;
    }
    else {
      resolved.is_power_on_robot = false
    }

    if (msg.is_emergency_stopped !== undefined) {
      resolved.is_emergency_stopped = msg.is_emergency_stopped;
    }
    else {
      resolved.is_emergency_stopped = false
    }

    if (msg.is_protective_stopped !== undefined) {
      resolved.is_protective_stopped = msg.is_protective_stopped;
    }
    else {
      resolved.is_protective_stopped = false
    }

    if (msg.is_program_running !== undefined) {
      resolved.is_program_running = msg.is_program_running;
    }
    else {
      resolved.is_program_running = false
    }

    if (msg.is_program_paused !== undefined) {
      resolved.is_program_paused = msg.is_program_paused;
    }
    else {
      resolved.is_program_paused = false
    }

    return resolved;
    }
};

module.exports = RobotModeDataMsg;
