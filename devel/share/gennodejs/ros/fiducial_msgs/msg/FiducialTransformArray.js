// Auto-generated. Do not edit!

// (in-package fiducial_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FiducialTransform = require('./FiducialTransform.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class FiducialTransformArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.image_seq = null;
      this.transforms = null;
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
      if (initObj.hasOwnProperty('transforms')) {
        this.transforms = initObj.transforms
      }
      else {
        this.transforms = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FiducialTransformArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [image_seq]
    bufferOffset = _serializer.int32(obj.image_seq, buffer, bufferOffset);
    // Serialize message field [transforms]
    // Serialize the length for message field [transforms]
    bufferOffset = _serializer.uint32(obj.transforms.length, buffer, bufferOffset);
    obj.transforms.forEach((val) => {
      bufferOffset = FiducialTransform.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FiducialTransformArray
    let len;
    let data = new FiducialTransformArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [image_seq]
    data.image_seq = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [transforms]
    // Deserialize array length for message field [transforms]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.transforms = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.transforms[i] = FiducialTransform.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 84 * object.transforms.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fiducial_msgs/FiducialTransformArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a9391b25df2859cb1ae6fa6ee45ef075';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
     # A set of camera to fiducial transform with supporting data corresponding
     # to an image
     Header header
     int32 image_seq
     FiducialTransform[] transforms 
    
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
    MSG: fiducial_msgs/FiducialTransform
     # A camera to fiducial transform with supporting data
     int32 fiducial_id
     geometry_msgs/Transform transform
     float64 image_error
     float64 object_error
     float64 fiducial_area
    ================================================================================
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FiducialTransformArray(null);
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

    if (msg.transforms !== undefined) {
      resolved.transforms = new Array(msg.transforms.length);
      for (let i = 0; i < resolved.transforms.length; ++i) {
        resolved.transforms[i] = FiducialTransform.Resolve(msg.transforms[i]);
      }
    }
    else {
      resolved.transforms = []
    }

    return resolved;
    }
};

module.exports = FiducialTransformArray;
