;; Auto-generated. Do not edit!


(when (boundp 'asr_msgs::AsrViewport)
  (if (not (find-package "ASR_MSGS"))
    (make-package "ASR_MSGS"))
  (shadow 'AsrViewport (find-package "ASR_MSGS")))
(unless (find-package "ASR_MSGS::ASRVIEWPORT")
  (make-package "ASR_MSGS::ASRVIEWPORT"))

(in-package "ROS")
;;//! \htmlinclude AsrViewport.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass asr_msgs::AsrViewport
  :super ros::object
  :slots (_pose _object_type_name_list _fovx _fovy _ncp _fcp ))

(defmethod asr_msgs::AsrViewport
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:object_type_name_list __object_type_name_list) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:fovx __fovx) 0.0)
    ((:fovy __fovy) 0.0)
    ((:ncp __ncp) 0.0)
    ((:fcp __fcp) 0.0)
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _object_type_name_list __object_type_name_list)
   (setq _fovx (float __fovx))
   (setq _fovy (float __fovy))
   (setq _ncp (float __ncp))
   (setq _fcp (float __fcp))
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:object_type_name_list
   (&optional __object_type_name_list)
   (if __object_type_name_list (setq _object_type_name_list __object_type_name_list)) _object_type_name_list)
  (:fovx
   (&optional __fovx)
   (if __fovx (setq _fovx __fovx)) _fovx)
  (:fovy
   (&optional __fovy)
   (if __fovy (setq _fovy __fovy)) _fovy)
  (:ncp
   (&optional __ncp)
   (if __ncp (setq _ncp __ncp)) _ncp)
  (:fcp
   (&optional __fcp)
   (if __fcp (setq _fcp __fcp)) _fcp)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; string[] _object_type_name_list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _object_type_name_list)) 4
    ;; float32 _fovx
    4
    ;; float32 _fovy
    4
    ;; float32 _ncp
    4
    ;; float32 _fcp
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; string[] _object_type_name_list
     (write-long (length _object_type_name_list) s)
     (dolist (elem _object_type_name_list)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float32 _fovx
       (sys::poke _fovx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fovy
       (sys::poke _fovy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ncp
       (sys::poke _ncp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fcp
       (sys::poke _fcp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; string[] _object_type_name_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _object_type_name_list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _object_type_name_list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float32 _fovx
     (setq _fovx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fovy
     (setq _fovy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ncp
     (setq _ncp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fcp
     (setq _fcp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get asr_msgs::AsrViewport :md5sum-) "f3babdea0fb223c434b4147047d0da4b")
(setf (get asr_msgs::AsrViewport :datatype-) "asr_msgs/AsrViewport")
(setf (get asr_msgs::AsrViewport :definition-)
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

")



(provide :asr_msgs/AsrViewport "f3babdea0fb223c434b4147047d0da4b")


