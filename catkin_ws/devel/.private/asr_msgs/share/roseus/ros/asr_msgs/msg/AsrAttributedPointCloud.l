;; Auto-generated. Do not edit!


(when (boundp 'asr_msgs::AsrAttributedPointCloud)
  (if (not (find-package "ASR_MSGS"))
    (make-package "ASR_MSGS"))
  (shadow 'AsrAttributedPointCloud (find-package "ASR_MSGS")))
(unless (find-package "ASR_MSGS::ASRATTRIBUTEDPOINTCLOUD")
  (make-package "ASR_MSGS::ASRATTRIBUTEDPOINTCLOUD"))

(in-package "ROS")
;;//! \htmlinclude AsrAttributedPointCloud.msg.html


(defclass asr_msgs::AsrAttributedPointCloud
  :super ros::object
  :slots (_elements ))

(defmethod asr_msgs::AsrAttributedPointCloud
  (:init
   (&key
    ((:elements __elements) (let (r) (dotimes (i 0) (push (instance asr_msgs::AsrAttributedPoint :init) r)) r))
    )
   (send-super :init)
   (setq _elements __elements)
   self)
  (:elements
   (&rest __elements)
   (if (keywordp (car __elements))
       (send* _elements __elements)
     (progn
       (if __elements (setq _elements (car __elements)))
       _elements)))
  (:serialization-length
   ()
   (+
    ;; asr_msgs/AsrAttributedPoint[] _elements
    (apply #'+ (send-all _elements :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; asr_msgs/AsrAttributedPoint[] _elements
     (write-long (length _elements) s)
     (dolist (elem _elements)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; asr_msgs/AsrAttributedPoint[] _elements
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _elements (let (r) (dotimes (i n) (push (instance asr_msgs::AsrAttributedPoint :init) r)) r))
     (dolist (elem- _elements)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get asr_msgs::AsrAttributedPointCloud :md5sum-) "f5f5fc6c0891d9c31a22ae8e14d66006")
(setf (get asr_msgs::AsrAttributedPointCloud :datatype-) "asr_msgs/AsrAttributedPointCloud")
(setf (get asr_msgs::AsrAttributedPointCloud :definition-)
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
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED 
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

")



(provide :asr_msgs/AsrAttributedPointCloud "f5f5fc6c0891d9c31a22ae8e14d66006")


