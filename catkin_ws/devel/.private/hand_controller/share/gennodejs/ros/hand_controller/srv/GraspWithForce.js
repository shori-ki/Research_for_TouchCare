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

class GraspWithForceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.graspforce = null;
    }
    else {
      if (initObj.hasOwnProperty('graspforce')) {
        this.graspforce = initObj.graspforce
      }
      else {
        this.graspforce = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GraspWithForceRequest
    // Serialize message field [graspforce]
    bufferOffset = _serializer.int16(obj.graspforce, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GraspWithForceRequest
    let len;
    let data = new GraspWithForceRequest(null);
    // Deserialize message field [graspforce]
    data.graspforce = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_controller/GraspWithForceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6b622b99eb46c5f82062546c298013a7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 graspforce
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GraspWithForceRequest(null);
    if (msg.graspforce !== undefined) {
      resolved.graspforce = msg.graspforce;
    }
    else {
      resolved.graspforce = 0
    }

    return resolved;
    }
};

class GraspWithForceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GraspWithForceResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GraspWithForceResponse
    let len;
    let data = new GraspWithForceResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_controller/GraspWithForceResponse';
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
    const resolved = new GraspWithForceResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: GraspWithForceRequest,
  Response: GraspWithForceResponse,
  md5sum() { return '6b622b99eb46c5f82062546c298013a7'; },
  datatype() { return 'hand_controller/GraspWithForce'; }
};
