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

class SetMotorAnglesRequest {
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
    // Serializes a message object of type SetMotorAnglesRequest
    // Serialize message field [motorangle1]
    bufferOffset = _serializer.int16(obj.motorangle1, buffer, bufferOffset);
    // Serialize message field [motorangle2]
    bufferOffset = _serializer.int16(obj.motorangle2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetMotorAnglesRequest
    let len;
    let data = new SetMotorAnglesRequest(null);
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
    return 'hand_controller/SetMotorAnglesRequest';
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
    const resolved = new SetMotorAnglesRequest(null);
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

class SetMotorAnglesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetMotorAnglesResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetMotorAnglesResponse
    let len;
    let data = new SetMotorAnglesResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_controller/SetMotorAnglesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetMotorAnglesResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetMotorAnglesRequest,
  Response: SetMotorAnglesResponse,
  md5sum() { return '985fd6b2c4a26cb7c36bfac8da43b577'; },
  datatype() { return 'hand_controller/SetMotorAngles'; }
};
