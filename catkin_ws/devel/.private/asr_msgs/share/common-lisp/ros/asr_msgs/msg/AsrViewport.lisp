; Auto-generated. Do not edit!


(cl:in-package asr_msgs-msg)


;//! \htmlinclude AsrViewport.msg.html

(cl:defclass <AsrViewport> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (object_type_name_list
    :reader object_type_name_list
    :initarg :object_type_name_list
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (fovx
    :reader fovx
    :initarg :fovx
    :type cl:float
    :initform 0.0)
   (fovy
    :reader fovy
    :initarg :fovy
    :type cl:float
    :initform 0.0)
   (ncp
    :reader ncp
    :initarg :ncp
    :type cl:float
    :initform 0.0)
   (fcp
    :reader fcp
    :initarg :fcp
    :type cl:float
    :initform 0.0))
)

(cl:defclass AsrViewport (<AsrViewport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AsrViewport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AsrViewport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name asr_msgs-msg:<AsrViewport> is deprecated: use asr_msgs-msg:AsrViewport instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <AsrViewport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asr_msgs-msg:pose-val is deprecated.  Use asr_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'object_type_name_list-val :lambda-list '(m))
(cl:defmethod object_type_name_list-val ((m <AsrViewport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asr_msgs-msg:object_type_name_list-val is deprecated.  Use asr_msgs-msg:object_type_name_list instead.")
  (object_type_name_list m))

(cl:ensure-generic-function 'fovx-val :lambda-list '(m))
(cl:defmethod fovx-val ((m <AsrViewport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asr_msgs-msg:fovx-val is deprecated.  Use asr_msgs-msg:fovx instead.")
  (fovx m))

(cl:ensure-generic-function 'fovy-val :lambda-list '(m))
(cl:defmethod fovy-val ((m <AsrViewport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asr_msgs-msg:fovy-val is deprecated.  Use asr_msgs-msg:fovy instead.")
  (fovy m))

(cl:ensure-generic-function 'ncp-val :lambda-list '(m))
(cl:defmethod ncp-val ((m <AsrViewport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asr_msgs-msg:ncp-val is deprecated.  Use asr_msgs-msg:ncp instead.")
  (ncp m))

(cl:ensure-generic-function 'fcp-val :lambda-list '(m))
(cl:defmethod fcp-val ((m <AsrViewport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asr_msgs-msg:fcp-val is deprecated.  Use asr_msgs-msg:fcp instead.")
  (fcp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AsrViewport>) ostream)
  "Serializes a message object of type '<AsrViewport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'object_type_name_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'object_type_name_list))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fovx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fovy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ncp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fcp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AsrViewport>) istream)
  "Deserializes a message object of type '<AsrViewport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'object_type_name_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'object_type_name_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fovx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fovy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ncp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fcp) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AsrViewport>)))
  "Returns string type for a message object of type '<AsrViewport>"
  "asr_msgs/AsrViewport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AsrViewport)))
  "Returns string type for a message object of type 'AsrViewport"
  "asr_msgs/AsrViewport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AsrViewport>)))
  "Returns md5sum for a message object of type '<AsrViewport>"
  "f3babdea0fb223c434b4147047d0da4b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AsrViewport)))
  "Returns md5sum for a message object of type 'AsrViewport"
  "f3babdea0fb223c434b4147047d0da4b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AsrViewport>)))
  "Returns full string definition for message of type '<AsrViewport>"
  (cl:format cl:nil "# Copyright (c) 2016, Kleinert Daniel, Meissner Pascal, Yi Xie~%# All rights reserved.~%#~%# Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:~%#~%# 1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.~%#~%# 2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other ~%# materials provided with the distribution.~%#~%# 3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific # prior written permission.~%#~%# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED ~%# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, ~%# INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR # PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) # ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.~%~%#Gotten by state_machine: Camera viewport that has been searched (in reality by the robot) for a set of objects of given types.~%# the viewport pose~%geometry_msgs/Pose pose~%# list of object types searched in the viewport~%string[] object_type_name_list~%~%# Parameters of the viewport~%float32 fovx~%float32 fovy~%float32 ncp~%float32 fcp~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AsrViewport)))
  "Returns full string definition for message of type 'AsrViewport"
  (cl:format cl:nil "# Copyright (c) 2016, Kleinert Daniel, Meissner Pascal, Yi Xie~%# All rights reserved.~%#~%# Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:~%#~%# 1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.~%#~%# 2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other ~%# materials provided with the distribution.~%#~%# 3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific # prior written permission.~%#~%# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED ~%# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, ~%# INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR # PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) # ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.~%~%#Gotten by state_machine: Camera viewport that has been searched (in reality by the robot) for a set of objects of given types.~%# the viewport pose~%geometry_msgs/Pose pose~%# list of object types searched in the viewport~%string[] object_type_name_list~%~%# Parameters of the viewport~%float32 fovx~%float32 fovy~%float32 ncp~%float32 fcp~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AsrViewport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'object_type_name_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AsrViewport>))
  "Converts a ROS message object to a list"
  (cl:list 'AsrViewport
    (cl:cons ':pose (pose msg))
    (cl:cons ':object_type_name_list (object_type_name_list msg))
    (cl:cons ':fovx (fovx msg))
    (cl:cons ':fovy (fovy msg))
    (cl:cons ':ncp (ncp msg))
    (cl:cons ':fcp (fcp msg))
))
