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

class ClassifyOptoforceDataRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.optoforcedatabuffer = null;
    }
    else {
      if (initObj.hasOwnProperty('optoforcedatabuffer')) {
        this.optoforcedatabuffer = initObj.optoforcedatabuffer
      }
      else {
        this.optoforcedatabuffer = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ClassifyOptoforceDataRequest
    // Serialize message field [optoforcedatabuffer]
    bufferOffset = _serializer.string(obj.optoforcedatabuffer, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClassifyOptoforceDataRequest
    let len;
    let data = new ClassifyOptoforceDataRequest(null);
    // Deserialize message field [optoforcedatabuffer]
    data.optoforcedatabuffer = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.optoforcedatabuffer.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_controller/ClassifyOptoforceDataRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f9eea1360e49ad4149a83ded8678585b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string optoforcedatabuffer
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ClassifyOptoforceDataRequest(null);
    if (msg.optoforcedatabuffer !== undefined) {
      resolved.optoforcedatabuffer = msg.optoforcedatabuffer;
    }
    else {
      resolved.optoforcedatabuffer = ''
    }

    return resolved;
    }
};

class ClassifyOptoforceDataResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.classifyresult = null;
    }
    else {
      if (initObj.hasOwnProperty('classifyresult')) {
        this.classifyresult = initObj.classifyresult
      }
      else {
        this.classifyresult = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ClassifyOptoforceDataResponse
    // Serialize message field [classifyresult]
    bufferOffset = _serializer.string(obj.classifyresult, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClassifyOptoforceDataResponse
    let len;
    let data = new ClassifyOptoforceDataResponse(null);
    // Deserialize message field [classifyresult]
    data.classifyresult = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.classifyresult.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_controller/ClassifyOptoforceDataResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd9ea7b48fb60c63c7402790eb3833c91';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string classifyresult
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ClassifyOptoforceDataResponse(null);
    if (msg.classifyresult !== undefined) {
      resolved.classifyresult = msg.classifyresult;
    }
    else {
      resolved.classifyresult = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: ClassifyOptoforceDataRequest,
  Response: ClassifyOptoforceDataResponse,
  md5sum() { return '1b074e2d253a3e64ad0835b48e4ba924'; },
  datatype() { return 'hand_controller/ClassifyOptoforceData'; }
};
