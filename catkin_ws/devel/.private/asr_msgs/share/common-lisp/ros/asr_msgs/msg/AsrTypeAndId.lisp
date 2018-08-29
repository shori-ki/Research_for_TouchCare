; Auto-generated. Do not edit!


(cl:in-package asr_msgs-msg)


;//! \htmlinclude AsrTypeAndId.msg.html

(cl:defclass <AsrTypeAndId> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (identifier
    :reader identifier
    :initarg :identifier
    :type cl:string
    :initform ""))
)

(cl:defclass AsrTypeAndId (<AsrTypeAndId>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AsrTypeAndId>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AsrTypeAndId)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name asr_msgs-msg:<AsrTypeAndId> is deprecated: use asr_msgs-msg:AsrTypeAndId instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <AsrTypeAndId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asr_msgs-msg:type-val is deprecated.  Use asr_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'identifier-val :lambda-list '(m))
(cl:defmethod identifier-val ((m <AsrTypeAndId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asr_msgs-msg:identifier-val is deprecated.  Use asr_msgs-msg:identifier instead.")
  (identifier m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AsrTypeAndId>) ostream)
  "Serializes a message object of type '<AsrTypeAndId>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'identifier))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'identifier))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AsrTypeAndId>) istream)
  "Deserializes a message object of type '<AsrTypeAndId>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'identifier) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'identifier) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AsrTypeAndId>)))
  "Returns string type for a message object of type '<AsrTypeAndId>"
  "asr_msgs/AsrTypeAndId")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AsrTypeAndId)))
  "Returns string type for a message object of type 'AsrTypeAndId"
  "asr_msgs/AsrTypeAndId")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AsrTypeAndId>)))
  "Returns md5sum for a message object of type '<AsrTypeAndId>"
  "9c9cc2c7fbc29ffd68b4f34c5bcbfd2e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AsrTypeAndId)))
  "Returns md5sum for a message object of type 'AsrTypeAndId"
  "9c9cc2c7fbc29ffd68b4f34c5bcbfd2e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AsrTypeAndId>)))
  "Returns full string definition for message of type '<AsrTypeAndId>"
  (cl:format cl:nil "# Copyright (c) 2016, Kleinert Daniel, Meissner Pascal, Yi Xie~%# All rights reserved.~%#~%# Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:~%#~%# 1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.~%#~%# 2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other ~%# materials provided with the distribution.~%#~%# 3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific # prior written permission.~%#~%# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED ~%# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, ~%# INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR # PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) # ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.~%~%#Asr object message, reduced to type and identifier information.~%string type~%string identifier~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AsrTypeAndId)))
  "Returns full string definition for message of type 'AsrTypeAndId"
  (cl:format cl:nil "# Copyright (c) 2016, Kleinert Daniel, Meissner Pascal, Yi Xie~%# All rights reserved.~%#~%# Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:~%#~%# 1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.~%#~%# 2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other ~%# materials provided with the distribution.~%#~%# 3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific # prior written permission.~%#~%# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED ~%# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, ~%# INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR # PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) # ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.~%~%#Asr object message, reduced to type and identifier information.~%string type~%string identifier~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AsrTypeAndId>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
     4 (cl:length (cl:slot-value msg 'identifier))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AsrTypeAndId>))
  "Converts a ROS message object to a list"
  (cl:list 'AsrTypeAndId
    (cl:cons ':type (type msg))
    (cl:cons ':identifier (identifier msg))
))
