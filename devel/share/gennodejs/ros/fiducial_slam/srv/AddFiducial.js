// Auto-generated. Do not edit!

// (in-package fiducial_slam.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class AddFiducialRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fiducial_id = null;
    }
    else {
      if (initObj.hasOwnProperty('fiducial_id')) {
        this.fiducial_id = initObj.fiducial_id
      }
      else {
        this.fiducial_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddFiducialRequest
    // Serialize message field [fiducial_id]
    bufferOffset = _serializer.int32(obj.fiducial_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddFiducialRequest
    let len;
    let data = new AddFiducialRequest(null);
    // Deserialize message field [fiducial_id]
    data.fiducial_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fiducial_slam/AddFiducialRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd6e0c5dec9dcac4f00b77e79be09ed60';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 fiducial_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AddFiducialRequest(null);
    if (msg.fiducial_id !== undefined) {
      resolved.fiducial_id = msg.fiducial_id;
    }
    else {
      resolved.fiducial_id = 0
    }

    return resolved;
    }
};

class AddFiducialResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddFiducialResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddFiducialResponse
    let len;
    let data = new AddFiducialResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fiducial_slam/AddFiducialResponse';
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
    const resolved = new AddFiducialResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: AddFiducialRequest,
  Response: AddFiducialResponse,
  md5sum() { return 'd6e0c5dec9dcac4f00b77e79be09ed60'; },
  datatype() { return 'fiducial_slam/AddFiducial'; }
};
