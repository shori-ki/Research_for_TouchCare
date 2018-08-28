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

class rubbingWithForceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rubbingforce = null;
    }
    else {
      if (initObj.hasOwnProperty('rubbingforce')) {
        this.rubbingforce = initObj.rubbingforce
      }
      else {
        this.rubbingforce = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type rubbingWithForceRequest
    // Serialize message field [rubbingforce]
    bufferOffset = _serializer.int16(obj.rubbingforce, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rubbingWithForceRequest
    let len;
    let data = new rubbingWithForceRequest(null);
    // Deserialize message field [rubbingforce]
    data.rubbingforce = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_controller/rubbingWithForceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a7c598bb551ac19d777f4b6aceec6663';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 rubbingforce
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new rubbingWithForceRequest(null);
    if (msg.rubbingforce !== undefined) {
      resolved.rubbingforce = msg.rubbingforce;
    }
    else {
      resolved.rubbingforce = 0
    }

    return resolved;
    }
};

class rubbingWithForceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type rubbingWithForceResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rubbingWithForceResponse
    let len;
    let data = new rubbingWithForceResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_controller/rubbingWithForceResponse';
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
    const resolved = new rubbingWithForceResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: rubbingWithForceRequest,
  Response: rubbingWithForceResponse,
  md5sum() { return 'a7c598bb551ac19d777f4b6aceec6663'; },
  datatype() { return 'hand_controller/rubbingWithForce'; }
};
