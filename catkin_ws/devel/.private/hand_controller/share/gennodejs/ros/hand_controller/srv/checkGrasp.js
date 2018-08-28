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

class checkGraspRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type checkGraspRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type checkGraspRequest
    let len;
    let data = new checkGraspRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_controller/checkGraspRequest';
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
    const resolved = new checkGraspRequest(null);
    return resolved;
    }
};

class checkGraspResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.single_layer = null;
      this.material = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('single_layer')) {
        this.single_layer = initObj.single_layer
      }
      else {
        this.single_layer = false;
      }
      if (initObj.hasOwnProperty('material')) {
        this.material = initObj.material
      }
      else {
        this.material = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type checkGraspResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [single_layer]
    bufferOffset = _serializer.bool(obj.single_layer, buffer, bufferOffset);
    // Serialize message field [material]
    bufferOffset = _serializer.string(obj.material, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type checkGraspResponse
    let len;
    let data = new checkGraspResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [single_layer]
    data.single_layer = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [material]
    data.material = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.material.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_controller/checkGraspResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a87fef5f943ec854fec992ab903ef3aa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    bool single_layer
    string material
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new checkGraspResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.single_layer !== undefined) {
      resolved.single_layer = msg.single_layer;
    }
    else {
      resolved.single_layer = false
    }

    if (msg.material !== undefined) {
      resolved.material = msg.material;
    }
    else {
      resolved.material = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: checkGraspRequest,
  Response: checkGraspResponse,
  md5sum() { return 'a87fef5f943ec854fec992ab903ef3aa'; },
  datatype() { return 'hand_controller/checkGrasp'; }
};
