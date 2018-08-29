;; Auto-generated. Do not edit!


(when (boundp 'asr_msgs::AsrGlove)
  (if (not (find-package "ASR_MSGS"))
    (make-package "ASR_MSGS"))
  (shadow 'AsrGlove (find-package "ASR_MSGS")))
(unless (find-package "ASR_MSGS::ASRGLOVE")
  (make-package "ASR_MSGS::ASRGLOVE"))

(in-package "ROS")
;;//! \htmlinclude AsrGlove.msg.html


(defclass asr_msgs::AsrGlove
  :super ros::object
  :slots (_id _data ))

(defmethod asr_msgs::AsrGlove
  (:init
   (&key
    ((:id __id) "")
    ((:data __data) (make-array 22 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _data __data)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; float32[22] _data
    (* 4    22)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; float32[22] _data
     (dotimes (i 22)
       (sys::poke (elt _data i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[22] _data
   (dotimes (i (length _data))
     (setf (elt _data i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get asr_msgs::AsrGlove :md5sum-) "997d78591059a24e56073b1d0e050649")
(setf (get asr_msgs::AsrGlove :datatype-) "asr_msgs/AsrGlove")
(setf (get asr_msgs::AsrGlove :definition-)
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

string id
float32[22] data
")



(provide :asr_msgs/AsrGlove "997d78591059a24e56073b1d0e050649")


