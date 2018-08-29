// Auto-generated. Do not edit!

// (in-package asr_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class AsrObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.providedBy = null;
      this.sampledPoses = null;
      this.boundingBox = null;
      this.sizeConfidence = null;
      this.colorName = null;
      this.color = null;
      this.type = null;
      this.typeConfidence = null;
      this.identifier = null;
      this.meshResourcePath = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('providedBy')) {
        this.providedBy = initObj.providedBy
      }
      else {
        this.providedBy = '';
      }
      if (initObj.hasOwnProperty('sampledPoses')) {
        this.sampledPoses = initObj.sampledPoses
      }
      else {
        this.sampledPoses = [];
      }
      if (initObj.hasOwnProperty('boundingBox')) {
        this.boundingBox = initObj.boundingBox
      }
      else {
        this.boundingBox = new Array(8).fill(new geometry_msgs.msg.Point());
      }
      if (initObj.hasOwnProperty('sizeConfidence')) {
        this.sizeConfidence = initObj.sizeConfidence
      }
      else {
        this.sizeConfidence = 0.0;
      }
      if (initObj.hasOwnProperty('colorName')) {
        this.colorName = initObj.colorName
      }
      else {
        this.colorName = '';
      }
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = new std_msgs.msg.ColorRGBA();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('typeConfidence')) {
        this.typeConfidence = initObj.typeConfidence
      }
      else {
        this.typeConfidence = 0.0;
      }
      if (initObj.hasOwnProperty('identifier')) {
        this.identifier = initObj.identifier
      }
      else {
        this.identifier = '';
      }
      if (initObj.hasOwnProperty('meshResourcePath')) {
        this.meshResourcePath = initObj.meshResourcePath
      }
      else {
        this.meshResourcePath = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AsrObject
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [providedBy]
    bufferOffset = _serializer.string(obj.providedBy, buffer, bufferOffset);
    // Serialize message field [sampledPoses]
    // Serialize the length for message field [sampledPoses]
    bufferOffset = _serializer.uint32(obj.sampledPoses.length, buffer, bufferOffset);
    obj.sampledPoses.forEach((val) => {
      bufferOffset = geometry_msgs.msg.PoseWithCovariance.serialize(val, buffer, bufferOffset);
    });
    // Check that the constant length array field [boundingBox] has the right length
    if (obj.boundingBox.length !== 8) {
      throw new Error('Unable to serialize array field boundingBox - length must be 8')
    }
    // Serialize message field [boundingBox]
    obj.boundingBox.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [sizeConfidence]
    bufferOffset = _serializer.float64(obj.sizeConfidence, buffer, bufferOffset);
    // Serialize message field [colorName]
    bufferOffset = _serializer.string(obj.colorName, buffer, bufferOffset);
    // Serialize message field [color]
    bufferOffset = std_msgs.msg.ColorRGBA.serialize(obj.color, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [typeConfidence]
    bufferOffset = _serializer.float64(obj.typeConfidence, buffer, bufferOffset);
    // Serialize message field [identifier]
    bufferOffset = _serializer.string(obj.identifier, buffer, bufferOffset);
    // Serialize message field [meshResourcePath]
    bufferOffset = _serializer.string(obj.meshResourcePath, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AsrObject
    let len;
    let data = new AsrObject(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [providedBy]
    data.providedBy = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sampledPoses]
    // Deserialize array length for message field [sampledPoses]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.sampledPoses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sampledPoses[i] = geometry_msgs.msg.PoseWithCovariance.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [boundingBox]
    len = 8;
    data.boundingBox = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.boundingBox[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [sizeConfidence]
    data.sizeConfidence = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [colorName]
    data.colorName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [color]
    data.color = std_msgs.msg.ColorRGBA.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [typeConfidence]
    data.typeConfidence = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [identifier]
    data.identifier = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [meshResourcePath]
    data.meshResourcePath = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.providedBy.length;
    length += 344 * object.sampledPoses.length;
    length += object.colorName.length;
    length += object.type.length;
    length += object.identifier.length;
    length += object.meshResourcePath.length;
    return length + 248;
  }

  static datatype() {
    // Returns string type for a message object
    return 'asr_msgs/AsrObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1f19dbc1869e696978e9b9ab24bfc085';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Copyright (c) 2016, Kleinert Daniel, Meissner Pascal, Yi Xie
    # All rights reserved.
    #
    # Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
    #
    # 1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
    #
    # 2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other 
    # materials provided with the distribution.
    #
    # 3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific # prior written permission.
    #
    # THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED 
    # WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, 
    # INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR # PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) # ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
    
    #Asr object ros message. @author Pascal Meissner. @version See SVN
    
    #Geometrical and qualitative information about a localized object with corresponding uncertainties.
    
    #Frame relative to which poses are given and timestamp.
    Header header
    
    #The concrete localization system used to get this object.
    string providedBy
    
    #Vector of different estimates of pose of given objects. Usually containing just a single element.
    #Each pose represented as multivariate normal distribution with 3D position vector and quaternion as mean and a covariance matrix.
    geometry_msgs/PoseWithCovariance[] sampledPoses
    
    #8 Corner Points of bounding box of object (part) concerning the axes of the frame of the part.
    #    4-----5          z
    #   /|    /|         /              x right
    #  / |   / |        /               y down
    # 0-----1  |       /-------x        z forwar 
    # |  |  |  |       |
    # |  6--|--7       |
    # | /   | /        |
    # |/	|/         y
    # 2-----3	
    geometry_msgs/Point[8] boundingBox
    float64 sizeConfidence
    
    #Misc object (part) information. Color string should be set to textured for TexturedRecognition.
    string colorName
    std_msgs/ColorRGBA color
    
    #Type of the object (part).
    string type
    float64 typeConfidence
    
    #Used to destinguish different entities of the same object class.
    string identifier
    
    # Reference to mesh based object model
    string meshResourcePath
    
    
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
    MSG: geometry_msgs/PoseWithCovariance
    # This represents a pose in free space with uncertainty.
    
    Pose pose
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: std_msgs/ColorRGBA
    float32 r
    float32 g
    float32 b
    float32 a
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AsrObject(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.providedBy !== undefined) {
      resolved.providedBy = msg.providedBy;
    }
    else {
      resolved.providedBy = ''
    }

    if (msg.sampledPoses !== undefined) {
      resolved.sampledPoses = new Array(msg.sampledPoses.length);
      for (let i = 0; i < resolved.sampledPoses.length; ++i) {
        resolved.sampledPoses[i] = geometry_msgs.msg.PoseWithCovariance.Resolve(msg.sampledPoses[i]);
      }
    }
    else {
      resolved.sampledPoses = []
    }

    if (msg.boundingBox !== undefined) {
      resolved.boundingBox = new Array(8)
      for (let i = 0; i < resolved.boundingBox.length; ++i) {
        if (msg.boundingBox.length > i) {
          resolved.boundingBox[i] = geometry_msgs.msg.Point.Resolve(msg.boundingBox[i]);
        }
        else {
          resolved.boundingBox[i] = new geometry_msgs.msg.Point();
        }
      }
    }
    else {
      resolved.boundingBox = new Array(8).fill(new geometry_msgs.msg.Point())
    }

    if (msg.sizeConfidence !== undefined) {
      resolved.sizeConfidence = msg.sizeConfidence;
    }
    else {
      resolved.sizeConfidence = 0.0
    }

    if (msg.colorName !== undefined) {
      resolved.colorName = msg.colorName;
    }
    else {
      resolved.colorName = ''
    }

    if (msg.color !== undefined) {
      resolved.color = std_msgs.msg.ColorRGBA.Resolve(msg.color)
    }
    else {
      resolved.color = new std_msgs.msg.ColorRGBA()
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.typeConfidence !== undefined) {
      resolved.typeConfidence = msg.typeConfidence;
    }
    else {
      resolved.typeConfidence = 0.0
    }

    if (msg.identifier !== undefined) {
      resolved.identifier = msg.identifier;
    }
    else {
      resolved.identifier = ''
    }

    if (msg.meshResourcePath !== undefined) {
      resolved.meshResourcePath = msg.meshResourcePath;
    }
    else {
      resolved.meshResourcePath = ''
    }

    return resolved;
    }
};

module.exports = AsrObject;
