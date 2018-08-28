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

class recordFromNowRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.recordFromNow = null;
    }
    else {
      if (initObj.hasOwnProperty('recordFromNow')) {
        this.recordFromNow = initObj.recordFromNow
      }
      else {
        this.recordFromNow = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type recordFromNowRequest
    // Serialize message field [recordFromNow]
    bufferOffset = _serializer.bool(obj.recordFromNow, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type recordFromNowRequest
    let len;
    let data = new recordFromNowRequest(null);
    // Deserialize message field [recordFromNow]
    data.recordFromNow = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_controller/recordFromNowRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '01362c0401bf7abe065e1e81367f201d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool recordFromNow
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new recordFromNowRequest(null);
    if (msg.recordFromNow !== undefined) {
      resolved.recordFromNow = msg.recordFromNow;
    }
    else {
      resolved.recordFromNow = false
    }

    return resolved;
    }
};

class recordFromNowResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.recordFromNow = null;
    }
    else {
      if (initObj.hasOwnProperty('recordFromNow')) {
        this.recordFromNow = initObj.recordFromNow
      }
      else {
        this.recordFromNow = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type recordFromNowResponse
    // Serialize message field [recordFromNow]
    bufferOffset = _serializer.bool(obj.recordFromNow, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type recordFromNowResponse
    let len;
    let data = new recordFromNowResponse(null);
    // Deserialize message field [recordFromNow]
    data.recordFromNow = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_controller/recordFromNowResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '01362c0401bf7abe065e1e81367f201d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool recordFromNow
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new recordFromNowResponse(null);
    if (msg.recordFromNow !== undefined) {
      resolved.recordFromNow = msg.recordFromNow;
    }
    else {
      resolved.recordFromNow = false
    }

    return resolved;
    }
};

module.exports = {
  Request: recordFromNowRequest,
  Response: recordFromNowResponse,
  md5sum() { return 'a7a6eb955c6d382d4e09c68b1ae9adfc'; },
  datatype() { return 'hand_controller/recordFromNow'; }
};
