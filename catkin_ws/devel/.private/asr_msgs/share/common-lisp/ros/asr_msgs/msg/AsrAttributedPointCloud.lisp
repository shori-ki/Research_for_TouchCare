; Auto-generated. Do not edit!


(cl:in-package asr_msgs-msg)


;//! \htmlinclude AsrAttributedPointCloud.msg.html

(cl:defclass <AsrAttributedPointCloud> (roslisp-msg-protocol:ros-message)
  ((elements
    :reader elements
    :initarg :elements
    :type (cl:vector asr_msgs-msg:AsrAttributedPoint)
   :initform (cl:make-array 0 :element-type 'asr_msgs-msg:AsrAttributedPoint :initial-element (cl:make-instance 'asr_msgs-msg:AsrAttributedPoint))))
)

(cl:defclass AsrAttributedPointCloud (<AsrAttributedPointCloud>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AsrAttributedPointCloud>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AsrAttributedPointCloud)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name asr_msgs-msg:<AsrAttributedPointCloud> is deprecated: use asr_msgs-msg:AsrAttributedPointCloud instead.")))

(cl:ensure-generic-function 'elements-val :lambda-list '(m))
(cl:defmethod elements-val ((m <AsrAttributedPointCloud>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asr_msgs-msg:elements-val is deprecated.  Use asr_msgs-msg:elements instead.")
  (elements m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AsrAttributedPointCloud>) ostream)
  "Serializes a message object of type '<AsrAttributedPointCloud>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'elements))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'elements))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AsrAttributedPointCloud>) istream)
  "Deserializes a message object of type '<AsrAttributedPointCloud>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'elements) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'elements)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'asr_msgs-msg:AsrAttributedPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AsrAttributedPointCloud>)))
  "Returns string type for a message object of type '<AsrAttributedPointCloud>"
  "asr_msgs/AsrAttributedPointCloud")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AsrAttributedPointCloud)))
  "Returns string type for a message object of type 'AsrAttributedPointCloud"
  "asr_msgs/AsrAttributedPointCloud")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AsrAttributedPointCloud>)))
  "Returns md5sum for a message object of type '<AsrAttributedPointCloud>"
  "f5f5fc6c0891d9c31a22ae8e14d66006")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AsrAttributedPointCloud)))
  "Returns md5sum for a message object of type 'AsrAttributedPointCloud"
  "f5f5fc6c0891d9c31a22ae8e14d66006")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AsrAttributedPointCloud>)))
  "Returns full string definition for message of type '<AsrAttributedPointCloud>"
  (cl:format cl:nil "# Copyright (c) 2016, Kleinert Daniel, Meissner Pascal, Yi Xie~%# All rights reserved.~%#~%# Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:~%#~%# 1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.~%#~%# 2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other ~%# materials provided with the distribution.~%#~%# 3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific # prior written permission.~%#~%# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED ~%# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, ~%# INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR # PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) # ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.~%~%#When used by pose_prediction: Cloud of estimates (stripped AsrObjects) of object poses for potentially different objects.~%AsrAttributedPoint[] elements~%================================================================================~%MSG: asr_msgs/AsrAttributedPoint~%# Copyright (c) 2016, Kleinert Daniel, Meissner Pascal, Yi Xie~%# All rights reserved.~%#~%# Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:~%#~%# 1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.~%#~%# 2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other ~%# materials provided with the distribution.~%#~%# 3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific # prior written permission.~%#~%# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED ~%# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, ~%# INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR # PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) # ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.~%~%~%#Output of pose_prediction: Asr object, reduced to a single pose estimate without uncertainty.~%geometry_msgs/Pose pose~%string type~%string identifier~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AsrAttributedPointCloud)))
  "Returns full string definition for message of type 'AsrAttributedPointCloud"
  (cl:format cl:nil "# Copyright (c) 2016, Kleinert Daniel, Meissner Pascal, Yi Xie~%# All rights reserved.~%#~%# Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:~%#~%# 1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.~%#~%# 2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other ~%# materials provided with the distribution.~%#~%# 3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific # prior written permission.~%#~%# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED ~%# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, ~%# INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR # PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) # ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.~%~%#When used by pose_prediction: Cloud of estimates (stripped AsrObjects) of object poses for potentially different objects.~%AsrAttributedPoint[] elements~%================================================================================~%MSG: asr_msgs/AsrAttributedPoint~%# Copyright (c) 2016, Kleinert Daniel, Meissner Pascal, Yi Xie~%# All rights reserved.~%#~%# Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:~%#~%# 1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.~%#~%# 2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other ~%# materials provided with the distribution.~%#~%# 3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific # prior written permission.~%#~%# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED ~%# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, ~%# INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR # PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) # ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.~%~%~%#Output of pose_prediction: Asr object, reduced to a single pose estimate without uncertainty.~%geometry_msgs/Pose pose~%string type~%string identifier~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AsrAttributedPointCloud>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'elements) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AsrAttributedPointCloud>))
  "Converts a ROS message object to a list"
  (cl:list 'AsrAttributedPointCloud
    (cl:cons ':elements (elements msg))
))
