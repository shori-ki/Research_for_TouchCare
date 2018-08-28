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

class RubbingMotionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rubbingmotionrepetitions = null;
    }
    else {
      if (initObj.hasOwnProperty('rubbingmotionrepetitions')) {
        this.rubbingmotionrepetitions = initObj.rubbingmotionrepetitions
      }
      else {
        this.rubbingmotionrepetitions = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RubbingMotionRequest
    // Serialize message field [rubbingmotionrepetitions]
    bufferOffset = _serializer.uint16(obj.rubbingmotionrepetitions, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RubbingMotionRequest
    let len;
    let data = new RubbingMotionRequest(null);
    // Deserialize message field [rubbingmotionrepetitions]
    data.rubbingmotionrepetitions = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_controller/RubbingMotionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '558b361be41d47909cd85fcfff79812b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 rubbingmotionrepetitions
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RubbingMotionRequest(null);
    if (msg.rubbingmotionrepetitions !== undefined) {
      resolved.rubbingmotionrepetitions = msg.rubbingmotionrepetitions;
    }
    else {
      resolved.rubbingmotionrepetitions = 0
    }

    return resolved;
    }
};

class RubbingMotionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RubbingMotionResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RubbingMotionResponse
    let len;
    let data = new RubbingMotionResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_controller/RubbingMotionResponse';
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
    const resolved = new RubbingMotionResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: RubbingMotionRequest,
  Response: RubbingMotionResponse,
  md5sum() { return '558b361be41d47909cd85fcfff79812b'; },
  datatype() { return 'hand_controller/RubbingMotion'; }
};
