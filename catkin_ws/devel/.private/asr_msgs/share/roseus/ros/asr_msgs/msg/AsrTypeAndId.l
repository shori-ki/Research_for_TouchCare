;; Auto-generated. Do not edit!


(when (boundp 'asr_msgs::AsrTypeAndId)
  (if (not (find-package "ASR_MSGS"))
    (make-package "ASR_MSGS"))
  (shadow 'AsrTypeAndId (find-package "ASR_MSGS")))
(unless (find-package "ASR_MSGS::ASRTYPEANDID")
  (make-package "ASR_MSGS::ASRTYPEANDID"))

(in-package "ROS")
;;//! \htmlinclude AsrTypeAndId.msg.html


(defclass asr_msgs::AsrTypeAndId
  :super ros::object
  :slots (_type _identifier ))

(defmethod asr_msgs::AsrTypeAndId
  (:init
   (&key
    ((:type __type) "")
    ((:identifier __identifier) "")
    )
   (send-super :init)
   (setq _type (string __type))
   (setq _identifier (string __identifier))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:identifier
   (&optional __identifier)
   (if __identifier (setq _identifier __identifier)) _identifier)
  (:serialization-length
   ()
   (+
    ;; string _type
    4 (length _type)
    ;; string _identifier
    4 (length _identifier)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string _identifier
       (write-long (length _identifier) s) (princ _identifier s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _identifier
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _identifier (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get asr_msgs::AsrTypeAndId :md5sum-) "9c9cc2c7fbc29ffd68b4f34c5bcbfd2e")
(setf (get asr_msgs::AsrTypeAndId :datatype-) "asr_msgs/AsrTypeAndId")
(setf (get asr_msgs::AsrTypeAndId :definition-)
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

#Asr object message, reduced to type and identifier information.
string type
string identifier
")



(provide :asr_msgs/AsrTypeAndId "9c9cc2c7fbc29ffd68b4f34c5bcbfd2e")


