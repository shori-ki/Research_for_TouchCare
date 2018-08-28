;; Auto-generated. Do not edit!


(when (boundp 'hand_controller::stopRecording)
  (if (not (find-package "HAND_CONTROLLER"))
    (make-package "HAND_CONTROLLER"))
  (shadow 'stopRecording (find-package "HAND_CONTROLLER")))
(unless (find-package "HAND_CONTROLLER::STOPRECORDING")
  (make-package "HAND_CONTROLLER::STOPRECORDING"))
(unless (find-package "HAND_CONTROLLER::STOPRECORDINGREQUEST")
  (make-package "HAND_CONTROLLER::STOPRECORDINGREQUEST"))
(unless (find-package "HAND_CONTROLLER::STOPRECORDINGRESPONSE")
  (make-package "HAND_CONTROLLER::STOPRECORDINGRESPONSE"))

(in-package "ROS")





(defclass hand_controller::stopRecordingRequest
  :super ros::object
  :slots (_stopRecording ))

(defmethod hand_controller::stopRecordingRequest
  (:init
   (&key
    ((:stopRecording __stopRecording) nil)
    )
   (send-super :init)
   (setq _stopRecording __stopRecording)
   self)
  (:stopRecording
   (&optional __stopRecording)
   (if __stopRecording (setq _stopRecording __stopRecording)) _stopRecording)
  (:serialization-length
   ()
   (+
    ;; bool _stopRecording
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _stopRecording
       (if _stopRecording (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _stopRecording
     (setq _stopRecording (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass hand_controller::stopRecordingResponse
  :super ros::object
  :slots (_stopRecording ))

(defmethod hand_controller::stopRecordingResponse
  (:init
   (&key
    ((:stopRecording __stopRecording) nil)
    )
   (send-super :init)
   (setq _stopRecording __stopRecording)
   self)
  (:stopRecording
   (&optional __stopRecording)
   (if __stopRecording (setq _stopRecording __stopRecording)) _stopRecording)
  (:serialization-length
   ()
   (+
    ;; bool _stopRecording
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _stopRecording
       (if _stopRecording (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _stopRecording
     (setq _stopRecording (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass hand_controller::stopRecording
  :super ros::object
  :slots ())

(setf (get hand_controller::stopRecording :md5sum-) "f583eeb433b8e7ea4c20a3695d033c86")
(setf (get hand_controller::stopRecording :datatype-) "hand_controller/stopRecording")
(setf (get hand_controller::stopRecording :request) hand_controller::stopRecordingRequest)
(setf (get hand_controller::stopRecording :response) hand_controller::stopRecordingResponse)

(defmethod hand_controller::stopRecordingRequest
  (:response () (instance hand_controller::stopRecordingResponse :init)))

(setf (get hand_controller::stopRecordingRequest :md5sum-) "f583eeb433b8e7ea4c20a3695d033c86")
(setf (get hand_controller::stopRecordingRequest :datatype-) "hand_controller/stopRecordingRequest")
(setf (get hand_controller::stopRecordingRequest :definition-)
      "bool stopRecording
---
bool stopRecording
")

(setf (get hand_controller::stopRecordingResponse :md5sum-) "f583eeb433b8e7ea4c20a3695d033c86")
(setf (get hand_controller::stopRecordingResponse :datatype-) "hand_controller/stopRecordingResponse")
(setf (get hand_controller::stopRecordingResponse :definition-)
      "bool stopRecording
---
bool stopRecording
")



(provide :hand_controller/stopRecording "f583eeb433b8e7ea4c20a3695d033c86")


