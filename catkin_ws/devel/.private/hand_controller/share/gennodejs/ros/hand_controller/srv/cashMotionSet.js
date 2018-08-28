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

class cashMotionSetRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.repetitions = null;
      this.set = null;
      this.t_move = null;
      this.t_wait = null;
    }
    else {
      if (initObj.hasOwnProperty('repetitions')) {
        this.repetitions = initObj.repetitions
      }
      else {
        this.repetitions = 0;
      }
      if (initObj.hasOwnProperty('set')) {
        this.set = initObj.set
      }
      else {
        this.set = 0;
      }
      if (initObj.hasOwnProperty('t_move')) {
        this.t_move = initObj.t_move
      }
      else {
        this.t_move = 0;
      }
      if (initObj.hasOwnProperty('t_wait')) {
        this.t_wait = initObj.t_wait
      }
      else {
        this.t_wait = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cashMotionSetRequest
    // Serialize message field [repetitions]
    bufferOffset = _serializer.uint16(obj.repetitions, buffer, bufferOffset);
    // Serialize message field [set]
    bufferOffset = _serializer.int16(obj.set, buffer, bufferOffset);
    // Serialize message field [t_move]
    bufferOffset = _serializer.int16(obj.t_move, buffer, bufferOffset);
    // Serialize message field [t_wait]
    bufferOffset = _serializer.int16(obj.t_wait, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cashMotionSetRequest
    let len;
    let data = new cashMotionSetRequest(null);
    // Deserialize message field [repetitions]
    data.repetitions = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [set]
    data.set = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [t_move]
    data.t_move = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [t_wait]
    data.t_wait = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_controller/cashMotionSetRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '109cc6351a2b407de68db394282f6650';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 repetitions
    int16 set
    int16 t_move
    int16 t_wait
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cashMotionSetRequest(null);
    if (msg.repetitions !== undefined) {
      resolved.repetitions = msg.repetitions;
    }
    else {
      resolved.repetitions = 0
    }

    if (msg.set !== undefined) {
      resolved.set = msg.set;
    }
    else {
      resolved.set = 0
    }

    if (msg.t_move !== undefined) {
      resolved.t_move = msg.t_move;
    }
    else {
      resolved.t_move = 0
    }

    if (msg.t_wait !== undefined) {
      resolved.t_wait = msg.t_wait;
    }
    else {
      resolved.t_wait = 0
    }

    return resolved;
    }
};

class cashMotionSetResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cashMotionSetResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cashMotionSetResponse
    let len;
    let data = new cashMotionSetResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_controller/cashMotionSetResponse';
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
    const resolved = new cashMotionSetResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: cashMotionSetRequest,
  Response: cashMotionSetResponse,
  md5sum() { return '109cc6351a2b407de68db394282f6650'; },
  datatype() { return 'hand_controller/cashMotionSet'; }
};
