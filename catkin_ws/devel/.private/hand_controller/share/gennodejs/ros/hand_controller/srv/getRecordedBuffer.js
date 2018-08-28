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

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class getRecordedBufferRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type getRecordedBufferRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type getRecordedBufferRequest
    let len;
    let data = new getRecordedBufferRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_controller/getRecordedBufferRequest';
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
    const resolved = new getRecordedBufferRequest(null);
    return resolved;
    }
};

class getRecordedBufferResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.buffer = null;
      this.x_buffer = null;
      this.y_buffer = null;
      this.z_buffer = null;
    }
    else {
      if (initObj.hasOwnProperty('buffer')) {
        this.buffer = initObj.buffer
      }
      else {
        this.buffer = [];
      }
      if (initObj.hasOwnProperty('x_buffer')) {
        this.x_buffer = initObj.x_buffer
      }
      else {
        this.x_buffer = [];
      }
      if (initObj.hasOwnProperty('y_buffer')) {
        this.y_buffer = initObj.y_buffer
      }
      else {
        this.y_buffer = [];
      }
      if (initObj.hasOwnProperty('z_buffer')) {
        this.z_buffer = initObj.z_buffer
      }
      else {
        this.z_buffer = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type getRecordedBufferResponse
    // Serialize message field [buffer]
    // Serialize the length for message field [buffer]
    bufferOffset = _serializer.uint32(obj.buffer.length, buffer, bufferOffset);
    obj.buffer.forEach((val) => {
      bufferOffset = geometry_msgs.msg.WrenchStamped.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [x_buffer]
    bufferOffset = _arraySerializer.float64(obj.x_buffer, buffer, bufferOffset, null);
    // Serialize message field [y_buffer]
    bufferOffset = _arraySerializer.float64(obj.y_buffer, buffer, bufferOffset, null);
    // Serialize message field [z_buffer]
    bufferOffset = _arraySerializer.float64(obj.z_buffer, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type getRecordedBufferResponse
    let len;
    let data = new getRecordedBufferResponse(null);
    // Deserialize message field [buffer]
    // Deserialize array length for message field [buffer]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.buffer = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.buffer[i] = geometry_msgs.msg.WrenchStamped.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [x_buffer]
    data.x_buffer = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [y_buffer]
    data.y_buffer = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [z_buffer]
    data.z_buffer = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.buffer.forEach((val) => {
      length += geometry_msgs.msg.WrenchStamped.getMessageSize(val);
    });
    length += 8 * object.x_buffer.length;
    length += 8 * object.y_buffer.length;
    length += 8 * object.z_buffer.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_controller/getRecordedBufferResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9f0d2e2dca63a66d6097c4b52389060c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/WrenchStamped[] buffer
    float64[] x_buffer
    float64[] y_buffer
    float64[] z_buffer
    
    
    ================================================================================
    MSG: geometry_msgs/WrenchStamped
    # A wrench with reference coordinate frame and timestamp
    Header header
    Wrench wrench
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Wrench
    # This represents force in free space, separated into
    # its linear and angular parts.
    Vector3  force
    Vector3  torque
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new getRecordedBufferResponse(null);
    if (msg.buffer !== undefined) {
      resolved.buffer = new Array(msg.buffer.length);
      for (let i = 0; i < resolved.buffer.length; ++i) {
        resolved.buffer[i] = geometry_msgs.msg.WrenchStamped.Resolve(msg.buffer[i]);
      }
    }
    else {
      resolved.buffer = []
    }

    if (msg.x_buffer !== undefined) {
      resolved.x_buffer = msg.x_buffer;
    }
    else {
      resolved.x_buffer = []
    }

    if (msg.y_buffer !== undefined) {
      resolved.y_buffer = msg.y_buffer;
    }
    else {
      resolved.y_buffer = []
    }

    if (msg.z_buffer !== undefined) {
      resolved.z_buffer = msg.z_buffer;
    }
    else {
      resolved.z_buffer = []
    }

    return resolved;
    }
};

module.exports = {
  Request: getRecordedBufferRequest,
  Response: getRecordedBufferResponse,
  md5sum() { return '9f0d2e2dca63a66d6097c4b52389060c'; },
  datatype() { return 'hand_controller/getRecordedBuffer'; }
};
