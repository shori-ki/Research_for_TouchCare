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

class stopRecordingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stopRecording = null;
    }
    else {
      if (initObj.hasOwnProperty('stopRecording')) {
        this.stopRecording = initObj.stopRecording
      }
      else {
        this.stopRecording = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type stopRecordingRequest
    // Serialize message field [stopRecording]
    bufferOffset = _serializer.bool(obj.stopRecording, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type stopRecordingRequest
    let len;
    let data = new stopRecordingRequest(null);
    // Deserialize message field [stopRecording]
    data.stopRecording = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_controller/stopRecordingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b3b37439101b705e65e4f60a27eeaee3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool stopRecording
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new stopRecordingRequest(null);
    if (msg.stopRecording !== undefined) {
      resolved.stopRecording = msg.stopRecording;
    }
    else {
      resolved.stopRecording = false
    }

    return resolved;
    }
};

class stopRecordingResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stopRecording = null;
    }
    else {
      if (initObj.hasOwnProperty('stopRecording')) {
        this.stopRecording = initObj.stopRecording
      }
      else {
        this.stopRecording = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type stopRecordingResponse
    // Serialize message field [stopRecording]
    bufferOffset = _serializer.bool(obj.stopRecording, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type stopRecordingResponse
    let len;
    let data = new stopRecordingResponse(null);
    // Deserialize message field [stopRecording]
    data.stopRecording = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_controller/stopRecordingResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b3b37439101b705e65e4f60a27eeaee3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool stopRecording
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new stopRecordingResponse(null);
    if (msg.stopRecording !== undefined) {
      resolved.stopRecording = msg.stopRecording;
    }
    else {
      resolved.stopRecording = false
    }

    return resolved;
    }
};

module.exports = {
  Request: stopRecordingRequest,
  Response: stopRecordingResponse,
  md5sum() { return 'f583eeb433b8e7ea4c20a3695d033c86'; },
  datatype() { return 'hand_controller/stopRecording'; }
};
