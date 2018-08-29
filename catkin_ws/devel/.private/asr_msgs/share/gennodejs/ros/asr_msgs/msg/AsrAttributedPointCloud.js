// Auto-generated. Do not edit!

// (in-package asr_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AsrAttributedPoint = require('./AsrAttributedPoint.js');

//-----------------------------------------------------------

class AsrAttributedPointCloud {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.elements = null;
    }
    else {
      if (initObj.hasOwnProperty('elements')) {
        this.elements = initObj.elements
      }
      else {
        this.elements = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AsrAttributedPointCloud
    // Serialize message field [elements]
    // Serialize the length for message field [elements]
    bufferOffset = _serializer.uint32(obj.elements.length, buffer, bufferOffset);
    obj.elements.forEach((val) => {
      bufferOffset = AsrAttributedPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AsrAttributedPointCloud
    let len;
    let data = new AsrAttributedPointCloud(null);
    // Deserialize message field [elements]
    // Deserialize array length for message field [elements]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.elements = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.elements[i] = AsrAttributedPoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.elements.forEach((val) => {
      length += AsrAttributedPoint.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'asr_msgs/AsrAttributedPointCloud';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f5f5fc6c0891d9c31a22ae8e14d66006';
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
    
    #When used by pose_prediction: Cloud of estimates (stripped AsrObjects) of object poses for potentially different objects.
    AsrAttributedPoint[] elements
    ================================================================================
    MSG: asr_msgs/AsrAttributedPoint
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
    
    
    #Output of pose_prediction: Asr object, reduced to a single pose estimate without uncertainty.
    geometry_msgs/Pose pose
    string type
    string identifier
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AsrAttributedPointCloud(null);
    if (msg.elements !== undefined) {
      resolved.elements = new Array(msg.elements.length);
      for (let i = 0; i < resolved.elements.length; ++i) {
        resolved.elements[i] = AsrAttributedPoint.Resolve(msg.elements[i]);
      }
    }
    else {
      resolved.elements = []
    }

    return resolved;
    }
};

module.exports = AsrAttributedPointCloud;
