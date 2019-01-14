// Auto-generated. Do not edit!

// (in-package katech_msg_test_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Katech_test_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.velocity = null;
      this.wheel = null;
      this.yaw = null;
    }
    else {
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = 0;
      }
      if (initObj.hasOwnProperty('wheel')) {
        this.wheel = initObj.wheel
      }
      else {
        this.wheel = 0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Katech_test_msg
    // Serialize message field [velocity]
    bufferOffset = _serializer.int32(obj.velocity, buffer, bufferOffset);
    // Serialize message field [wheel]
    bufferOffset = _serializer.int32(obj.wheel, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float32(obj.yaw, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Katech_test_msg
    let len;
    let data = new Katech_test_msg(null);
    // Deserialize message field [velocity]
    data.velocity = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [wheel]
    data.wheel = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'katech_msg_test_pkg/Katech_test_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '587936dd7ca4add6c71b58cdb7ef89ad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 velocity
    int32 wheel
    float32 yaw
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Katech_test_msg(null);
    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = 0
    }

    if (msg.wheel !== undefined) {
      resolved.wheel = msg.wheel;
    }
    else {
      resolved.wheel = 0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    return resolved;
    }
};

module.exports = Katech_test_msg;
