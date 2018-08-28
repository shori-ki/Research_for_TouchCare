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

class ClassifyRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.force_x = null;
      this.force_y = null;
      this.force_z = null;
    }
    else {
      if (initObj.hasOwnProperty('force_x')) {
        this.force_x = initObj.force_x
      }
      else {
        this.force_x = [];
      }
      if (initObj.hasOwnProperty('force_y')) {
        this.force_y = initObj.force_y
      }
      else {
        this.force_y = [];
      }
      if (initObj.hasOwnProperty('force_z')) {
        this.force_z = initObj.force_z
      }
      else {
        this.force_z = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ClassifyRequest
    // Serialize message field [force_x]
    bufferOffset = _arraySerializer.float64(obj.force_x, buffer, bufferOffset, null);
    // Serialize message field [force_y]
    bufferOffset = _arraySerializer.float64(obj.force_y, buffer, bufferOffset, null);
    // Serialize message field [force_z]
    bufferOffset = _arraySerializer.float64(obj.force_z, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClassifyRequest
    let len;
    let data = new ClassifyRequest(null);
    // Deserialize message field [force_x]
    data.force_x = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [force_y]
    data.force_y = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [force_z]
    data.force_z = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.force_x.length;
    length += 8 * object.force_y.length;
    length += 8 * object.force_z.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_controller/ClassifyRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2fd00eb3054a7530ec4eb602592e4940';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] force_x
    float64[] force_y
    float64[] force_z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ClassifyRequest(null);
    if (msg.force_x !== undefined) {
      resolved.force_x = msg.force_x;
    }
    else {
      resolved.force_x = []
    }

    if (msg.force_y !== undefined) {
      resolved.force_y = msg.force_y;
    }
    else {
      resolved.force_y = []
    }

    if (msg.force_z !== undefined) {
      resolved.force_z = msg.force_z;
    }
    else {
      resolved.force_z = []
    }

    return resolved;
    }
};

class ClassifyResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.label = null;
    }
    else {
      if (initObj.hasOwnProperty('label')) {
        this.label = initObj.label
      }
      else {
        this.label = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ClassifyResponse
    // Serialize message field [label]
    bufferOffset = _serializer.string(obj.label, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClassifyResponse
    let len;
    let data = new ClassifyResponse(null);
    // Deserialize message field [label]
    data.label = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.label.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_controller/ClassifyResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ea23f97416b04c6151d2b576c0665ac1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string label
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ClassifyResponse(null);
    if (msg.label !== undefined) {
      resolved.label = msg.label;
    }
    else {
      resolved.label = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: ClassifyRequest,
  Response: ClassifyResponse,
  md5sum() { return 'a7d3514bb828bdf6301e6a471a1834ee'; },
  datatype() { return 'hand_controller/Classify'; }
};
