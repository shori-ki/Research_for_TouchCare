// Auto-generated. Do not edit!

// (in-package hand_controller.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class MotorAnglesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motorangle1 = null;
      this.motorangle2 = null;
    }
    else {
      if (initObj.hasOwnProperty('motorangle1')) {
        this.motorangle1 = initObj.motorangle1
      }
      else {
        this.motorangle1 = 0;
      }
      if (initObj.hasOwnProperty('motorangle2')) {
        this.motorangle2 = initObj.motorangle2
      }
      else {
        this.motorangle2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorAnglesRequest
    // Serialize message field [motorangle1]
    bufferOffset = _serializer.int16(obj.motorangle1, buffer, bufferOffset);
    // Serialize message field [motorangle2]
    bufferOffset = _serializer.int16(obj.motorangle2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorAnglesRequest
    let len;
    let data = new MotorAnglesRequest(null);
    // Deserialize message field [motorangle1]
    data.motorangle1 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [motorangle2]
    data.motorangle2 = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_controller/MotorAnglesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '985fd6b2c4a26cb7c36bfac8da43b577';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 motorangle1
    int16 motorangle2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorAnglesRequest(null);
    if (msg.motorangle1 !== undefined) {
      resolved.motorangle1 = msg.motorangle1;
    }
    else {
      resolved.motorangle1 = 0
    }

    if (msg.motorangle2 !== undefined) {
      resolved.motorangle2 = msg.motorangle2;
    }
    else {
      resolved.motorangle2 = 0
    }

    return resolved;
    }
};

class MotorAnglesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motorangle1 = null;
      this.motorangle2 = null;
    }
    else {
      if (initObj.hasOwnProperty('motorangle1')) {
        this.motorangle1 = initObj.motorangle1
      }
      else {
        this.motorangle1 = 0;
      }
      if (initObj.hasOwnProperty('motorangle2')) {
        this.motorangle2 = initObj.motorangle2
      }
      else {
        this.motorangle2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorAnglesResponse
    // Serialize message field [motorangle1]
    bufferOffset = _serializer.int16(obj.motorangle1, buffer, bufferOffset);
    // Serialize message field [motorangle2]
    bufferOffset = _serializer.int16(obj.motorangle2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorAnglesResponse
    let len;
    let data = new MotorAnglesResponse(null);
    // Deserialize message field [motorangle1]
    data.motorangle1 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [motorangle2]
    data.motorangle2 = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_controller/MotorAnglesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '985fd6b2c4a26cb7c36bfac8da43b577';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 motorangle1
    int16 motorangle2
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorAnglesResponse(null);
    if (msg.motorangle1 !== undefined) {
      resolved.motorangle1 = msg.motorangle1;
    }
    else {
      resolved.motorangle1 = 0
    }

    if (msg.motorangle2 !== undefined) {
      resolved.motorangle2 = msg.motorangle2;
    }
    else {
      resolved.motorangle2 = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: MotorAnglesRequest,
  Response: MotorAnglesResponse,
  md5sum() { return '9582b1b82bee1f1b3579a9d96d1b0c8c'; },
  datatype() { return 'hand_controller/MotorAngles'; }
};
