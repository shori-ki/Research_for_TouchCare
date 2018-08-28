;; Auto-generated. Do not edit!


(when (boundp 'hand_controller::RubbingMotion)
  (if (not (find-package "HAND_CONTROLLER"))
    (make-package "HAND_CONTROLLER"))
  (shadow 'RubbingMotion (find-package "HAND_CONTROLLER")))
(unless (find-package "HAND_CONTROLLER::RUBBINGMOTION")
  (make-package "HAND_CONTROLLER::RUBBINGMOTION"))
(unless (find-package "HAND_CONTROLLER::RUBBINGMOTIONREQUEST")
  (make-package "HAND_CONTROLLER::RUBBINGMOTIONREQUEST"))
(unless (find-package "HAND_CONTROLLER::RUBBINGMOTIONRESPONSE")
  (make-package "HAND_CONTROLLER::RUBBINGMOTIONRESPONSE"))

(in-package "ROS")





(defclass hand_controller::RubbingMotionRequest
  :super ros::object
  :slots (_rubbingmotionrepetitions ))

(defmethod hand_controller::RubbingMotionRequest
  (:init
   (&key
    ((:rubbingmotionrepetitions __rubbingmotionrepetitions) 0)
    )
   (send-super :init)
   (setq _rubbingmotionrepetitions (round __rubbingmotionrepetitions))
   self)
  (:rubbingmotionrepetitions
   (&optional __rubbingmotionrepetitions)
   (if __rubbingmotionrepetitions (setq _rubbingmotionrepetitions __rubbingmotionrepetitions)) _rubbingmotionrepetitions)
  (:serialization-length
   ()
   (+
    ;; uint16 _rubbingmotionrepetitions
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _rubbingmotionrepetitions
       (write-word _rubbingmotionrepetitions s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _rubbingmotionrepetitions
     (setq _rubbingmotionrepetitions (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass hand_controller::RubbingMotionResponse
  :super ros::object
  :slots ())

(defmethod hand_controller::RubbingMotionResponse
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

(defclass hand_controller::RubbingMotion
  :super ros::object
  :slots ())

(setf (get hand_controller::RubbingMotion :md5sum-) "558b361be41d47909cd85fcfff79812b")
(setf (get hand_controller::RubbingMotion :datatype-) "hand_controller/RubbingMotion")
(setf (get hand_controller::RubbingMotion :request) hand_controller::RubbingMotionRequest)
(setf (get hand_controller::RubbingMotion :response) hand_controller::RubbingMotionResponse)

(defmethod hand_controller::RubbingMotionRequest
  (:response () (instance hand_controller::RubbingMotionResponse :init)))

(setf (get hand_controller::RubbingMotionRequest :md5sum-) "558b361be41d47909cd85fcfff79812b")
(setf (get hand_controller::RubbingMotionRequest :datatype-) "hand_controller/RubbingMotionRequest")
(setf (get hand_controller::RubbingMotionRequest :definition-)
      "uint16 rubbingmotionrepetitions
---

")

(setf (get hand_controller::RubbingMotionResponse :md5sum-) "558b361be41d47909cd85fcfff79812b")
(setf (get hand_controller::RubbingMotionResponse :datatype-) "hand_controller/RubbingMotionResponse")
(setf (get hand_controller::RubbingMotionResponse :definition-)
      "uint16 rubbingmotionrepetitions
---

")



(provide :hand_controller/RubbingMotion "558b361be41d47909cd85fcfff79812b")


