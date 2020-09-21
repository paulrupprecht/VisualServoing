// Auto-generated. Do not edit!

// (in-package fiducial_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FiducialMapEntryArray = require('../msg/FiducialMapEntryArray.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class InitializeMapRequest {
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
        this.fiducials = new FiducialMapEntryArray();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InitializeMapRequest
    // Serialize message field [fiducials]
    bufferOffset = FiducialMapEntryArray.serialize(obj.fiducials, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InitializeMapRequest
    let len;
    let data = new InitializeMapRequest(null);
    // Deserialize message field [fiducials]
    data.fiducials = FiducialMapEntryArray.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += FiducialMapEntryArray.getMessageSize(object.fiducials);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fiducial_msgs/InitializeMapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'af3be60cc8712d87e234a795a01490e4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    FiducialMapEntryArray fiducials
    
    ================================================================================
    MSG: fiducial_msgs/FiducialMapEntryArray
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
    const resolved = new InitializeMapRequest(null);
    if (msg.fiducials !== undefined) {
      resolved.fiducials = FiducialMapEntryArray.Resolve(msg.fiducials)
    }
    else {
      resolved.fiducials = new FiducialMapEntryArray()
    }

    return resolved;
    }
};

class InitializeMapResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InitializeMapResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InitializeMapResponse
    let len;
    let data = new InitializeMapResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fiducial_msgs/InitializeMapResponse';
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
    const resolved = new InitializeMapResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: InitializeMapRequest,
  Response: InitializeMapResponse,
  md5sum() { return 'af3be60cc8712d87e234a795a01490e4'; },
  datatype() { return 'fiducial_msgs/InitializeMap'; }
};
