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


//-----------------------------------------------------------

class IsProgramSavedRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IsProgramSavedRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IsProgramSavedRequest
    let len;
    let data = new IsProgramSavedRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ur_dashboard_msgs/IsProgramSavedRequest';
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
    const resolved = new IsProgramSavedRequest(null);
    return resolved;
    }
};

class IsProgramSavedResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.answer = null;
      this.program_name = null;
      this.program_saved = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('answer')) {
        this.answer = initObj.answer
      }
      else {
        this.answer = '';
      }
      if (initObj.hasOwnProperty('program_name')) {
        this.program_name = initObj.program_name
      }
      else {
        this.program_name = '';
      }
      if (initObj.hasOwnProperty('program_saved')) {
        this.program_saved = initObj.program_saved
      }
      else {
        this.program_saved = false;
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
    // Serializes a message object of type IsProgramSavedResponse
    // Serialize message field [answer]
    bufferOffset = _serializer.string(obj.answer, buffer, bufferOffset);
    // Serialize message field [program_name]
    bufferOffset = _serializer.string(obj.program_name, buffer, bufferOffset);
    // Serialize message field [program_saved]
    bufferOffset = _serializer.bool(obj.program_saved, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IsProgramSavedResponse
    let len;
    let data = new IsProgramSavedResponse(null);
    // Deserialize message field [answer]
    data.answer = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [program_name]
    data.program_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [program_saved]
    data.program_saved = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.answer.length;
    length += object.program_name.length;
    return length + 10;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ur_dashboard_msgs/IsProgramSavedResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e922e4e4f5e4157c23417860c8b2336a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string answer
    string program_name
    bool program_saved
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IsProgramSavedResponse(null);
    if (msg.answer !== undefined) {
      resolved.answer = msg.answer;
    }
    else {
      resolved.answer = ''
    }

    if (msg.program_name !== undefined) {
      resolved.program_name = msg.program_name;
    }
    else {
      resolved.program_name = ''
    }

    if (msg.program_saved !== undefined) {
      resolved.program_saved = msg.program_saved;
    }
    else {
      resolved.program_saved = false
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
  Request: IsProgramSavedRequest,
  Response: IsProgramSavedResponse,
  md5sum() { return 'e922e4e4f5e4157c23417860c8b2336a'; },
  datatype() { return 'ur_dashboard_msgs/IsProgramSaved'; }
};
