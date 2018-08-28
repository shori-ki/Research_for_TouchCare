// Auto-generated. Do not edit!

// (in-package hand_controller.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Angles {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data_1 = null;
      this.data_2 = null;
    }
    else {
      if (initObj.hasOwnProperty('data_1')) {
        this.data_1 = initObj.data_1
      }
      else {
        this.data_1 = 0;
      }
      if (initObj.hasOwnProperty('data_2')) {
        this.data_2 = initObj.data_2
      }
      else {
        this.data_2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Angles
    // Serialize message field [data_1]
    bufferOffset = _serializer.uint8(obj.data_1, buffer, bufferOffset);
    // Serialize message field [data_2]
    bufferOffset = _serializer.uint8(obj.data_2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Angles
    let len;
    let data = new Angles(null);
    // Deserialize message field [data_1]
    data.data_1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [data_2]
    data.data_2 = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hand_controller/Angles';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9cd7eb3205b83a9787c9effbd8c528ae';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 data_1
    uint8 data_2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Angles(null);
    if (msg.data_1 !== undefined) {
      resolved.data_1 = msg.data_1;
    }
    else {
      resolved.data_1 = 0
    }

    if (msg.data_2 !== undefined) {
      resolved.data_2 = msg.data_2;
    }
    else {
      resolved.data_2 = 0
    }

    return resolved;
    }
};

module.exports = Angles;
