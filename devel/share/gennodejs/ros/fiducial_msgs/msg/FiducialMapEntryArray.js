// Auto-generated. Do not edit!

// (in-package fiducial_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FiducialMapEntry = require('./FiducialMapEntry.js');

//-----------------------------------------------------------

class FiducialMapEntryArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fiducials = null;
    }
    else {
      if (initObj.hasOwnProperty('fiducials')) {
        this.fiducials = initObj.fiducials
      }
      else {
        this.fiducials = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FiducialMapEntryArray
    // Serialize message field [fiducials]
    // Serialize the length for message field [fiducials]
    bufferOffset = _serializer.uint32(obj.fiducials.length, buffer, bufferOffset);
    obj.fiducials.forEach((val) => {
      bufferOffset = FiducialMapEntry.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FiducialMapEntryArray
    let len;
    let data = new FiducialMapEntryArray(null);
    // Deserialize message field [fiducials]
    // Deserialize array length for message field [fiducials]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.fiducials = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.fiducials[i] = FiducialMapEntry.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 52 * object.fiducials.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fiducial_msgs/FiducialMapEntryArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f3d7e1cb2717bda61be54acdb77f4f79';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    FiducialMapEntry[] fiducials
    
    ================================================================================
    MSG: fiducial_msgs/FiducialMapEntry
    # pose of a fiducial
    int32 fiducial_id
    # translation
    float64 x
    float64 y
    float64 z
    # rotation
    float64 rx
    float64 ry
    float64 rz
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FiducialMapEntryArray(null);
    if (msg.fiducials !== undefined) {
      resolved.fiducials = new Array(msg.fiducials.length);
      for (let i = 0; i < resolved.fiducials.length; ++i) {
        resolved.fiducials[i] = FiducialMapEntry.Resolve(msg.fiducials[i]);
      }
    }
    else {
      resolved.fiducials = []
    }

    return resolved;
    }
};

module.exports = FiducialMapEntryArray;
