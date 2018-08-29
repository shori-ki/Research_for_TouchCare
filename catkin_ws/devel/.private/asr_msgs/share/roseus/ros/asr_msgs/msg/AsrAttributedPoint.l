;; Auto-generated. Do not edit!


(when (boundp 'asr_msgs::AsrAttributedPoint)
  (if (not (find-package "ASR_MSGS"))
    (make-package "ASR_MSGS"))
  (shadow 'AsrAttributedPoint (find-package "ASR_MSGS")))
(unless (find-package "ASR_MSGS::ASRATTRIBUTEDPOINT")
  (make-package "ASR_MSGS::ASRATTRIBUTEDPOINT"))

(in-package "ROS")
;;//! \htmlinclude AsrAttributedPoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass asr_msgs::AsrAttributedPoint
  :super ros::object
  :slots (_pose _type _identifier ))

(defmethod asr_msgs::AsrAttributedPoint
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:type __type) "")
    ((:identifier __identifier) "")
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _type (string __type))
   (setq _identifier (string __identifier))
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:identifier
   (&optional __identifier)
   (if __identifier (setq _identifier __identifier)) _identifier)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; string _type
    4 (length _type)
    ;; string _identifier
    4 (length _identifier)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string _identifier
       (write-long (length _identifier) s) (princ _identifier s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _identifier
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _identifier (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get asr_msgs::AsrAttributedPoint :md5sum-) "35720fb58023e4bf1b7de6ebd62a3d60")
(setf (get asr_msgs::AsrAttributedPoint :datatype-) "asr_msgs/AsrAttributedPoint")
(setf (get asr_msgs::AsrAttributedPoint :definition-)
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



(provide :asr_msgs/AsrAttributedPoint "35720fb58023e4bf1b7de6ebd62a3d60")


