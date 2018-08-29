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

//-----------------------------------------------------------

class AsrViewport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
      this.object_type_name_list = null;
      this.fovx = null;
      this.fovy = null;
      this.ncp = null;
      this.fcp = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('object_type_name_list')) {
        this.object_type_name_list = initObj.object_type_name_list
      }
      else {
        this.object_type_name_list = [];
      }
      if (initObj.hasOwnProperty('fovx')) {
        this.fovx = initObj.fovx
      }
      else {
        this.fovx = 0.0;
      }
      if (initObj.hasOwnProperty('fovy')) {
        this.fovy = initObj.fovy
      }
      else {
        this.fovy = 0.0;
      }
      if (initObj.hasOwnProperty('ncp')) {
        this.ncp = initObj.ncp
      }
      else {
        this.ncp = 0.0;
      }
      if (initObj.hasOwnProperty('fcp')) {
        this.fcp = initObj.fcp
      }
      else {
        this.fcp = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AsrViewport
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [object_type_name_list]
    bufferOffset = _arraySerializer.string(obj.object_type_name_list, buffer, bufferOffset, null);
    // Serialize message field [fovx]
    bufferOffset = _serializer.float32(obj.fovx, buffer, bufferOffset);
    // Serialize message field [fovy]
    bufferOffset = _serializer.float32(obj.fovy, buffer, bufferOffset);
    // Serialize message field [ncp]
    bufferOffset = _serializer.float32(obj.ncp, buffer, bufferOffset);
    // Serialize message field [fcp]
    bufferOffset = _serializer.float32(obj.fcp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AsrViewport
    let len;
    let data = new AsrViewport(null);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [object_type_name_list]
    data.object_type_name_list = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [fovx]
    data.fovx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fovy]
    data.fovy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ncp]
    data.ncp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fcp]
    data.fcp = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.object_type_name_list.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 76;
  }

  static datatype() {
    // Returns string type for a message object
    return 'asr_msgs/AsrViewport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f3babdea0fb223c434b4147047d0da4b';
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
    
    #Gotten by state_machine: Camera viewport that has been searched (in reality by the robot) for a set of objects of given types.
    # the viewport pose
    geometry_msgs/Pose pose
    # list of object types searched in the viewport
    string[] object_type_name_list
    
    # Parameters of the viewport
    float32 fovx
    float32 fovy
    float32 ncp
    float32 fcp
    
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
    const resolved = new AsrViewport(null);
    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.object_type_name_list !== undefined) {
      resolved.object_type_name_list = msg.object_type_name_list;
    }
    else {
      resolved.object_type_name_list = []
    }

    if (msg.fovx !== undefined) {
      resolved.fovx = msg.fovx;
    }
    else {
      resolved.fovx = 0.0
    }

    if (msg.fovy !== undefined) {
      resolved.fovy = msg.fovy;
    }
    else {
      resolved.fovy = 0.0
    }

    if (msg.ncp !== undefined) {
      resolved.ncp = msg.ncp;
    }
    else {
      resolved.ncp = 0.0
    }

    if (msg.fcp !== undefined) {
      resolved.fcp = msg.fcp;
    }
    else {
      resolved.fcp = 0.0
    }

    return resolved;
    }
};

module.exports = AsrViewport;
