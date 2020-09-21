// Auto-generated. Do not edit!

// (in-package gazebo_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LinkState = require('../msg/LinkState.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetLinkStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.link_state = null;
    }
    else {
      if (initObj.hasOwnProperty('link_state')) {
        this.link_state = initObj.link_state
      }
      else {
        this.link_state = new LinkState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetLinkStateRequest
    // Serialize message field [link_state]
    bufferOffset = LinkState.serialize(obj.link_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetLinkStateRequest
    let len;
    let data = new SetLinkStateRequest(null);
    // Deserialize message field [link_state]
    data.link_state = LinkState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += LinkState.getMessageSize(object.link_state);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gazebo_msgs/SetLinkStateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '22a2c757d56911b6f27868159e9a872d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    gazebo_msgs/LinkState link_state
    
    ================================================================================
    MSG: gazebo_msgs/LinkState
    # @todo: FIXME: sets pose and twist of a link.  All children link poses/twists of the URDF tree are not updated accordingly, but should be.
    string link_name            # link name, link_names are in gazebo scoped name notation, [model_name::body_name]
    geometry_msgs/Pose pose     # desired pose in reference frame
    geometry_msgs/Twist twist   # desired twist in reference frame
    string reference_frame      # set pose/twist relative to the frame of this link/body
                                # leave empty or "world" or "map" defaults to world-frame
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
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
    const resolved = new SetLinkStateRequest(null);
    if (msg.link_state !== undefined) {
      resolved.link_state = LinkState.Resolve(msg.link_state)
    }
    else {
      resolved.link_state = new LinkState()
    }

    return resolved;
    }
};

class SetLinkStateResponse {
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
    // Serializes a message object of type SetLinkStateResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [status_message]
    bufferOffset = _serializer.string(obj.status_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetLinkStateResponse
    let len;
    let data = new SetLinkStateResponse(null);
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
    return 'gazebo_msgs/SetLinkStateResponse';
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
    const resolved = new SetLinkStateResponse(null);
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
  Request: SetLinkStateRequest,
  Response: SetLinkStateResponse,
  md5sum() { return '8a5146eb66ae4d26b0860b08f3f271be'; },
  datatype() { return 'gazebo_msgs/SetLinkState'; }
};
