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

class bot_measurements {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.half_time_remaining = null;
      this.pos_x = null;
      this.pos_y = null;
      this.theta = null;
    }
    else {
      if (initObj.hasOwnProperty('half_time_remaining')) {
        this.half_time_remaining = initObj.half_time_remaining
      }
      else {
        this.half_time_remaining = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('pos_x')) {
        this.pos_x = initObj.pos_x
      }
      else {
        this.pos_x = 0.0;
      }
      if (initObj.hasOwnProperty('pos_y')) {
        this.pos_y = initObj.pos_y
      }
      else {
        this.pos_y = 0.0;
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bot_measurements
    // Serialize message field [half_time_remaining]
    bufferOffset = _serializer.time(obj.half_time_remaining, buffer, bufferOffset);
    // Serialize message field [pos_x]
    bufferOffset = _serializer.float64(obj.pos_x, buffer, bufferOffset);
    // Serialize message field [pos_y]
    bufferOffset = _serializer.float64(obj.pos_y, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = _serializer.float64(obj.theta, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bot_measurements
    let len;
    let data = new bot_measurements(null);
    // Deserialize message field [half_time_remaining]
    data.half_time_remaining = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [pos_x]
    data.pos_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pos_y]
    data.pos_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rcj_soccer_sim/bot_measurements';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b801a7d32c725a671c00962bbd8b8a37';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time half_time_remaining
    float64 pos_x
    float64 pos_y
    float64 theta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bot_measurements(null);
    if (msg.half_time_remaining !== undefined) {
      resolved.half_time_remaining = msg.half_time_remaining;
    }
    else {
      resolved.half_time_remaining = {secs: 0, nsecs: 0}
    }

    if (msg.pos_x !== undefined) {
      resolved.pos_x = msg.pos_x;
    }
    else {
      resolved.pos_x = 0.0
    }

    if (msg.pos_y !== undefined) {
      resolved.pos_y = msg.pos_y;
    }
    else {
      resolved.pos_y = 0.0
    }

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = 0.0
    }

    return resolved;
    }
};

module.exports = bot_measurements;
