;; Auto-generated. Do not edit!


(when (boundp 'hand_controller::rubbingWithForce)
  (if (not (find-package "HAND_CONTROLLER"))
    (make-package "HAND_CONTROLLER"))
  (shadow 'rubbingWithForce (find-package "HAND_CONTROLLER")))
(unless (find-package "HAND_CONTROLLER::RUBBINGWITHFORCE")
  (make-package "HAND_CONTROLLER::RUBBINGWITHFORCE"))
(unless (find-package "HAND_CONTROLLER::RUBBINGWITHFORCEREQUEST")
  (make-package "HAND_CONTROLLER::RUBBINGWITHFORCEREQUEST"))
(unless (find-package "HAND_CONTROLLER::RUBBINGWITHFORCERESPONSE")
  (make-package "HAND_CONTROLLER::RUBBINGWITHFORCERESPONSE"))

(in-package "ROS")





(defclass hand_controller::rubbingWithForceRequest
  :super ros::object
  :slots (_rubbingforce ))

(defmethod hand_controller::rubbingWithForceRequest
  (:init
   (&key
    ((:rubbingforce __rubbingforce) 0)
    )
   (send-super :init)
   (setq _rubbingforce (round __rubbingforce))
   self)
  (:rubbingforce
   (&optional __rubbingforce)
   (if __rubbingforce (setq _rubbingforce __rubbingforce)) _rubbingforce)
  (:serialization-length
   ()
   (+
    ;; int16 _rubbingforce
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _rubbingforce
       (write-word _rubbingforce s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _rubbingforce
     (setq _rubbingforce (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass hand_controller::rubbingWithForceResponse
  :super ros::object
  :slots ())

(defmethod hand_controller::rubbingWithForceResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass hand_controller::rubbingWithForce
  :super ros::object
  :slots ())

(setf (get hand_controller::rubbingWithForce :md5sum-) "a7c598bb551ac19d777f4b6aceec6663")
(setf (get hand_controller::rubbingWithForce :datatype-) "hand_controller/rubbingWithForce")
(setf (get hand_controller::rubbingWithForce :request) hand_controller::rubbingWithForceRequest)
(setf (get hand_controller::rubbingWithForce :response) hand_controller::rubbingWithForceResponse)

(defmethod hand_controller::rubbingWithForceRequest
  (:response () (instance hand_controller::rubbingWithForceResponse :init)))

(setf (get hand_controller::rubbingWithForceRequest :md5sum-) "a7c598bb551ac19d777f4b6aceec6663")
(setf (get hand_controller::rubbingWithForceRequest :datatype-) "hand_controller/rubbingWithForceRequest")
(setf (get hand_controller::rubbingWithForceRequest :definition-)
      "int16 rubbingforce
---
")

(setf (get hand_controller::rubbingWithForceResponse :md5sum-) "a7c598bb551ac19d777f4b6aceec6663")
(setf (get hand_controller::rubbingWithForceResponse :datatype-) "hand_controller/rubbingWithForceResponse")
(setf (get hand_controller::rubbingWithForceResponse :definition-)
      "int16 rubbingforce
---
")



(provide :hand_controller/rubbingWithForce "a7c598bb551ac19d777f4b6aceec6663")


