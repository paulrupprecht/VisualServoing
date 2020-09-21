// Auto-generated. Do not edit!

// (in-package custom_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class floatList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.old = null;
      this.new = null;
    }
    else {
      if (initObj.hasOwnProperty('old')) {
        this.old = initObj.old
      }
      else {
        this.old = [];
      }
      if (initObj.hasOwnProperty('new')) {
        this.new = initObj.new
      }
      else {
        this.new = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type floatList
    // Serialize message field [old]
    bufferOffset = _arraySerializer.float64(obj.old, buffer, bufferOffset, null);
    // Serialize message field [new]
    bufferOffset = _arraySerializer.float64(obj.new, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type floatList
    let len;
    let data = new floatList(null);
    // Deserialize message field [old]
    data.old = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [new]
    data.new = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.old.length;
    length += 8 * object.new.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_pkg/floatList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ea878b1bd38d0c31ddfedc174bfca32e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] old
    float64[] new
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new floatList(null);
    if (msg.old !== undefined) {
      resolved.old = msg.old;
    }
    else {
      resolved.old = []
    }

    if (msg.new !== undefined) {
      resolved.new = msg.new;
    }
    else {
      resolved.new = []
    }

    return resolved;
    }
};

module.exports = floatList;
