// Auto-generated. Do not edit!

// (in-package gazebo_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let ODEPhysics = require('../msg/ODEPhysics.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class GetPhysicsPropertiesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPhysicsPropertiesRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPhysicsPropertiesRequest
    let len;
    let data = new GetPhysicsPropertiesRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gazebo_msgs/GetPhysicsPropertiesRequest';
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
    const resolved = new GetPhysicsPropertiesRequest(null);
    return resolved;
    }
};

class GetPhysicsPropertiesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time_step = null;
      this.pause = null;
      this.max_update_rate = null;
      this.gravity = null;
      this.ode_config = null;
      this.success = null;
      this.status_message = null;
    }
    else {
      if (initObj.hasOwnProperty('time_step')) {
        this.time_step = initObj.time_step
      }
      else {
        this.time_step = 0.0;
      }
      if (initObj.hasOwnProperty('pause')) {
        this.pause = initObj.pause
      }
      else {
        this.pause = false;
      }
      if (initObj.hasOwnProperty('max_update_rate')) {
        this.max_update_rate = initObj.max_update_rate
      }
      else {
        this.max_update_rate = 0.0;
      }
      if (initObj.hasOwnProperty('gravity')) {
        this.gravity = initObj.gravity
      }
      else {
        this.gravity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('ode_config')) {
        this.ode_config = initObj.ode_config
      }
      else {
        this.ode_config = new ODEPhysics();
      }
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
    // Serializes a message object of type GetPhysicsPropertiesResponse
    // Serialize message field [time_step]
    bufferOffset = _serializer.float64(obj.time_step, buffer, bufferOffset);
    // Serialize message field [pause]
    bufferOffset = _serializer.bool(obj.pause, buffer, bufferOffset);
    // Serialize message field [max_update_rate]
    bufferOffset = _serializer.float64(obj.max_update_rate, buffer, bufferOffset);
    // Serialize message field [gravity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.gravity, buffer, bufferOffset);
    // Serialize message field [ode_config]
    bufferOffset = ODEPhysics.serialize(obj.ode_config, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [status_message]
    bufferOffset = _serializer.string(obj.status_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPhysicsPropertiesResponse
    let len;
    let data = new GetPhysicsPropertiesResponse(null);
    // Deserialize message field [time_step]
    data.time_step = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pause]
    data.pause = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [max_update_rate]
    data.max_update_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gravity]
    data.gravity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [ode_config]
    data.ode_config = ODEPhysics.deserialize(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [status_message]
    data.status_message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.status_message.length;
    return length + 107;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gazebo_msgs/GetPhysicsPropertiesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '575a5e74786981b7df2e3afc567693a6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    float64 time_step
    bool pause
    float64 max_update_rate
    geometry_msgs/Vector3 gravity
    gazebo_msgs/ODEPhysics ode_config
    bool success
    string status_message
    
    
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
    MSG: gazebo_msgs/ODEPhysics
    bool auto_disable_bodies           # enable auto disabling of bodies, default false
    uint32 sor_pgs_precon_iters        # preconditioning inner iterations when uisng projected Gauss Seidel
    uint32 sor_pgs_iters               # inner iterations when uisng projected Gauss Seidel
    float64 sor_pgs_w                  # relaxation parameter when using projected Gauss Seidel, 1 = no relaxation
    float64 sor_pgs_rms_error_tol      # rms error tolerance before stopping inner iterations
    float64 contact_surface_layer      # contact "dead-band" width
    float64 contact_max_correcting_vel # contact maximum correction velocity
    float64 cfm                        # global constraint force mixing
    float64 erp                        # global error reduction parameter
    uint32 max_contacts                # maximum contact joints between two geoms
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetPhysicsPropertiesResponse(null);
    if (msg.time_step !== undefined) {
      resolved.time_step = msg.time_step;
    }
    else {
      resolved.time_step = 0.0
    }

    if (msg.pause !== undefined) {
      resolved.pause = msg.pause;
    }
    else {
      resolved.pause = false
    }

    if (msg.max_update_rate !== undefined) {
      resolved.max_update_rate = msg.max_update_rate;
    }
    else {
      resolved.max_update_rate = 0.0
    }

    if (msg.gravity !== undefined) {
      resolved.gravity = geometry_msgs.msg.Vector3.Resolve(msg.gravity)
    }
    else {
      resolved.gravity = new geometry_msgs.msg.Vector3()
    }

    if (msg.ode_config !== undefined) {
      resolved.ode_config = ODEPhysics.Resolve(msg.ode_config)
    }
    else {
      resolved.ode_config = new ODEPhysics()
    }

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
  Request: GetPhysicsPropertiesRequest,
  Response: GetPhysicsPropertiesResponse,
  md5sum() { return '575a5e74786981b7df2e3afc567693a6'; },
  datatype() { return 'gazebo_msgs/GetPhysicsProperties'; }
};
