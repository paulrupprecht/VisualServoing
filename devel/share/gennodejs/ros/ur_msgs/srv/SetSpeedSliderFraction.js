// Auto-generated. Do not edit!

// (in-package ur_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetSpeedSliderFractionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.speed_slider_fraction = null;
    }
    else {
      if (initObj.hasOwnProperty('speed_slider_fraction')) {
        this.speed_slider_fraction = initObj.speed_slider_fraction
      }
      else {
        this.speed_slider_fraction = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetSpeedSliderFractionRequest
    // Serialize message field [speed_slider_fraction]
    bufferOffset = _serializer.float64(obj.speed_slider_fraction, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetSpeedSliderFractionRequest
    let len;
    let data = new SetSpeedSliderFractionRequest(null);
    // Deserialize message field [speed_slider_fraction]
    data.speed_slider_fraction = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ur_msgs/SetSpeedSliderFractionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '64134244ab4dfc72a3406fe06d580274';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    
    float64 speed_slider_fraction
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetSpeedSliderFractionRequest(null);
    if (msg.speed_slider_fraction !== undefined) {
      resolved.speed_slider_fraction = msg.speed_slider_fraction;
    }
    else {
      resolved.speed_slider_fraction = 0.0
    }

    return resolved;
    }
};

class SetSpeedSliderFractionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetSpeedSliderFractionResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetSpeedSliderFractionResponse
    let len;
    let data = new SetSpeedSliderFractionResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ur_msgs/SetSpeedSliderFractionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetSpeedSliderFractionResponse(null);
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
  Request: SetSpeedSliderFractionRequest,
  Response: SetSpeedSliderFractionResponse,
  md5sum() { return '172aeb6c49379a44cf68480fa5bfad3c'; },
  datatype() { return 'ur_msgs/SetSpeedSliderFraction'; }
};
