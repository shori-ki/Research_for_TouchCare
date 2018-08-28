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

class MotorStepsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motorstep1 = null;
      this.motorstep2 = null;
    }
    else {
      if (initObj.hasOwnProperty('motorstep1')) {
        this.motorstep1 = initObj.motorstep1
      }
      else {
        this.motorstep1 = 0;
      }
      if (initObj.hasOwnProperty('motorstep2')) {
        this.motorstep2 = initObj.motorstep2
      }
      else {
        this.motorstep2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorStepsRequest
    // Serialize message field [motorstep1]
    bufferOffset = _serializer.int16(obj.motorstep1, buffer, bufferOffset);
    // Serialize message field [motorstep2]
    bufferOffset = _serializer.int16(obj.motorstep2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorStepsRequest
    let len;
    let data = new MotorStepsRequest(null);
    // Deserialize message field [motorstep1]
    data.motorstep1 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [motorstep2]
    data.motorstep2 = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_controller/MotorStepsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5df53fa0fa1b84c4a7ebce9f68720f63';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 motorstep1
    int16 motorstep2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorStepsRequest(null);
    if (msg.motorstep1 !== undefined) {
      resolved.motorstep1 = msg.motorstep1;
    }
    else {
      resolved.motorstep1 = 0
    }

    if (msg.motorstep2 !== undefined) {
      resolved.motorstep2 = msg.motorstep2;
    }
    else {
      resolved.motorstep2 = 0
    }

    return resolved;
    }
};

class MotorStepsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motorstep1 = null;
      this.motorstep2 = null;
    }
    else {
      if (initObj.hasOwnProperty('motorstep1')) {
        this.motorstep1 = initObj.motorstep1
      }
      else {
        this.motorstep1 = 0;
      }
      if (initObj.hasOwnProperty('motorstep2')) {
        this.motorstep2 = initObj.motorstep2
      }
      else {
        this.motorstep2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorStepsResponse
    // Serialize message field [motorstep1]
    bufferOffset = _serializer.int16(obj.motorstep1, buffer, bufferOffset);
    // Serialize message field [motorstep2]
    bufferOffset = _serializer.int16(obj.motorstep2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorStepsResponse
    let len;
    let data = new MotorStepsResponse(null);
    // Deserialize message field [motorstep1]
    data.motorstep1 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [motorstep2]
    data.motorstep2 = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_controller/MotorStepsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5df53fa0fa1b84c4a7ebce9f68720f63';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 motorstep1
    int16 motorstep2
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorStepsResponse(null);
    if (msg.motorstep1 !== undefined) {
      resolved.motorstep1 = msg.motorstep1;
    }
    else {
      resolved.motorstep1 = 0
    }

    if (msg.motorstep2 !== undefined) {
      resolved.motorstep2 = msg.motorstep2;
    }
    else {
      resolved.motorstep2 = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: MotorStepsRequest,
  Response: MotorStepsResponse,
  md5sum() { return '323528af2fa6691dff3466f8e1db56ef'; },
  datatype() { return 'hand_controller/MotorSteps'; }
};
