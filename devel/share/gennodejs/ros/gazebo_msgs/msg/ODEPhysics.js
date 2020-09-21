// Auto-generated. Do not edit!

// (in-package gazebo_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ODEPhysics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.auto_disable_bodies = null;
      this.sor_pgs_precon_iters = null;
      this.sor_pgs_iters = null;
      this.sor_pgs_w = null;
      this.sor_pgs_rms_error_tol = null;
      this.contact_surface_layer = null;
      this.contact_max_correcting_vel = null;
      this.cfm = null;
      this.erp = null;
      this.max_contacts = null;
    }
    else {
      if (initObj.hasOwnProperty('auto_disable_bodies')) {
        this.auto_disable_bodies = initObj.auto_disable_bodies
      }
      else {
        this.auto_disable_bodies = false;
      }
      if (initObj.hasOwnProperty('sor_pgs_precon_iters')) {
        this.sor_pgs_precon_iters = initObj.sor_pgs_precon_iters
      }
      else {
        this.sor_pgs_precon_iters = 0;
      }
      if (initObj.hasOwnProperty('sor_pgs_iters')) {
        this.sor_pgs_iters = initObj.sor_pgs_iters
      }
      else {
        this.sor_pgs_iters = 0;
      }
      if (initObj.hasOwnProperty('sor_pgs_w')) {
        this.sor_pgs_w = initObj.sor_pgs_w
      }
      else {
        this.sor_pgs_w = 0.0;
      }
      if (initObj.hasOwnProperty('sor_pgs_rms_error_tol')) {
        this.sor_pgs_rms_error_tol = initObj.sor_pgs_rms_error_tol
      }
      else {
        this.sor_pgs_rms_error_tol = 0.0;
      }
      if (initObj.hasOwnProperty('contact_surface_layer')) {
        this.contact_surface_layer = initObj.contact_surface_layer
      }
      else {
        this.contact_surface_layer = 0.0;
      }
      if (initObj.hasOwnProperty('contact_max_correcting_vel')) {
        this.contact_max_correcting_vel = initObj.contact_max_correcting_vel
      }
      else {
        this.contact_max_correcting_vel = 0.0;
      }
      if (initObj.hasOwnProperty('cfm')) {
        this.cfm = initObj.cfm
      }
      else {
        this.cfm = 0.0;
      }
      if (initObj.hasOwnProperty('erp')) {
        this.erp = initObj.erp
      }
      else {
        this.erp = 0.0;
      }
      if (initObj.hasOwnProperty('max_contacts')) {
        this.max_contacts = initObj.max_contacts
      }
      else {
        this.max_contacts = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ODEPhysics
    // Serialize message field [auto_disable_bodies]
    bufferOffset = _serializer.bool(obj.auto_disable_bodies, buffer, bufferOffset);
    // Serialize message field [sor_pgs_precon_iters]
    bufferOffset = _serializer.uint32(obj.sor_pgs_precon_iters, buffer, bufferOffset);
    // Serialize message field [sor_pgs_iters]
    bufferOffset = _serializer.uint32(obj.sor_pgs_iters, buffer, bufferOffset);
    // Serialize message field [sor_pgs_w]
    bufferOffset = _serializer.float64(obj.sor_pgs_w, buffer, bufferOffset);
    // Serialize message field [sor_pgs_rms_error_tol]
    bufferOffset = _serializer.float64(obj.sor_pgs_rms_error_tol, buffer, bufferOffset);
    // Serialize message field [contact_surface_layer]
    bufferOffset = _serializer.float64(obj.contact_surface_layer, buffer, bufferOffset);
    // Serialize message field [contact_max_correcting_vel]
    bufferOffset = _serializer.float64(obj.contact_max_correcting_vel, buffer, bufferOffset);
    // Serialize message field [cfm]
    bufferOffset = _serializer.float64(obj.cfm, buffer, bufferOffset);
    // Serialize message field [erp]
    bufferOffset = _serializer.float64(obj.erp, buffer, bufferOffset);
    // Serialize message field [max_contacts]
    bufferOffset = _serializer.uint32(obj.max_contacts, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ODEPhysics
    let len;
    let data = new ODEPhysics(null);
    // Deserialize message field [auto_disable_bodies]
    data.auto_disable_bodies = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [sor_pgs_precon_iters]
    data.sor_pgs_precon_iters = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [sor_pgs_iters]
    data.sor_pgs_iters = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [sor_pgs_w]
    data.sor_pgs_w = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [sor_pgs_rms_error_tol]
    data.sor_pgs_rms_error_tol = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [contact_surface_layer]
    data.contact_surface_layer = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [contact_max_correcting_vel]
    data.contact_max_correcting_vel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cfm]
    data.cfm = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [erp]
    data.erp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_contacts]
    data.max_contacts = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 61;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gazebo_msgs/ODEPhysics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '667d56ddbd547918c32d1934503dc335';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ODEPhysics(null);
    if (msg.auto_disable_bodies !== undefined) {
      resolved.auto_disable_bodies = msg.auto_disable_bodies;
    }
    else {
      resolved.auto_disable_bodies = false
    }

    if (msg.sor_pgs_precon_iters !== undefined) {
      resolved.sor_pgs_precon_iters = msg.sor_pgs_precon_iters;
    }
    else {
      resolved.sor_pgs_precon_iters = 0
    }

    if (msg.sor_pgs_iters !== undefined) {
      resolved.sor_pgs_iters = msg.sor_pgs_iters;
    }
    else {
      resolved.sor_pgs_iters = 0
    }

    if (msg.sor_pgs_w !== undefined) {
      resolved.sor_pgs_w = msg.sor_pgs_w;
    }
    else {
      resolved.sor_pgs_w = 0.0
    }

    if (msg.sor_pgs_rms_error_tol !== undefined) {
      resolved.sor_pgs_rms_error_tol = msg.sor_pgs_rms_error_tol;
    }
    else {
      resolved.sor_pgs_rms_error_tol = 0.0
    }

    if (msg.contact_surface_layer !== undefined) {
      resolved.contact_surface_layer = msg.contact_surface_layer;
    }
    else {
      resolved.contact_surface_layer = 0.0
    }

    if (msg.contact_max_correcting_vel !== undefined) {
      resolved.contact_max_correcting_vel = msg.contact_max_correcting_vel;
    }
    else {
      resolved.contact_max_correcting_vel = 0.0
    }

    if (msg.cfm !== undefined) {
      resolved.cfm = msg.cfm;
    }
    else {
      resolved.cfm = 0.0
    }

    if (msg.erp !== undefined) {
      resolved.erp = msg.erp;
    }
    else {
      resolved.erp = 0.0
    }

    if (msg.max_contacts !== undefined) {
      resolved.max_contacts = msg.max_contacts;
    }
    else {
      resolved.max_contacts = 0
    }

    return resolved;
    }
};

module.exports = ODEPhysics;
