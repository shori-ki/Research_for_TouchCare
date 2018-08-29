;; Auto-generated. Do not edit!


(when (boundp 'asr_msgs::AsrObject)
  (if (not (find-package "ASR_MSGS"))
    (make-package "ASR_MSGS"))
  (shadow 'AsrObject (find-package "ASR_MSGS")))
(unless (find-package "ASR_MSGS::ASROBJECT")
  (make-package "ASR_MSGS::ASROBJECT"))

(in-package "ROS")
;;//! \htmlinclude AsrObject.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass asr_msgs::AsrObject
  :super ros::object
  :slots (_header _providedBy _sampledPoses _boundingBox _sizeConfidence _colorName _color _type _typeConfidence _identifier _meshResourcePath ))

(defmethod asr_msgs::AsrObject
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:providedBy __providedBy) "")
    ((:sampledPoses __sampledPoses) (let (r) (dotimes (i 0) (push (instance geometry_msgs::PoseWithCovariance :init) r)) r))
    ((:boundingBox __boundingBox) (let (r) (dotimes (i 8) (push (instance geometry_msgs::Point :init) r)) r))
    ((:sizeConfidence __sizeConfidence) 0.0)
    ((:colorName __colorName) "")
    ((:color __color) (instance std_msgs::ColorRGBA :init))
    ((:type __type) "")
    ((:typeConfidence __typeConfidence) 0.0)
    ((:identifier __identifier) "")
    ((:meshResourcePath __meshResourcePath) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _providedBy (string __providedBy))
   (setq _sampledPoses __sampledPoses)
   (setq _boundingBox __boundingBox)
   (setq _sizeConfidence (float __sizeConfidence))
   (setq _colorName (string __colorName))
   (setq _color __color)
   (setq _type (string __type))
   (setq _typeConfidence (float __typeConfidence))
   (setq _identifier (string __identifier))
   (setq _meshResourcePath (string __meshResourcePath))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:providedBy
   (&optional __providedBy)
   (if __providedBy (setq _providedBy __providedBy)) _providedBy)
  (:sampledPoses
   (&rest __sampledPoses)
   (if (keywordp (car __sampledPoses))
       (send* _sampledPoses __sampledPoses)
     (progn
       (if __sampledPoses (setq _sampledPoses (car __sampledPoses)))
       _sampledPoses)))
  (:boundingBox
   (&rest __boundingBox)
   (if (keywordp (car __boundingBox))
       (send* _boundingBox __boundingBox)
     (progn
       (if __boundingBox (setq _boundingBox (car __boundingBox)))
       _boundingBox)))
  (:sizeConfidence
   (&optional __sizeConfidence)
   (if __sizeConfidence (setq _sizeConfidence __sizeConfidence)) _sizeConfidence)
  (:colorName
   (&optional __colorName)
   (if __colorName (setq _colorName __colorName)) _colorName)
  (:color
   (&rest __color)
   (if (keywordp (car __color))
       (send* _color __color)
     (progn
       (if __color (setq _color (car __color)))
       _color)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:typeConfidence
   (&optional __typeConfidence)
   (if __typeConfidence (setq _typeConfidence __typeConfidence)) _typeConfidence)
  (:identifier
   (&optional __identifier)
   (if __identifier (setq _identifier __identifier)) _identifier)
  (:meshResourcePath
   (&optional __meshResourcePath)
   (if __meshResourcePath (setq _meshResourcePath __meshResourcePath)) _meshResourcePath)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _providedBy
    4 (length _providedBy)
    ;; geometry_msgs/PoseWithCovariance[] _sampledPoses
    (apply #'+ (send-all _sampledPoses :serialization-length)) 4
    ;; geometry_msgs/Point[8] _boundingBox
    (apply #'+ (send-all _boundingBox :serialization-length))
    ;; float64 _sizeConfidence
    8
    ;; string _colorName
    4 (length _colorName)
    ;; std_msgs/ColorRGBA _color
    (send _color :serialization-length)
    ;; string _type
    4 (length _type)
    ;; float64 _typeConfidence
    8
    ;; string _identifier
    4 (length _identifier)
    ;; string _meshResourcePath
    4 (length _meshResourcePath)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _providedBy
       (write-long (length _providedBy) s) (princ _providedBy s)
     ;; geometry_msgs/PoseWithCovariance[] _sampledPoses
     (write-long (length _sampledPoses) s)
     (dolist (elem _sampledPoses)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point[8] _boundingBox
     (dolist (elem _boundingBox)
       (send elem :serialize s)
       )
     ;; float64 _sizeConfidence
       (sys::poke _sizeConfidence (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _colorName
       (write-long (length _colorName) s) (princ _colorName s)
     ;; std_msgs/ColorRGBA _color
       (send _color :serialize s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; float64 _typeConfidence
       (sys::poke _typeConfidence (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _identifier
       (write-long (length _identifier) s) (princ _identifier s)
     ;; string _meshResourcePath
       (write-long (length _meshResourcePath) s) (princ _meshResourcePath s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _providedBy
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _providedBy (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseWithCovariance[] _sampledPoses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sampledPoses (let (r) (dotimes (i n) (push (instance geometry_msgs::PoseWithCovariance :init) r)) r))
     (dolist (elem- _sampledPoses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point[8] _boundingBox
   (dotimes (i 8)
     (send (elt _boundingBox i) :deserialize buf ptr-) (incf ptr- (send (elt _boundingBox i) :serialization-length))
     )
   ;; float64 _sizeConfidence
     (setq _sizeConfidence (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _colorName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _colorName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; std_msgs/ColorRGBA _color
     (send _color :deserialize buf ptr-) (incf ptr- (send _color :serialization-length))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _typeConfidence
     (setq _typeConfidence (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _identifier
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _identifier (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _meshResourcePath
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _meshResourcePath (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get asr_msgs::AsrObject :md5sum-) "1f19dbc1869e696978e9b9ab24bfc085")
(setf (get asr_msgs::AsrObject :datatype-) "asr_msgs/AsrObject")
(setf (get asr_msgs::AsrObject :definition-)
      "# Copyright (c) 2016, Kleinert Daniel, Meissner Pascal, Yi Xie
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
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED 
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

")



(provide :asr_msgs/AsrObject "1f19dbc1869e696978e9b9ab24bfc085")


