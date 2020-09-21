// Auto-generated. Do not edit!

// (in-package gazebo_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ODEJointProperties = require('../msg/ODEJointProperties.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetJointPropertiesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_name = null;
      this.ode_joint_config = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_name')) {
        this.joint_name = initObj.joint_name
      }
      else {
        this.joint_name = '';
      }
      if (initObj.hasOwnProperty('ode_joint_config')) {
        this.ode_joint_config = initObj.ode_joint_config
      }
      else {
        this.ode_joint_config = new ODEJointProperties();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetJointPropertiesRequest
    // Serialize message field [joint_name]
    bufferOffset = _serializer.string(obj.joint_name, buffer, bufferOffset);
    // Serialize message field [ode_joint_config]
    bufferOffset = ODEJointProperties.serialize(obj.ode_joint_config, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetJointPropertiesRequest
    let len;
    let data = new SetJointPropertiesRequest(null);
    // Deserialize message field [joint_name]
    data.joint_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ode_joint_config]
    data.ode_joint_config = ODEJointProperties.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.joint_name.length;
    length += ODEJointProperties.getMessageSize(object.ode_joint_config);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gazebo_msgs/SetJointPropertiesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '331fd8f35fd27e3c1421175590258e26';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string joint_name
    gazebo_msgs/ODEJointProperties ode_joint_config
    
    ================================================================================
    MSG: gazebo_msgs/ODEJointProperties
    # access to low level joint properties, change these at your own risk
    float64[] damping             # joint damping
    float64[] hiStop              # joint limit
    float64[] loStop              # joint limit
    float64[] erp                 # set joint erp
    float64[] cfm                 # set joint cfm
    float64[] stop_erp            # set joint erp for joint limit "contact" joint
    float64[] stop_cfm            # set joint cfm for joint limit "contact" joint
    float64[] fudge_factor        # joint fudge_factor applied at limits, see ODE manual for info.
    float64[] fmax                # ode joint param fmax
    float64[] vel                 # ode joint param vel
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetJointPropertiesRequest(null);
    if (msg.joint_name !== undefined) {
      resolved.joint_name = msg.joint_name;
    }
    else {
      resolved.joint_name = ''
    }

    if (msg.ode_joint_config !== undefined) {
      resolved.ode_joint_config = ODEJointProperties.Resolve(msg.ode_joint_config)
    }
    else {
      resolved.ode_joint_config = new ODEJointProperties()
    }

    return resolved;
    }
};

class SetJointPropertiesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.status_message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('status_message')) {
        this.status_message = initObj.status_message
      }
      else {
        this.status_message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetJointPropertiesResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [status_message]
    bufferOffset = _serializer.string(obj.status_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetJointPropertiesResponse
    let len;
    let data = new SetJointPropertiesResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [status_message]
    data.status_message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.status_message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gazebo_msgs/SetJointPropertiesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2ec6f3eff0161f4257b808b12bc830c2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string status_message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetJointPropertiesResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.status_message !== undefined) {
      resolved.status_message = msg.status_message;
    }
    else {
      resolved.status_message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: SetJointPropertiesRequest,
  Response: SetJointPropertiesResponse,
  md5sum() { return '15a76e921b1410c698d82782ea5fa370'; },
  datatype() { return 'gazebo_msgs/SetJointProperties'; }
};
