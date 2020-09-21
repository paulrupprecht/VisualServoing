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

class ToolDataMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.analog_input_range2 = null;
      this.analog_input_range3 = null;
      this.analog_input2 = null;
      this.analog_input3 = null;
      this.tool_voltage_48v = null;
      this.tool_output_voltage = null;
      this.tool_current = null;
      this.tool_temperature = null;
      this.tool_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('analog_input_range2')) {
        this.analog_input_range2 = initObj.analog_input_range2
      }
      else {
        this.analog_input_range2 = 0;
      }
      if (initObj.hasOwnProperty('analog_input_range3')) {
        this.analog_input_range3 = initObj.analog_input_range3
      }
      else {
        this.analog_input_range3 = 0;
      }
      if (initObj.hasOwnProperty('analog_input2')) {
        this.analog_input2 = initObj.analog_input2
      }
      else {
        this.analog_input2 = 0.0;
      }
      if (initObj.hasOwnProperty('analog_input3')) {
        this.analog_input3 = initObj.analog_input3
      }
      else {
        this.analog_input3 = 0.0;
      }
      if (initObj.hasOwnProperty('tool_voltage_48v')) {
        this.tool_voltage_48v = initObj.tool_voltage_48v
      }
      else {
        this.tool_voltage_48v = 0.0;
      }
      if (initObj.hasOwnProperty('tool_output_voltage')) {
        this.tool_output_voltage = initObj.tool_output_voltage
      }
      else {
        this.tool_output_voltage = 0;
      }
      if (initObj.hasOwnProperty('tool_current')) {
        this.tool_current = initObj.tool_current
      }
      else {
        this.tool_current = 0.0;
      }
      if (initObj.hasOwnProperty('tool_temperature')) {
        this.tool_temperature = initObj.tool_temperature
      }
      else {
        this.tool_temperature = 0.0;
      }
      if (initObj.hasOwnProperty('tool_mode')) {
        this.tool_mode = initObj.tool_mode
      }
      else {
        this.tool_mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ToolDataMsg
    // Serialize message field [analog_input_range2]
    bufferOffset = _serializer.int8(obj.analog_input_range2, buffer, bufferOffset);
    // Serialize message field [analog_input_range3]
    bufferOffset = _serializer.int8(obj.analog_input_range3, buffer, bufferOffset);
    // Serialize message field [analog_input2]
    bufferOffset = _serializer.float64(obj.analog_input2, buffer, bufferOffset);
    // Serialize message field [analog_input3]
    bufferOffset = _serializer.float64(obj.analog_input3, buffer, bufferOffset);
    // Serialize message field [tool_voltage_48v]
    bufferOffset = _serializer.float32(obj.tool_voltage_48v, buffer, bufferOffset);
    // Serialize message field [tool_output_voltage]
    bufferOffset = _serializer.uint8(obj.tool_output_voltage, buffer, bufferOffset);
    // Serialize message field [tool_current]
    bufferOffset = _serializer.float32(obj.tool_current, buffer, bufferOffset);
    // Serialize message field [tool_temperature]
    bufferOffset = _serializer.float32(obj.tool_temperature, buffer, bufferOffset);
    // Serialize message field [tool_mode]
    bufferOffset = _serializer.uint8(obj.tool_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ToolDataMsg
    let len;
    let data = new ToolDataMsg(null);
    // Deserialize message field [analog_input_range2]
    data.analog_input_range2 = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [analog_input_range3]
    data.analog_input_range3 = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [analog_input2]
    data.analog_input2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [analog_input3]
    data.analog_input3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tool_voltage_48v]
    data.tool_voltage_48v = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tool_output_voltage]
    data.tool_output_voltage = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [tool_current]
    data.tool_current = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tool_temperature]
    data.tool_temperature = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tool_mode]
    data.tool_mode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ur_msgs/ToolDataMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '404fc266f37d89f75b372d12fa94a122';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This data structure contains the ToolData structure
    # used by the Universal Robots controller
    
    int8 ANALOG_INPUT_RANGE_CURRENT = 0
    int8 ANALOG_INPUT_RANGE_VOLTAGE = 1
    
    int8 analog_input_range2 # one of ANALOG_INPUT_RANGE_*
    int8 analog_input_range3 # one of ANALOG_INPUT_RANGE_*
    float64 analog_input2
    float64 analog_input3
    float32 tool_voltage_48v
    uint8 tool_output_voltage
    float32 tool_current
    float32 tool_temperature
    
    uint8 TOOL_BOOTLOADER_MODE = 249
    uint8 TOOL_RUNNING_MODE = 253
    uint8 TOOL_IDLE_MODE = 255
    
    uint8 tool_mode # one of TOOL_*
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ToolDataMsg(null);
    if (msg.analog_input_range2 !== undefined) {
      resolved.analog_input_range2 = msg.analog_input_range2;
    }
    else {
      resolved.analog_input_range2 = 0
    }

    if (msg.analog_input_range3 !== undefined) {
      resolved.analog_input_range3 = msg.analog_input_range3;
    }
    else {
      resolved.analog_input_range3 = 0
    }

    if (msg.analog_input2 !== undefined) {
      resolved.analog_input2 = msg.analog_input2;
    }
    else {
      resolved.analog_input2 = 0.0
    }

    if (msg.analog_input3 !== undefined) {
      resolved.analog_input3 = msg.analog_input3;
    }
    else {
      resolved.analog_input3 = 0.0
    }

    if (msg.tool_voltage_48v !== undefined) {
      resolved.tool_voltage_48v = msg.tool_voltage_48v;
    }
    else {
      resolved.tool_voltage_48v = 0.0
    }

    if (msg.tool_output_voltage !== undefined) {
      resolved.tool_output_voltage = msg.tool_output_voltage;
    }
    else {
      resolved.tool_output_voltage = 0
    }

    if (msg.tool_current !== undefined) {
      resolved.tool_current = msg.tool_current;
    }
    else {
      resolved.tool_current = 0.0
    }

    if (msg.tool_temperature !== undefined) {
      resolved.tool_temperature = msg.tool_temperature;
    }
    else {
      resolved.tool_temperature = 0.0
    }

    if (msg.tool_mode !== undefined) {
      resolved.tool_mode = msg.tool_mode;
    }
    else {
      resolved.tool_mode = 0
    }

    return resolved;
    }
};

// Constants for message
ToolDataMsg.Constants = {
  ANALOG_INPUT_RANGE_CURRENT: 0,
  ANALOG_INPUT_RANGE_VOLTAGE: 1,
  TOOL_BOOTLOADER_MODE: 249,
  TOOL_RUNNING_MODE: 253,
  TOOL_IDLE_MODE: 255,
}

module.exports = ToolDataMsg;
