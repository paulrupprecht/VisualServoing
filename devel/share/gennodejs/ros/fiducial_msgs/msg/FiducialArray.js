// Auto-generated. Do not edit!

// (in-package fiducial_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Fiducial = require('./Fiducial.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class FiducialArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.image_seq = null;
      this.fiducials = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('image_seq')) {
        this.image_seq = initObj.image_seq
      }
      else {
        this.image_seq = 0;
      }
      if (initObj.hasOwnProperty('fiducials')) {
        this.fiducials = initObj.fiducials
      }
      else {
        this.fiducials = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FiducialArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [image_seq]
    bufferOffset = _serializer.int32(obj.image_seq, buffer, bufferOffset);
    // Serialize message field [fiducials]
    // Serialize the length for message field [fiducials]
    bufferOffset = _serializer.uint32(obj.fiducials.length, buffer, bufferOffset);
    obj.fiducials.forEach((val) => {
      bufferOffset = Fiducial.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FiducialArray
    let len;
    let data = new FiducialArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [image_seq]
    data.image_seq = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [fiducials]
    // Deserialize array length for message field [fiducials]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.fiducials = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.fiducials[i] = Fiducial.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 72 * object.fiducials.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fiducial_msgs/FiducialArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fd851a0658e8a35a4d4f80b76d9f17a0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
     # A set of fiducial vertex messages
     # to an image
     Header header
     int32 image_seq
     Fiducial[] fiducials 
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: fiducial_msgs/Fiducial
     # Details of a detected fiducial.
    
     int32 fiducial_id
     int32 direction
    
     # vertices
     float64 x0
     float64 y0
     float64 x1
     float64 y1
     float64 x2
     float64 y2
     float64 x3
     float64 y3
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FiducialArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.image_seq !== undefined) {
      resolved.image_seq = msg.image_seq;
    }
    else {
      resolved.image_seq = 0
    }

    if (msg.fiducials !== undefined) {
      resolved.fiducials = new Array(msg.fiducials.length);
      for (let i = 0; i < resolved.fiducials.length; ++i) {
        resolved.fiducials[i] = Fiducial.Resolve(msg.fiducials[i]);
      }
    }
    else {
      resolved.fiducials = []
    }

    return resolved;
    }
};

module.exports = FiducialArray;
