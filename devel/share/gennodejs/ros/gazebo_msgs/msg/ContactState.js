// Auto-generated. Do not edit!

// (in-package gazebo_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ContactState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.info = null;
      this.collision1_name = null;
      this.collision2_name = null;
      this.wrenches = null;
      this.total_wrench = null;
      this.contact_positions = null;
      this.contact_normals = null;
      this.depths = null;
    }
    else {
      if (initObj.hasOwnProperty('info')) {
        this.info = initObj.info
      }
      else {
        this.info = '';
      }
      if (initObj.hasOwnProperty('collision1_name')) {
        this.collision1_name = initObj.collision1_name
      }
      else {
        this.collision1_name = '';
      }
      if (initObj.hasOwnProperty('collision2_name')) {
        this.collision2_name = initObj.collision2_name
      }
      else {
        this.collision2_name = '';
      }
      if (initObj.hasOwnProperty('wrenches')) {
        this.wrenches = initObj.wrenches
      }
      else {
        this.wrenches = [];
      }
      if (initObj.hasOwnProperty('total_wrench')) {
        this.total_wrench = initObj.total_wrench
      }
      else {
        this.total_wrench = new geometry_msgs.msg.Wrench();
      }
      if (initObj.hasOwnProperty('contact_positions')) {
        this.contact_positions = initObj.contact_positions
      }
      else {
        this.contact_positions = [];
      }
      if (initObj.hasOwnProperty('contact_normals')) {
        this.contact_normals = initObj.contact_normals
      }
      else {
        this.contact_normals = [];
      }
      if (initObj.hasOwnProperty('depths')) {
        this.depths = initObj.depths
      }
      else {
        this.depths = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ContactState
    // Serialize message field [info]
    bufferOffset = _serializer.string(obj.info, buffer, bufferOffset);
    // Serialize message field [collision1_name]
    bufferOffset = _serializer.string(obj.collision1_name, buffer, bufferOffset);
    // Serialize message field [collision2_name]
    bufferOffset = _serializer.string(obj.collision2_name, buffer, bufferOffset);
    // Serialize message field [wrenches]
    // Serialize the length for message field [wrenches]
    bufferOffset = _serializer.uint32(obj.wrenches.length, buffer, bufferOffset);
    obj.wrenches.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Wrench.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [total_wrench]
    bufferOffset = geometry_msgs.msg.Wrench.serialize(obj.total_wrench, buffer, bufferOffset);
    // Serialize message field [contact_positions]
    // Serialize the length for message field [contact_positions]
    bufferOffset = _serializer.uint32(obj.contact_positions.length, buffer, bufferOffset);
    obj.contact_positions.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [contact_normals]
    // Serialize the length for message field [contact_normals]
    bufferOffset = _serializer.uint32(obj.contact_normals.length, buffer, bufferOffset);
    obj.contact_normals.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [depths]
    bufferOffset = _arraySerializer.float64(obj.depths, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ContactState
    let len;
    let data = new ContactState(null);
    // Deserialize message field [info]
    data.info = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [collision1_name]
    data.collision1_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [collision2_name]
    data.collision2_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [wrenches]
    // Deserialize array length for message field [wrenches]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.wrenches = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.wrenches[i] = geometry_msgs.msg.Wrench.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [total_wrench]
    data.total_wrench = geometry_msgs.msg.Wrench.deserialize(buffer, bufferOffset);
    // Deserialize message field [contact_positions]
    // Deserialize array length for message field [contact_positions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.contact_positions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.contact_positions[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [contact_normals]
    // Deserialize array length for message field [contact_normals]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.contact_normals = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.contact_normals[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [depths]
    data.depths = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.info.length;
    length += object.collision1_name.length;
    length += object.collision2_name.length;
    length += 48 * object.wrenches.length;
    length += 24 * object.contact_positions.length;
    length += 24 * object.contact_normals.length;
    length += 8 * object.depths.length;
    return length + 76;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gazebo_msgs/ContactState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '48c0ffb054b8c444f870cecea1ee50d9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string info                                   # text info on this contact
    string collision1_name                        # name of contact collision1
    string collision2_name                        # name of contact collision2
    geometry_msgs/Wrench[] wrenches               # list of forces/torques
    geometry_msgs/Wrench total_wrench             # sum of forces/torques in every DOF
    geometry_msgs/Vector3[] contact_positions     # list of contact position
    geometry_msgs/Vector3[] contact_normals       # list of contact normals
    float64[] depths                              # list of penetration depths
    
    ================================================================================
    MSG: geometry_msgs/Wrench
    # This represents force in free space, separated into
    # its linear and angular parts.
    Vector3  force
    Vector3  torque
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ContactState(null);
    if (msg.info !== undefined) {
      resolved.info = msg.info;
    }
    else {
      resolved.info = ''
    }

    if (msg.collision1_name !== undefined) {
      resolved.collision1_name = msg.collision1_name;
    }
    else {
      resolved.collision1_name = ''
    }

    if (msg.collision2_name !== undefined) {
      resolved.collision2_name = msg.collision2_name;
    }
    else {
      resolved.collision2_name = ''
    }

    if (msg.wrenches !== undefined) {
      resolved.wrenches = new Array(msg.wrenches.length);
      for (let i = 0; i < resolved.wrenches.length; ++i) {
        resolved.wrenches[i] = geometry_msgs.msg.Wrench.Resolve(msg.wrenches[i]);
      }
    }
    else {
      resolved.wrenches = []
    }

    if (msg.total_wrench !== undefined) {
      resolved.total_wrench = geometry_msgs.msg.Wrench.Resolve(msg.total_wrench)
    }
    else {
      resolved.total_wrench = new geometry_msgs.msg.Wrench()
    }

    if (msg.contact_positions !== undefined) {
      resolved.contact_positions = new Array(msg.contact_positions.length);
      for (let i = 0; i < resolved.contact_positions.length; ++i) {
        resolved.contact_positions[i] = geometry_msgs.msg.Vector3.Resolve(msg.contact_positions[i]);
      }
    }
    else {
      resolved.contact_positions = []
    }

    if (msg.contact_normals !== undefined) {
      resolved.contact_normals = new Array(msg.contact_normals.length);
      for (let i = 0; i < resolved.contact_normals.length; ++i) {
        resolved.contact_normals[i] = geometry_msgs.msg.Vector3.Resolve(msg.contact_normals[i]);
      }
    }
    else {
      resolved.contact_normals = []
    }

    if (msg.depths !== undefined) {
      resolved.depths = msg.depths;
    }
    else {
      resolved.depths = []
    }

    return resolved;
    }
};

module.exports = ContactState;
