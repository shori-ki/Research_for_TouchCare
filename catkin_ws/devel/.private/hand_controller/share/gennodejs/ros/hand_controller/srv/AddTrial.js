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

class AddTrialRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.label = null;
      this.force_x = null;
      this.force_y = null;
      this.force_z = null;
    }
    else {
      if (initObj.hasOwnProperty('label')) {
        this.label = initObj.label
      }
      else {
        this.label = '';
      }
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
    // Serializes a message object of type AddTrialRequest
    // Serialize message field [label]
    bufferOffset = _serializer.string(obj.label, buffer, bufferOffset);
    // Serialize message field [force_x]
    bufferOffset = _arraySerializer.float64(obj.force_x, buffer, bufferOffset, null);
    // Serialize message field [force_y]
    bufferOffset = _arraySerializer.float64(obj.force_y, buffer, bufferOffset, null);
    // Serialize message field [force_z]
    bufferOffset = _arraySerializer.float64(obj.force_z, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddTrialRequest
    let len;
    let data = new AddTrialRequest(null);
    // Deserialize message field [label]
    data.label = _deserializer.string(buffer, bufferOffset);
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
    length += object.label.length;
    length += 8 * object.force_x.length;
    length += 8 * object.force_y.length;
    length += 8 * object.force_z.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_controller/AddTrialRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0dc24b7f1f2931dc1f963137493e45ae';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string label
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
    const resolved = new AddTrialRequest(null);
    if (msg.label !== undefined) {
      resolved.label = msg.label;
    }
    else {
      resolved.label = ''
    }

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

class AddTrialResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddTrialResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddTrialResponse
    let len;
    let data = new AddTrialResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_controller/AddTrialResponse';
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
    const resolved = new AddTrialResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: AddTrialRequest,
  Response: AddTrialResponse,
  md5sum() { return '0dc24b7f1f2931dc1f963137493e45ae'; },
  datatype() { return 'hand_controller/AddTrial'; }
};
