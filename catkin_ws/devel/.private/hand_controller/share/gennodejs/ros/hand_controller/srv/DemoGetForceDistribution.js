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

class DemoGetForceDistributionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.iStart = null;
      this.iEnd = null;
    }
    else {
      if (initObj.hasOwnProperty('iStart')) {
        this.iStart = initObj.iStart
      }
      else {
        this.iStart = 0;
      }
      if (initObj.hasOwnProperty('iEnd')) {
        this.iEnd = initObj.iEnd
      }
      else {
        this.iEnd = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DemoGetForceDistributionRequest
    // Serialize message field [iStart]
    bufferOffset = _serializer.int16(obj.iStart, buffer, bufferOffset);
    // Serialize message field [iEnd]
    bufferOffset = _serializer.int16(obj.iEnd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DemoGetForceDistributionRequest
    let len;
    let data = new DemoGetForceDistributionRequest(null);
    // Deserialize message field [iStart]
    data.iStart = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [iEnd]
    data.iEnd = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_controller/DemoGetForceDistributionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bab83eaafe63f283402717a090950e23';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 iStart
    int16 iEnd
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DemoGetForceDistributionRequest(null);
    if (msg.iStart !== undefined) {
      resolved.iStart = msg.iStart;
    }
    else {
      resolved.iStart = 0
    }

    if (msg.iEnd !== undefined) {
      resolved.iEnd = msg.iEnd;
    }
    else {
      resolved.iEnd = 0
    }

    return resolved;
    }
};

class DemoGetForceDistributionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DemoGetForceDistributionResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DemoGetForceDistributionResponse
    let len;
    let data = new DemoGetForceDistributionResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_controller/DemoGetForceDistributionResponse';
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
    const resolved = new DemoGetForceDistributionResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: DemoGetForceDistributionRequest,
  Response: DemoGetForceDistributionResponse,
  md5sum() { return 'bab83eaafe63f283402717a090950e23'; },
  datatype() { return 'hand_controller/DemoGetForceDistribution'; }
};
