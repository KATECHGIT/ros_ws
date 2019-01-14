// Auto-generated. Do not edit!

// (in-package katech_test_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class KatechTest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.steering_wheel_angle_cmd = null;
      this.steering_velocity_cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('steering_wheel_angle_cmd')) {
        this.steering_wheel_angle_cmd = initObj.steering_wheel_angle_cmd
      }
      else {
        this.steering_wheel_angle_cmd = 0;
      }
      if (initObj.hasOwnProperty('steering_velocity_cmd')) {
        this.steering_velocity_cmd = initObj.steering_velocity_cmd
      }
      else {
        this.steering_velocity_cmd = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type KatechTest
    // Serialize message field [steering_wheel_angle_cmd]
    bufferOffset = _serializer.int32(obj.steering_wheel_angle_cmd, buffer, bufferOffset);
    // Serialize message field [steering_velocity_cmd]
    bufferOffset = _serializer.int32(obj.steering_velocity_cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type KatechTest
    let len;
    let data = new KatechTest(null);
    // Deserialize message field [steering_wheel_angle_cmd]
    data.steering_wheel_angle_cmd = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [steering_velocity_cmd]
    data.steering_velocity_cmd = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'katech_test_msg/KatechTest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3d1d743ebccd40b1c19440e1aea32db4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 steering_wheel_angle_cmd
    int32 steering_velocity_cmd
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new KatechTest(null);
    if (msg.steering_wheel_angle_cmd !== undefined) {
      resolved.steering_wheel_angle_cmd = msg.steering_wheel_angle_cmd;
    }
    else {
      resolved.steering_wheel_angle_cmd = 0
    }

    if (msg.steering_velocity_cmd !== undefined) {
      resolved.steering_velocity_cmd = msg.steering_velocity_cmd;
    }
    else {
      resolved.steering_velocity_cmd = 0
    }

    return resolved;
    }
};

module.exports = KatechTest;
