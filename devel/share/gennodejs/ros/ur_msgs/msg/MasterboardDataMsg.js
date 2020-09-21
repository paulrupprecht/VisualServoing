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

class MasterboardDataMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.digital_input_bits = null;
      this.digital_output_bits = null;
      this.analog_input_range0 = null;
      this.analog_input_range1 = null;
      this.analog_input0 = null;
      this.analog_input1 = null;
      this.analog_output_domain0 = null;
      this.analog_output_domain1 = null;
      this.analog_output0 = null;
      this.analog_output1 = null;
      this.masterboard_temperature = null;
      this.robot_voltage_48V = null;
      this.robot_current = null;
      this.master_io_current = null;
      this.master_safety_state = null;
      this.master_onoff_state = null;
    }
    else {
      if (initObj.hasOwnProperty('digital_input_bits')) {
        this.digital_input_bits = initObj.digital_input_bits
      }
      else {
        this.digital_input_bits = 0;
      }
      if (initObj.hasOwnProperty('digital_output_bits')) {
        this.digital_output_bits = initObj.digital_output_bits
      }
      else {
        this.digital_output_bits = 0;
      }
      if (initObj.hasOwnProperty('analog_input_range0')) {
        this.analog_input_range0 = initObj.analog_input_range0
      }
      else {
        this.analog_input_range0 = 0;
      }
      if (initObj.hasOwnProperty('analog_input_range1')) {
        this.analog_input_range1 = initObj.analog_input_range1
      }
      else {
        this.analog_input_range1 = 0;
      }
      if (initObj.hasOwnProperty('analog_input0')) {
        this.analog_input0 = initObj.analog_input0
      }
      else {
        this.analog_input0 = 0.0;
      }
      if (initObj.hasOwnProperty('analog_input1')) {
        this.analog_input1 = initObj.analog_input1
      }
      else {
        this.analog_input1 = 0.0;
      }
      if (initObj.hasOwnProperty('analog_output_domain0')) {
        this.analog_output_domain0 = initObj.analog_output_domain0
      }
      else {
        this.analog_output_domain0 = 0;
      }
      if (initObj.hasOwnProperty('analog_output_domain1')) {
        this.analog_output_domain1 = initObj.analog_output_domain1
      }
      else {
        this.analog_output_domain1 = 0;
      }
      if (initObj.hasOwnProperty('analog_output0')) {
        this.analog_output0 = initObj.analog_output0
      }
      else {
        this.analog_output0 = 0.0;
      }
      if (initObj.hasOwnProperty('analog_output1')) {
        this.analog_output1 = initObj.analog_output1
      }
      else {
        this.analog_output1 = 0.0;
      }
      if (initObj.hasOwnProperty('masterboard_temperature')) {
        this.masterboard_temperature = initObj.masterboard_temperature
      }
      else {
        this.masterboard_temperature = 0.0;
      }
      if (initObj.hasOwnProperty('robot_voltage_48V')) {
        this.robot_voltage_48V = initObj.robot_voltage_48V
      }
      else {
        this.robot_voltage_48V = 0.0;
      }
      if (initObj.hasOwnProperty('robot_current')) {
        this.robot_current = initObj.robot_current
      }
      else {
        this.robot_current = 0.0;
      }
      if (initObj.hasOwnProperty('master_io_current')) {
        this.master_io_current = initObj.master_io_current
      }
      else {
        this.master_io_current = 0.0;
      }
      if (initObj.hasOwnProperty('master_safety_state')) {
        this.master_safety_state = initObj.master_safety_state
      }
      else {
        this.master_safety_state = 0;
      }
      if (initObj.hasOwnProperty('master_onoff_state')) {
        this.master_onoff_state = initObj.master_onoff_state
      }
      else {
        this.master_onoff_state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MasterboardDataMsg
    // Serialize message field [digital_input_bits]
    bufferOffset = _serializer.uint32(obj.digital_input_bits, buffer, bufferOffset);
    // Serialize message field [digital_output_bits]
    bufferOffset = _serializer.uint32(obj.digital_output_bits, buffer, bufferOffset);
    // Serialize message field [analog_input_range0]
    bufferOffset = _serializer.int8(obj.analog_input_range0, buffer, bufferOffset);
    // Serialize message field [analog_input_range1]
    bufferOffset = _serializer.int8(obj.analog_input_range1, buffer, bufferOffset);
    // Serialize message field [analog_input0]
    bufferOffset = _serializer.float64(obj.analog_input0, buffer, bufferOffset);
    // Serialize message field [analog_input1]
    bufferOffset = _serializer.float64(obj.analog_input1, buffer, bufferOffset);
    // Serialize message field [analog_output_domain0]
    bufferOffset = _serializer.int8(obj.analog_output_domain0, buffer, bufferOffset);
    // Serialize message field [analog_output_domain1]
    bufferOffset = _serializer.int8(obj.analog_output_domain1, buffer, bufferOffset);
    // Serialize message field [analog_output0]
    bufferOffset = _serializer.float64(obj.analog_output0, buffer, bufferOffset);
    // Serialize message field [analog_output1]
    bufferOffset = _serializer.float64(obj.analog_output1, buffer, bufferOffset);
    // Serialize message field [masterboard_temperature]
    bufferOffset = _serializer.float32(obj.masterboard_temperature, buffer, bufferOffset);
    // Serialize message field [robot_voltage_48V]
    bufferOffset = _serializer.float32(obj.robot_voltage_48V, buffer, bufferOffset);
    // Serialize message field [robot_current]
    bufferOffset = _serializer.float32(obj.robot_current, buffer, bufferOffset);
    // Serialize message field [master_io_current]
    bufferOffset = _serializer.float32(obj.master_io_current, buffer, bufferOffset);
    // Serialize message field [master_safety_state]
    bufferOffset = _serializer.uint8(obj.master_safety_state, buffer, bufferOffset);
    // Serialize message field [master_onoff_state]
    bufferOffset = _serializer.uint8(obj.master_onoff_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MasterboardDataMsg
    let len;
    let data = new MasterboardDataMsg(null);
    // Deserialize message field [digital_input_bits]
    data.digital_input_bits = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [digital_output_bits]
    data.digital_output_bits = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [analog_input_range0]
    data.analog_input_range0 = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [analog_input_range1]
    data.analog_input_range1 = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [analog_input0]
    data.analog_input0 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [analog_input1]
    data.analog_input1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [analog_output_domain0]
    data.analog_output_domain0 = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [analog_output_domain1]
    data.analog_output_domain1 = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [analog_output0]
    data.analog_output0 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [analog_output1]
    data.analog_output1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [masterboard_temperature]
    data.masterboard_temperature = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [robot_voltage_48V]
    data.robot_voltage_48V = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [robot_current]
    data.robot_current = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [master_io_current]
    data.master_io_current = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [master_safety_state]
    data.master_safety_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [master_onoff_state]
    data.master_onoff_state = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 62;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ur_msgs/MasterboardDataMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '807af5dc427082b111fa23d1fd2cd585';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This data structure contains the MasterboardData structure
    # used by the Universal Robots controller
    #
    # MasterboardData is part of the data structure being send on the 
    # secondary client communications interface
    # 
    # This data structure is send at 10 Hz on TCP port 30002
    # 
    # Documentation can be found on the Universal Robots Support site, article
    # number 16496.
    
    uint32 digital_input_bits
    uint32 digital_output_bits
    int8 analog_input_range0
    int8 analog_input_range1
    float64 analog_input0
    float64 analog_input1
    int8 analog_output_domain0
    int8 analog_output_domain1
    float64 analog_output0
    float64 analog_output1
    float32 masterboard_temperature
    float32 robot_voltage_48V
    float32 robot_current
    float32 master_io_current
    uint8 master_safety_state
    uint8 master_onoff_state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MasterboardDataMsg(null);
    if (msg.digital_input_bits !== undefined) {
      resolved.digital_input_bits = msg.digital_input_bits;
    }
    else {
      resolved.digital_input_bits = 0
    }

    if (msg.digital_output_bits !== undefined) {
      resolved.digital_output_bits = msg.digital_output_bits;
    }
    else {
      resolved.digital_output_bits = 0
    }

    if (msg.analog_input_range0 !== undefined) {
      resolved.analog_input_range0 = msg.analog_input_range0;
    }
    else {
      resolved.analog_input_range0 = 0
    }

    if (msg.analog_input_range1 !== undefined) {
      resolved.analog_input_range1 = msg.analog_input_range1;
    }
    else {
      resolved.analog_input_range1 = 0
    }

    if (msg.analog_input0 !== undefined) {
      resolved.analog_input0 = msg.analog_input0;
    }
    else {
      resolved.analog_input0 = 0.0
    }

    if (msg.analog_input1 !== undefined) {
      resolved.analog_input1 = msg.analog_input1;
    }
    else {
      resolved.analog_input1 = 0.0
    }

    if (msg.analog_output_domain0 !== undefined) {
      resolved.analog_output_domain0 = msg.analog_output_domain0;
    }
    else {
      resolved.analog_output_domain0 = 0
    }

    if (msg.analog_output_domain1 !== undefined) {
      resolved.analog_output_domain1 = msg.analog_output_domain1;
    }
    else {
      resolved.analog_output_domain1 = 0
    }

    if (msg.analog_output0 !== undefined) {
      resolved.analog_output0 = msg.analog_output0;
    }
    else {
      resolved.analog_output0 = 0.0
    }

    if (msg.analog_output1 !== undefined) {
      resolved.analog_output1 = msg.analog_output1;
    }
    else {
      resolved.analog_output1 = 0.0
    }

    if (msg.masterboard_temperature !== undefined) {
      resolved.masterboard_temperature = msg.masterboard_temperature;
    }
    else {
      resolved.masterboard_temperature = 0.0
    }

    if (msg.robot_voltage_48V !== undefined) {
      resolved.robot_voltage_48V = msg.robot_voltage_48V;
    }
    else {
      resolved.robot_voltage_48V = 0.0
    }

    if (msg.robot_current !== undefined) {
      resolved.robot_current = msg.robot_current;
    }
    else {
      resolved.robot_current = 0.0
    }

    if (msg.master_io_current !== undefined) {
      resolved.master_io_current = msg.master_io_current;
    }
    else {
      resolved.master_io_current = 0.0
    }

    if (msg.master_safety_state !== undefined) {
      resolved.master_safety_state = msg.master_safety_state;
    }
    else {
      resolved.master_safety_state = 0
    }

    if (msg.master_onoff_state !== undefined) {
      resolved.master_onoff_state = msg.master_onoff_state;
    }
    else {
      resolved.master_onoff_state = 0
    }

    return resolved;
    }
};

module.exports = MasterboardDataMsg;
