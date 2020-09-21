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

class RobotStateRTMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time = null;
      this.q_target = null;
      this.qd_target = null;
      this.qdd_target = null;
      this.i_target = null;
      this.m_target = null;
      this.q_actual = null;
      this.qd_actual = null;
      this.i_actual = null;
      this.tool_acc_values = null;
      this.tcp_force = null;
      this.tool_vector = null;
      this.tcp_speed = null;
      this.digital_input_bits = null;
      this.motor_temperatures = null;
      this.controller_timer = null;
      this.test_value = null;
      this.robot_mode = null;
      this.joint_modes = null;
    }
    else {
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
      if (initObj.hasOwnProperty('q_target')) {
        this.q_target = initObj.q_target
      }
      else {
        this.q_target = [];
      }
      if (initObj.hasOwnProperty('qd_target')) {
        this.qd_target = initObj.qd_target
      }
      else {
        this.qd_target = [];
      }
      if (initObj.hasOwnProperty('qdd_target')) {
        this.qdd_target = initObj.qdd_target
      }
      else {
        this.qdd_target = [];
      }
      if (initObj.hasOwnProperty('i_target')) {
        this.i_target = initObj.i_target
      }
      else {
        this.i_target = [];
      }
      if (initObj.hasOwnProperty('m_target')) {
        this.m_target = initObj.m_target
      }
      else {
        this.m_target = [];
      }
      if (initObj.hasOwnProperty('q_actual')) {
        this.q_actual = initObj.q_actual
      }
      else {
        this.q_actual = [];
      }
      if (initObj.hasOwnProperty('qd_actual')) {
        this.qd_actual = initObj.qd_actual
      }
      else {
        this.qd_actual = [];
      }
      if (initObj.hasOwnProperty('i_actual')) {
        this.i_actual = initObj.i_actual
      }
      else {
        this.i_actual = [];
      }
      if (initObj.hasOwnProperty('tool_acc_values')) {
        this.tool_acc_values = initObj.tool_acc_values
      }
      else {
        this.tool_acc_values = [];
      }
      if (initObj.hasOwnProperty('tcp_force')) {
        this.tcp_force = initObj.tcp_force
      }
      else {
        this.tcp_force = [];
      }
      if (initObj.hasOwnProperty('tool_vector')) {
        this.tool_vector = initObj.tool_vector
      }
      else {
        this.tool_vector = [];
      }
      if (initObj.hasOwnProperty('tcp_speed')) {
        this.tcp_speed = initObj.tcp_speed
      }
      else {
        this.tcp_speed = [];
      }
      if (initObj.hasOwnProperty('digital_input_bits')) {
        this.digital_input_bits = initObj.digital_input_bits
      }
      else {
        this.digital_input_bits = 0.0;
      }
      if (initObj.hasOwnProperty('motor_temperatures')) {
        this.motor_temperatures = initObj.motor_temperatures
      }
      else {
        this.motor_temperatures = [];
      }
      if (initObj.hasOwnProperty('controller_timer')) {
        this.controller_timer = initObj.controller_timer
      }
      else {
        this.controller_timer = 0.0;
      }
      if (initObj.hasOwnProperty('test_value')) {
        this.test_value = initObj.test_value
      }
      else {
        this.test_value = 0.0;
      }
      if (initObj.hasOwnProperty('robot_mode')) {
        this.robot_mode = initObj.robot_mode
      }
      else {
        this.robot_mode = 0.0;
      }
      if (initObj.hasOwnProperty('joint_modes')) {
        this.joint_modes = initObj.joint_modes
      }
      else {
        this.joint_modes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotStateRTMsg
    // Serialize message field [time]
    bufferOffset = _serializer.float64(obj.time, buffer, bufferOffset);
    // Serialize message field [q_target]
    bufferOffset = _arraySerializer.float64(obj.q_target, buffer, bufferOffset, null);
    // Serialize message field [qd_target]
    bufferOffset = _arraySerializer.float64(obj.qd_target, buffer, bufferOffset, null);
    // Serialize message field [qdd_target]
    bufferOffset = _arraySerializer.float64(obj.qdd_target, buffer, bufferOffset, null);
    // Serialize message field [i_target]
    bufferOffset = _arraySerializer.float64(obj.i_target, buffer, bufferOffset, null);
    // Serialize message field [m_target]
    bufferOffset = _arraySerializer.float64(obj.m_target, buffer, bufferOffset, null);
    // Serialize message field [q_actual]
    bufferOffset = _arraySerializer.float64(obj.q_actual, buffer, bufferOffset, null);
    // Serialize message field [qd_actual]
    bufferOffset = _arraySerializer.float64(obj.qd_actual, buffer, bufferOffset, null);
    // Serialize message field [i_actual]
    bufferOffset = _arraySerializer.float64(obj.i_actual, buffer, bufferOffset, null);
    // Serialize message field [tool_acc_values]
    bufferOffset = _arraySerializer.float64(obj.tool_acc_values, buffer, bufferOffset, null);
    // Serialize message field [tcp_force]
    bufferOffset = _arraySerializer.float64(obj.tcp_force, buffer, bufferOffset, null);
    // Serialize message field [tool_vector]
    bufferOffset = _arraySerializer.float64(obj.tool_vector, buffer, bufferOffset, null);
    // Serialize message field [tcp_speed]
    bufferOffset = _arraySerializer.float64(obj.tcp_speed, buffer, bufferOffset, null);
    // Serialize message field [digital_input_bits]
    bufferOffset = _serializer.float64(obj.digital_input_bits, buffer, bufferOffset);
    // Serialize message field [motor_temperatures]
    bufferOffset = _arraySerializer.float64(obj.motor_temperatures, buffer, bufferOffset, null);
    // Serialize message field [controller_timer]
    bufferOffset = _serializer.float64(obj.controller_timer, buffer, bufferOffset);
    // Serialize message field [test_value]
    bufferOffset = _serializer.float64(obj.test_value, buffer, bufferOffset);
    // Serialize message field [robot_mode]
    bufferOffset = _serializer.float64(obj.robot_mode, buffer, bufferOffset);
    // Serialize message field [joint_modes]
    bufferOffset = _arraySerializer.float64(obj.joint_modes, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotStateRTMsg
    let len;
    let data = new RobotStateRTMsg(null);
    // Deserialize message field [time]
    data.time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [q_target]
    data.q_target = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [qd_target]
    data.qd_target = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [qdd_target]
    data.qdd_target = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [i_target]
    data.i_target = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [m_target]
    data.m_target = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [q_actual]
    data.q_actual = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [qd_actual]
    data.qd_actual = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [i_actual]
    data.i_actual = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [tool_acc_values]
    data.tool_acc_values = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [tcp_force]
    data.tcp_force = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [tool_vector]
    data.tool_vector = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [tcp_speed]
    data.tcp_speed = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [digital_input_bits]
    data.digital_input_bits = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [motor_temperatures]
    data.motor_temperatures = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [controller_timer]
    data.controller_timer = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [test_value]
    data.test_value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [robot_mode]
    data.robot_mode = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [joint_modes]
    data.joint_modes = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.q_target.length;
    length += 8 * object.qd_target.length;
    length += 8 * object.qdd_target.length;
    length += 8 * object.i_target.length;
    length += 8 * object.m_target.length;
    length += 8 * object.q_actual.length;
    length += 8 * object.qd_actual.length;
    length += 8 * object.i_actual.length;
    length += 8 * object.tool_acc_values.length;
    length += 8 * object.tcp_force.length;
    length += 8 * object.tool_vector.length;
    length += 8 * object.tcp_speed.length;
    length += 8 * object.motor_temperatures.length;
    length += 8 * object.joint_modes.length;
    return length + 96;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ur_msgs/RobotStateRTMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ce6feddd3ccb4ca7dbcd0ff105b603c7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Data structure for the realtime communications interface (aka Matlab interface)
    # used by the Universal Robots controller
    # 
    # This data structure is send at 125 Hz on TCP port 30003
    # 
    # Dokumentation can be found on the Universal Robots Support Wiki
    # (http://wiki03.lynero.net/Technical/RealTimeClientInterface?rev=9)
    
    float64 time
    float64[] q_target
    float64[] qd_target
    float64[] qdd_target
    float64[] i_target
    float64[] m_target
    float64[] q_actual
    float64[] qd_actual
    float64[] i_actual
    float64[] tool_acc_values
    float64[] tcp_force
    float64[] tool_vector
    float64[] tcp_speed
    float64 digital_input_bits
    float64[] motor_temperatures
    float64 controller_timer
    float64 test_value
    float64 robot_mode
    float64[] joint_modes
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotStateRTMsg(null);
    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    if (msg.q_target !== undefined) {
      resolved.q_target = msg.q_target;
    }
    else {
      resolved.q_target = []
    }

    if (msg.qd_target !== undefined) {
      resolved.qd_target = msg.qd_target;
    }
    else {
      resolved.qd_target = []
    }

    if (msg.qdd_target !== undefined) {
      resolved.qdd_target = msg.qdd_target;
    }
    else {
      resolved.qdd_target = []
    }

    if (msg.i_target !== undefined) {
      resolved.i_target = msg.i_target;
    }
    else {
      resolved.i_target = []
    }

    if (msg.m_target !== undefined) {
      resolved.m_target = msg.m_target;
    }
    else {
      resolved.m_target = []
    }

    if (msg.q_actual !== undefined) {
      resolved.q_actual = msg.q_actual;
    }
    else {
      resolved.q_actual = []
    }

    if (msg.qd_actual !== undefined) {
      resolved.qd_actual = msg.qd_actual;
    }
    else {
      resolved.qd_actual = []
    }

    if (msg.i_actual !== undefined) {
      resolved.i_actual = msg.i_actual;
    }
    else {
      resolved.i_actual = []
    }

    if (msg.tool_acc_values !== undefined) {
      resolved.tool_acc_values = msg.tool_acc_values;
    }
    else {
      resolved.tool_acc_values = []
    }

    if (msg.tcp_force !== undefined) {
      resolved.tcp_force = msg.tcp_force;
    }
    else {
      resolved.tcp_force = []
    }

    if (msg.tool_vector !== undefined) {
      resolved.tool_vector = msg.tool_vector;
    }
    else {
      resolved.tool_vector = []
    }

    if (msg.tcp_speed !== undefined) {
      resolved.tcp_speed = msg.tcp_speed;
    }
    else {
      resolved.tcp_speed = []
    }

    if (msg.digital_input_bits !== undefined) {
      resolved.digital_input_bits = msg.digital_input_bits;
    }
    else {
      resolved.digital_input_bits = 0.0
    }

    if (msg.motor_temperatures !== undefined) {
      resolved.motor_temperatures = msg.motor_temperatures;
    }
    else {
      resolved.motor_temperatures = []
    }

    if (msg.controller_timer !== undefined) {
      resolved.controller_timer = msg.controller_timer;
    }
    else {
      resolved.controller_timer = 0.0
    }

    if (msg.test_value !== undefined) {
      resolved.test_value = msg.test_value;
    }
    else {
      resolved.test_value = 0.0
    }

    if (msg.robot_mode !== undefined) {
      resolved.robot_mode = msg.robot_mode;
    }
    else {
      resolved.robot_mode = 0.0
    }

    if (msg.joint_modes !== undefined) {
      resolved.joint_modes = msg.joint_modes;
    }
    else {
      resolved.joint_modes = []
    }

    return resolved;
    }
};

module.exports = RobotStateRTMsg;
