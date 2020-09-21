// Auto-generated. Do not edit!

// (in-package fiducial_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class FiducialTransform {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fiducial_id = null;
      this.transform = null;
      this.image_error = null;
      this.object_error = null;
      this.fiducial_area = null;
    }
    else {
      if (initObj.hasOwnProperty('fiducial_id')) {
        this.fiducial_id = initObj.fiducial_id
      }
      else {
        this.fiducial_id = 0;
      }
      if (initObj.hasOwnProperty('transform')) {
        this.transform = initObj.transform
      }
      else {
        this.transform = new geometry_msgs.msg.Transform();
      }
      if (initObj.hasOwnProperty('image_error')) {
        this.image_error = initObj.image_error
      }
      else {
        this.image_error = 0.0;
      }
      if (initObj.hasOwnProperty('object_error')) {
        this.object_error = initObj.object_error
      }
      else {
        this.object_error = 0.0;
      }
      if (initObj.hasOwnProperty('fiducial_area')) {
        this.fiducial_area = initObj.fiducial_area
      }
      else {
        this.fiducial_area = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FiducialTransform
    // Serialize message field [fiducial_id]
    bufferOffset = _serializer.int32(obj.fiducial_id, buffer, bufferOffset);
    // Serialize message field [transform]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.transform, buffer, bufferOffset);
    // Serialize message field [image_error]
    bufferOffset = _serializer.float64(obj.image_error, buffer, bufferOffset);
    // Serialize message field [object_error]
    bufferOffset = _serializer.float64(obj.object_error, buffer, bufferOffset);
    // Serialize message field [fiducial_area]
    bufferOffset = _serializer.float64(obj.fiducial_area, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FiducialTransform
    let len;
    let data = new FiducialTransform(null);
    // Deserialize message field [fiducial_id]
    data.fiducial_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [transform]
    data.transform = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    // Deserialize message field [image_error]
    data.image_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [object_error]
    data.object_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fiducial_area]
    data.fiducial_area = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 84;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fiducial_msgs/FiducialTransform';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9f77f4c92fda876d2249ffbc19859044';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new FiducialTransform(null);
    if (msg.fiducial_id !== undefined) {
      resolved.fiducial_id = msg.fiducial_id;
    }
    else {
      resolved.fiducial_id = 0
    }

    if (msg.transform !== undefined) {
      resolved.transform = geometry_msgs.msg.Transform.Resolve(msg.transform)
    }
    else {
      resolved.transform = new geometry_msgs.msg.Transform()
    }

    if (msg.image_error !== undefined) {
      resolved.image_error = msg.image_error;
    }
    else {
      resolved.image_error = 0.0
    }

    if (msg.object_error !== undefined) {
      resolved.object_error = msg.object_error;
    }
    else {
      resolved.object_error = 0.0
    }

    if (msg.fiducial_area !== undefined) {
      resolved.fiducial_area = msg.fiducial_area;
    }
    else {
      resolved.fiducial_area = 0.0
    }

    return resolved;
    }
};

module.exports = FiducialTransform;
