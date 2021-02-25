// Auto-generated. Do not edit!

// (in-package rcj_soccer_sim.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class bot_command {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.left_wheel_speed = null;
      this.right_wheel_speed = null;
    }
    else {
      if (initObj.hasOwnProperty('left_wheel_speed')) {
        this.left_wheel_speed = initObj.left_wheel_speed
      }
      else {
        this.left_wheel_speed = 0.0;
      }
      if (initObj.hasOwnProperty('right_wheel_speed')) {
        this.right_wheel_speed = initObj.right_wheel_speed
      }
      else {
        this.right_wheel_speed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bot_command
    // Serialize message field [left_wheel_speed]
    bufferOffset = _serializer.float64(obj.left_wheel_speed, buffer, bufferOffset);
    // Serialize message field [right_wheel_speed]
    bufferOffset = _serializer.float64(obj.right_wheel_speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bot_command
    let len;
    let data = new bot_command(null);
    // Deserialize message field [left_wheel_speed]
    data.left_wheel_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [right_wheel_speed]
    data.right_wheel_speed = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rcj_soccer_sim/bot_command';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2cb3b75b4d7e87ac43d11103b2af0a1e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 left_wheel_speed
    float64 right_wheel_speed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bot_command(null);
    if (msg.left_wheel_speed !== undefined) {
      resolved.left_wheel_speed = msg.left_wheel_speed;
    }
    else {
      resolved.left_wheel_speed = 0.0
    }

    if (msg.right_wheel_speed !== undefined) {
      resolved.right_wheel_speed = msg.right_wheel_speed;
    }
    else {
      resolved.right_wheel_speed = 0.0
    }

    return resolved;
    }
};

module.exports = bot_command;
