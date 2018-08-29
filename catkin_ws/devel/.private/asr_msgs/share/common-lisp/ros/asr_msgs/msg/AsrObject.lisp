; Auto-generated. Do not edit!


(cl:in-package asr_msgs-msg)


;//! \htmlinclude AsrObject.msg.html

(cl:defclass <AsrObject> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (providedBy
    :reader providedBy
    :initarg :providedBy
    :type cl:string
    :initform "")
   (sampledPoses
    :reader sampledPoses
    :initarg :sampledPoses
    :type (cl:vector geometry_msgs-msg:PoseWithCovariance)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:PoseWithCovariance :initial-element (cl:make-instance 'geometry_msgs-msg:PoseWithCovariance)))
   (boundingBox
    :reader boundingBox
    :initarg :boundingBox
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 8 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (sizeConfidence
    :reader sizeConfidence
    :initarg :sizeConfidence
    :type cl:float
    :initform 0.0)
   (colorName
    :reader colorName
    :initarg :colorName
    :type cl:string
    :initform "")
   (color
    :reader color
    :initarg :color
    :type std_msgs-msg:ColorRGBA
    :initform (cl:make-instance 'std_msgs-msg:ColorRGBA))
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (typeConfidence
    :reader typeConfidence
    :initarg :typeConfidence
    :type cl:float
    :initform 0.0)
   (identifier
    :reader identifier
    :initarg :identifier
    :type cl:string
    :initform "")
   (meshResourcePath
    :reader meshResourcePath
    :initarg :meshResourcePath
    :type cl:string
    :initform ""))
)

(cl:defclass AsrObject (<AsrObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AsrObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AsrObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name asr_msgs-msg:<AsrObject> is deprecated: use asr_msgs-msg:AsrObject instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AsrObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asr_msgs-msg:header-val is deprecated.  Use asr_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'providedBy-val :lambda-list '(m))
(cl:defmethod providedBy-val ((m <AsrObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asr_msgs-msg:providedBy-val is deprecated.  Use asr_msgs-msg:providedBy instead.")
  (providedBy m))

(cl:ensure-generic-function 'sampledPoses-val :lambda-list '(m))
(cl:defmethod sampledPoses-val ((m <AsrObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asr_msgs-msg:sampledPoses-val is deprecated.  Use asr_msgs-msg:sampledPoses instead.")
  (sampledPoses m))

(cl:ensure-generic-function 'boundingBox-val :lambda-list '(m))
(cl:defmethod boundingBox-val ((m <AsrObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asr_msgs-msg:boundingBox-val is deprecated.  Use asr_msgs-msg:boundingBox instead.")
  (boundingBox m))

(cl:ensure-generic-function 'sizeConfidence-val :lambda-list '(m))
(cl:defmethod sizeConfidence-val ((m <AsrObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asr_msgs-msg:sizeConfidence-val is deprecated.  Use asr_msgs-msg:sizeConfidence instead.")
  (sizeConfidence m))

(cl:ensure-generic-function 'colorName-val :lambda-list '(m))
(cl:defmethod colorName-val ((m <AsrObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asr_msgs-msg:colorName-val is deprecated.  Use asr_msgs-msg:colorName instead.")
  (colorName m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <AsrObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asr_msgs-msg:color-val is deprecated.  Use asr_msgs-msg:color instead.")
  (color m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <AsrObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asr_msgs-msg:type-val is deprecated.  Use asr_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'typeConfidence-val :lambda-list '(m))
(cl:defmethod typeConfidence-val ((m <AsrObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asr_msgs-msg:typeConfidence-val is deprecated.  Use asr_msgs-msg:typeConfidence instead.")
  (typeConfidence m))

(cl:ensure-generic-function 'identifier-val :lambda-list '(m))
(cl:defmethod identifier-val ((m <AsrObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asr_msgs-msg:identifier-val is deprecated.  Use asr_msgs-msg:identifier instead.")
  (identifier m))

(cl:ensure-generic-function 'meshResourcePath-val :lambda-list '(m))
(cl:defmethod meshResourcePath-val ((m <AsrObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asr_msgs-msg:meshResourcePath-val is deprecated.  Use asr_msgs-msg:meshResourcePath instead.")
  (meshResourcePath m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AsrObject>) ostream)
  "Serializes a message object of type '<AsrObject>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'providedBy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'providedBy))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sampledPoses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'sampledPoses))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'boundingBox))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'sizeConfidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'colorName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'colorName))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'color) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'typeConfidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'identifier))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'identifier))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'meshResourcePath))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'meshResourcePath))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AsrObject>) istream)
  "Deserializes a message object of type '<AsrObject>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'providedBy) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'providedBy) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sampledPoses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sampledPoses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:PoseWithCovariance))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:setf (cl:slot-value msg 'boundingBox) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'boundingBox)))
    (cl:dotimes (i 8)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sizeConfidence) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'colorName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'colorName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'color) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'typeConfidence) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'identifier) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'identifier) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'meshResourcePath) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'meshResourcePath) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AsrObject>)))
  "Returns string type for a message object of type '<AsrObject>"
  "asr_msgs/AsrObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AsrObject)))
  "Returns string type for a message object of type 'AsrObject"
  "asr_msgs/AsrObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AsrObject>)))
  "Returns md5sum for a message object of type '<AsrObject>"
  "1f19dbc1869e696978e9b9ab24bfc085")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AsrObject)))
  "Returns md5sum for a message object of type 'AsrObject"
  "1f19dbc1869e696978e9b9ab24bfc085")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AsrObject>)))
  "Returns full string definition for message of type '<AsrObject>"
  (cl:format cl:nil "# Copyright (c) 2016, Kleinert Daniel, Meissner Pascal, Yi Xie~%# All rights reserved.~%#~%# Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:~%#~%# 1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.~%#~%# 2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other ~%# materials provided with the distribution.~%#~%# 3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific # prior written permission.~%#~%# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED ~%# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, ~%# INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR # PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) # ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.~%~%#Asr object ros message. @author Pascal Meissner. @version See SVN~%~%#Geometrical and qualitative information about a localized object with corresponding uncertainties.~%~%#Frame relative to which poses are given and timestamp.~%Header header~%~%#The concrete localization system used to get this object.~%string providedBy~%~%#Vector of different estimates of pose of given objects. Usually containing just a single element.~%#Each pose represented as multivariate normal distribution with 3D position vector and quaternion as mean and a covariance matrix.~%geometry_msgs/PoseWithCovariance[] sampledPoses~%~%#8 Corner Points of bounding box of object (part) concerning the axes of the frame of the part.~%#    4-----5          z~%#   /|    /|         /              x right~%#  / |   / |        /               y down~%# 0-----1  |       /-------x        z forwar ~%# |  |  |  |       |~%# |  6--|--7       |~%# | /   | /        |~%# |/	|/         y~%# 2-----3	~%geometry_msgs/Point[8] boundingBox~%float64 sizeConfidence~%~%#Misc object (part) information. Color string should be set to textured for TexturedRecognition.~%string colorName~%std_msgs/ColorRGBA color~%~%#Type of the object (part).~%string type~%float64 typeConfidence~%~%#Used to destinguish different entities of the same object class.~%string identifier~%~%# Reference to mesh based object model~%string meshResourcePath~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AsrObject)))
  "Returns full string definition for message of type 'AsrObject"
  (cl:format cl:nil "# Copyright (c) 2016, Kleinert Daniel, Meissner Pascal, Yi Xie~%# All rights reserved.~%#~%# Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:~%#~%# 1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.~%#~%# 2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other ~%# materials provided with the distribution.~%#~%# 3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific # prior written permission.~%#~%# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED ~%# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, ~%# INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR # PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) # ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.~%~%#Asr object ros message. @author Pascal Meissner. @version See SVN~%~%#Geometrical and qualitative information about a localized object with corresponding uncertainties.~%~%#Frame relative to which poses are given and timestamp.~%Header header~%~%#The concrete localization system used to get this object.~%string providedBy~%~%#Vector of different estimates of pose of given objects. Usually containing just a single element.~%#Each pose represented as multivariate normal distribution with 3D position vector and quaternion as mean and a covariance matrix.~%geometry_msgs/PoseWithCovariance[] sampledPoses~%~%#8 Corner Points of bounding box of object (part) concerning the axes of the frame of the part.~%#    4-----5          z~%#   /|    /|         /              x right~%#  / |   / |        /               y down~%# 0-----1  |       /-------x        z forwar ~%# |  |  |  |       |~%# |  6--|--7       |~%# | /   | /        |~%# |/	|/         y~%# 2-----3	~%geometry_msgs/Point[8] boundingBox~%float64 sizeConfidence~%~%#Misc object (part) information. Color string should be set to textured for TexturedRecognition.~%string colorName~%std_msgs/ColorRGBA color~%~%#Type of the object (part).~%string type~%float64 typeConfidence~%~%#Used to destinguish different entities of the same object class.~%string identifier~%~%# Reference to mesh based object model~%string meshResourcePath~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AsrObject>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'providedBy))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sampledPoses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'boundingBox) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
     4 (cl:length (cl:slot-value msg 'colorName))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'color))
     4 (cl:length (cl:slot-value msg 'type))
     8
     4 (cl:length (cl:slot-value msg 'identifier))
     4 (cl:length (cl:slot-value msg 'meshResourcePath))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AsrObject>))
  "Converts a ROS message object to a list"
  (cl:list 'AsrObject
    (cl:cons ':header (header msg))
    (cl:cons ':providedBy (providedBy msg))
    (cl:cons ':sampledPoses (sampledPoses msg))
    (cl:cons ':boundingBox (boundingBox msg))
    (cl:cons ':sizeConfidence (sizeConfidence msg))
    (cl:cons ':colorName (colorName msg))
    (cl:cons ':color (color msg))
    (cl:cons ':type (type msg))
    (cl:cons ':typeConfidence (typeConfidence msg))
    (cl:cons ':identifier (identifier msg))
    (cl:cons ':meshResourcePath (meshResourcePath msg))
))
