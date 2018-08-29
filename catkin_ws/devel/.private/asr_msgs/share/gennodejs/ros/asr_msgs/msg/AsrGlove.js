// Auto-generated. Do not edit!

// (in-package asr_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class AsrGlove {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = new Array(22).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AsrGlove
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Check that the constant length array field [data] has the right length
    if (obj.data.length !== 22) {
      throw new Error('Unable to serialize array field data - length must be 22')
    }
    // Serialize message field [data]
    bufferOffset = _arraySerializer.float32(obj.data, buffer, bufferOffset, 22);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AsrGlove
    let len;
    let data = new AsrGlove(null);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.float32(buffer, bufferOffset, 22)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.id.length;
    return length + 92;
  }

  static datatype() {
    // Returns string type for a message object
    return 'asr_msgs/AsrGlove';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '997d78591059a24e56073b1d0e050649';
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
    
    string id
    float32[22] data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AsrGlove(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = new Array(22).fill(0)
    }

    return resolved;
    }
};

module.exports = AsrGlove;
