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

class ODEJointProperties {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.damping = null;
      this.hiStop = null;
      this.loStop = null;
      this.erp = null;
      this.cfm = null;
      this.stop_erp = null;
      this.stop_cfm = null;
      this.fudge_factor = null;
      this.fmax = null;
      this.vel = null;
    }
    else {
      if (initObj.hasOwnProperty('damping')) {
        this.damping = initObj.damping
      }
      else {
        this.damping = [];
      }
      if (initObj.hasOwnProperty('hiStop')) {
        this.hiStop = initObj.hiStop
      }
      else {
        this.hiStop = [];
      }
      if (initObj.hasOwnProperty('loStop')) {
        this.loStop = initObj.loStop
      }
      else {
        this.loStop = [];
      }
      if (initObj.hasOwnProperty('erp')) {
        this.erp = initObj.erp
      }
      else {
        this.erp = [];
      }
      if (initObj.hasOwnProperty('cfm')) {
        this.cfm = initObj.cfm
      }
      else {
        this.cfm = [];
      }
      if (initObj.hasOwnProperty('stop_erp')) {
        this.stop_erp = initObj.stop_erp
      }
      else {
        this.stop_erp = [];
      }
      if (initObj.hasOwnProperty('stop_cfm')) {
        this.stop_cfm = initObj.stop_cfm
      }
      else {
        this.stop_cfm = [];
      }
      if (initObj.hasOwnProperty('fudge_factor')) {
        this.fudge_factor = initObj.fudge_factor
      }
      else {
        this.fudge_factor = [];
      }
      if (initObj.hasOwnProperty('fmax')) {
        this.fmax = initObj.fmax
      }
      else {
        this.fmax = [];
      }
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ODEJointProperties
    // Serialize message field [damping]
    bufferOffset = _arraySerializer.float64(obj.damping, buffer, bufferOffset, null);
    // Serialize message field [hiStop]
    bufferOffset = _arraySerializer.float64(obj.hiStop, buffer, bufferOffset, null);
    // Serialize message field [loStop]
    bufferOffset = _arraySerializer.float64(obj.loStop, buffer, bufferOffset, null);
    // Serialize message field [erp]
    bufferOffset = _arraySerializer.float64(obj.erp, buffer, bufferOffset, null);
    // Serialize message field [cfm]
    bufferOffset = _arraySerializer.float64(obj.cfm, buffer, bufferOffset, null);
    // Serialize message field [stop_erp]
    bufferOffset = _arraySerializer.float64(obj.stop_erp, buffer, bufferOffset, null);
    // Serialize message field [stop_cfm]
    bufferOffset = _arraySerializer.float64(obj.stop_cfm, buffer, bufferOffset, null);
    // Serialize message field [fudge_factor]
    bufferOffset = _arraySerializer.float64(obj.fudge_factor, buffer, bufferOffset, null);
    // Serialize message field [fmax]
    bufferOffset = _arraySerializer.float64(obj.fmax, buffer, bufferOffset, null);
    // Serialize message field [vel]
    bufferOffset = _arraySerializer.float64(obj.vel, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ODEJointProperties
    let len;
    let data = new ODEJointProperties(null);
    // Deserialize message field [damping]
    data.damping = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [hiStop]
    data.hiStop = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [loStop]
    data.loStop = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [erp]
    data.erp = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [cfm]
    data.cfm = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [stop_erp]
    data.stop_erp = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [stop_cfm]
    data.stop_cfm = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [fudge_factor]
    data.fudge_factor = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [fmax]
    data.fmax = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [vel]
    data.vel = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.damping.length;
    length += 8 * object.hiStop.length;
    length += 8 * object.loStop.length;
    length += 8 * object.erp.length;
    length += 8 * object.cfm.length;
    length += 8 * object.stop_erp.length;
    length += 8 * object.stop_cfm.length;
    length += 8 * object.fudge_factor.length;
    length += 8 * object.fmax.length;
    length += 8 * object.vel.length;
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gazebo_msgs/ODEJointProperties';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1b744c32a920af979f53afe2f9c3511f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ODEJointProperties(null);
    if (msg.damping !== undefined) {
      resolved.damping = msg.damping;
    }
    else {
      resolved.damping = []
    }

    if (msg.hiStop !== undefined) {
      resolved.hiStop = msg.hiStop;
    }
    else {
      resolved.hiStop = []
    }

    if (msg.loStop !== undefined) {
      resolved.loStop = msg.loStop;
    }
    else {
      resolved.loStop = []
    }

    if (msg.erp !== undefined) {
      resolved.erp = msg.erp;
    }
    else {
      resolved.erp = []
    }

    if (msg.cfm !== undefined) {
      resolved.cfm = msg.cfm;
    }
    else {
      resolved.cfm = []
    }

    if (msg.stop_erp !== undefined) {
      resolved.stop_erp = msg.stop_erp;
    }
    else {
      resolved.stop_erp = []
    }

    if (msg.stop_cfm !== undefined) {
      resolved.stop_cfm = msg.stop_cfm;
    }
    else {
      resolved.stop_cfm = []
    }

    if (msg.fudge_factor !== undefined) {
      resolved.fudge_factor = msg.fudge_factor;
    }
    else {
      resolved.fudge_factor = []
    }

    if (msg.fmax !== undefined) {
      resolved.fmax = msg.fmax;
    }
    else {
      resolved.fmax = []
    }

    if (msg.vel !== undefined) {
      resolved.vel = msg.vel;
    }
    else {
      resolved.vel = []
    }

    return resolved;
    }
};

module.exports = ODEJointProperties;
