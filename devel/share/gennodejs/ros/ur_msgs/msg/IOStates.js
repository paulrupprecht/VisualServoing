// Auto-generated. Do not edit!

// (in-package ur_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Digital = require('./Digital.js');
let Analog = require('./Analog.js');

//-----------------------------------------------------------

class IOStates {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.digital_in_states = null;
      this.digital_out_states = null;
      this.flag_states = null;
      this.analog_in_states = null;
      this.analog_out_states = null;
    }
    else {
      if (initObj.hasOwnProperty('digital_in_states')) {
        this.digital_in_states = initObj.digital_in_states
      }
      else {
        this.digital_in_states = [];
      }
      if (initObj.hasOwnProperty('digital_out_states')) {
        this.digital_out_states = initObj.digital_out_states
      }
      else {
        this.digital_out_states = [];
      }
      if (initObj.hasOwnProperty('flag_states')) {
        this.flag_states = initObj.flag_states
      }
      else {
        this.flag_states = [];
      }
      if (initObj.hasOwnProperty('analog_in_states')) {
        this.analog_in_states = initObj.analog_in_states
      }
      else {
        this.analog_in_states = [];
      }
      if (initObj.hasOwnProperty('analog_out_states')) {
        this.analog_out_states = initObj.analog_out_states
      }
      else {
        this.analog_out_states = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IOStates
    // Serialize message field [digital_in_states]
    // Serialize the length for message field [digital_in_states]
    bufferOffset = _serializer.uint32(obj.digital_in_states.length, buffer, bufferOffset);
    obj.digital_in_states.forEach((val) => {
      bufferOffset = Digital.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [digital_out_states]
    // Serialize the length for message field [digital_out_states]
    bufferOffset = _serializer.uint32(obj.digital_out_states.length, buffer, bufferOffset);
    obj.digital_out_states.forEach((val) => {
      bufferOffset = Digital.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [flag_states]
    // Serialize the length for message field [flag_states]
    bufferOffset = _serializer.uint32(obj.flag_states.length, buffer, bufferOffset);
    obj.flag_states.forEach((val) => {
      bufferOffset = Digital.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [analog_in_states]
    // Serialize the length for message field [analog_in_states]
    bufferOffset = _serializer.uint32(obj.analog_in_states.length, buffer, bufferOffset);
    obj.analog_in_states.forEach((val) => {
      bufferOffset = Analog.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [analog_out_states]
    // Serialize the length for message field [analog_out_states]
    bufferOffset = _serializer.uint32(obj.analog_out_states.length, buffer, bufferOffset);
    obj.analog_out_states.forEach((val) => {
      bufferOffset = Analog.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IOStates
    let len;
    let data = new IOStates(null);
    // Deserialize message field [digital_in_states]
    // Deserialize array length for message field [digital_in_states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.digital_in_states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.digital_in_states[i] = Digital.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [digital_out_states]
    // Deserialize array length for message field [digital_out_states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.digital_out_states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.digital_out_states[i] = Digital.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [flag_states]
    // Deserialize array length for message field [flag_states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.flag_states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.flag_states[i] = Digital.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [analog_in_states]
    // Deserialize array length for message field [analog_in_states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.analog_in_states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.analog_in_states[i] = Analog.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [analog_out_states]
    // Deserialize array length for message field [analog_out_states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.analog_out_states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.analog_out_states[i] = Analog.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 2 * object.digital_in_states.length;
    length += 2 * object.digital_out_states.length;
    length += 2 * object.flag_states.length;
    length += 6 * object.analog_in_states.length;
    length += 6 * object.analog_out_states.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ur_msgs/IOStates';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3033784e7041da89491b97cc4c1105b5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Digital[] digital_in_states
    Digital[] digital_out_states
    Digital[] flag_states
    Analog[] analog_in_states
    Analog[] analog_out_states
    
    ================================================================================
    MSG: ur_msgs/Digital
    uint8 pin
    bool state
    
    ================================================================================
    MSG: ur_msgs/Analog
    uint8 VOLTAGE=0
    uint8 CURRENT=1
    
    uint8 pin
    uint8 domain # can be VOLTAGE or CURRENT
    float32 state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IOStates(null);
    if (msg.digital_in_states !== undefined) {
      resolved.digital_in_states = new Array(msg.digital_in_states.length);
      for (let i = 0; i < resolved.digital_in_states.length; ++i) {
        resolved.digital_in_states[i] = Digital.Resolve(msg.digital_in_states[i]);
      }
    }
    else {
      resolved.digital_in_states = []
    }

    if (msg.digital_out_states !== undefined) {
      resolved.digital_out_states = new Array(msg.digital_out_states.length);
      for (let i = 0; i < resolved.digital_out_states.length; ++i) {
        resolved.digital_out_states[i] = Digital.Resolve(msg.digital_out_states[i]);
      }
    }
    else {
      resolved.digital_out_states = []
    }

    if (msg.flag_states !== undefined) {
      resolved.flag_states = new Array(msg.flag_states.length);
      for (let i = 0; i < resolved.flag_states.length; ++i) {
        resolved.flag_states[i] = Digital.Resolve(msg.flag_states[i]);
      }
    }
    else {
      resolved.flag_states = []
    }

    if (msg.analog_in_states !== undefined) {
      resolved.analog_in_states = new Array(msg.analog_in_states.length);
      for (let i = 0; i < resolved.analog_in_states.length; ++i) {
        resolved.analog_in_states[i] = Analog.Resolve(msg.analog_in_states[i]);
      }
    }
    else {
      resolved.analog_in_states = []
    }

    if (msg.analog_out_states !== undefined) {
      resolved.analog_out_states = new Array(msg.analog_out_states.length);
      for (let i = 0; i < resolved.analog_out_states.length; ++i) {
        resolved.analog_out_states[i] = Analog.Resolve(msg.analog_out_states[i]);
      }
    }
    else {
      resolved.analog_out_states = []
    }

    return resolved;
    }
};

module.exports = IOStates;
