;; Auto-generated. Do not edit!


(when (boundp 'hand_controller::recordFromNow)
  (if (not (find-package "HAND_CONTROLLER"))
    (make-package "HAND_CONTROLLER"))
  (shadow 'recordFromNow (find-package "HAND_CONTROLLER")))
(unless (find-package "HAND_CONTROLLER::RECORDFROMNOW")
  (make-package "HAND_CONTROLLER::RECORDFROMNOW"))
(unless (find-package "HAND_CONTROLLER::RECORDFROMNOWREQUEST")
  (make-package "HAND_CONTROLLER::RECORDFROMNOWREQUEST"))
(unless (find-package "HAND_CONTROLLER::RECORDFROMNOWRESPONSE")
  (make-package "HAND_CONTROLLER::RECORDFROMNOWRESPONSE"))

(in-package "ROS")





(defclass hand_controller::recordFromNowRequest
  :super ros::object
  :slots (_recordFromNow ))

(defmethod hand_controller::recordFromNowRequest
  (:init
   (&key
    ((:recordFromNow __recordFromNow) nil)
    )
   (send-super :init)
   (setq _recordFromNow __recordFromNow)
   self)
  (:recordFromNow
   (&optional __recordFromNow)
   (if __recordFromNow (setq _recordFromNow __recordFromNow)) _recordFromNow)
  (:serialization-length
   ()
   (+
    ;; bool _recordFromNow
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _recordFromNow
       (if _recordFromNow (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _recordFromNow
     (setq _recordFromNow (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass hand_controller::recordFromNowResponse
  :super ros::object
  :slots (_recordFromNow ))

(defmethod hand_controller::recordFromNowResponse
  (:init
   (&key
    ((:recordFromNow __recordFromNow) nil)
    )
   (send-super :init)
   (setq _recordFromNow __recordFromNow)
   self)
  (:recordFromNow
   (&optional __recordFromNow)
   (if __recordFromNow (setq _recordFromNow __recordFromNow)) _recordFromNow)
  (:serialization-length
   ()
   (+
    ;; bool _recordFromNow
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _recordFromNow
       (if _recordFromNow (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _recordFromNow
     (setq _recordFromNow (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass hand_controller::recordFromNow
  :super ros::object
  :slots ())

(setf (get hand_controller::recordFromNow :md5sum-) "a7a6eb955c6d382d4e09c68b1ae9adfc")
(setf (get hand_controller::recordFromNow :datatype-) "hand_controller/recordFromNow")
(setf (get hand_controller::recordFromNow :request) hand_controller::recordFromNowRequest)
(setf (get hand_controller::recordFromNow :response) hand_controller::recordFromNowResponse)

(defmethod hand_controller::recordFromNowRequest
  (:response () (instance hand_controller::recordFromNowResponse :init)))

(setf (get hand_controller::recordFromNowRequest :md5sum-) "a7a6eb955c6d382d4e09c68b1ae9adfc")
(setf (get hand_controller::recordFromNowRequest :datatype-) "hand_controller/recordFromNowRequest")
(setf (get hand_controller::recordFromNowRequest :definition-)
      "bool recordFromNow
---
bool recordFromNow
")

(setf (get hand_controller::recordFromNowResponse :md5sum-) "a7a6eb955c6d382d4e09c68b1ae9adfc")
(setf (get hand_controller::recordFromNowResponse :datatype-) "hand_controller/recordFromNowResponse")
(setf (get hand_controller::recordFromNowResponse :definition-)
      "bool recordFromNow
---
bool recordFromNow
")



(provide :hand_controller/recordFromNow "a7a6eb955c6d382d4e09c68b1ae9adfc")


