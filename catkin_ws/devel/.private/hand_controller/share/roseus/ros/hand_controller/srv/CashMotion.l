;; Auto-generated. Do not edit!


(when (boundp 'hand_controller::CashMotion)
  (if (not (find-package "HAND_CONTROLLER"))
    (make-package "HAND_CONTROLLER"))
  (shadow 'CashMotion (find-package "HAND_CONTROLLER")))
(unless (find-package "HAND_CONTROLLER::CASHMOTION")
  (make-package "HAND_CONTROLLER::CASHMOTION"))
(unless (find-package "HAND_CONTROLLER::CASHMOTIONREQUEST")
  (make-package "HAND_CONTROLLER::CASHMOTIONREQUEST"))
(unless (find-package "HAND_CONTROLLER::CASHMOTIONRESPONSE")
  (make-package "HAND_CONTROLLER::CASHMOTIONRESPONSE"))

(in-package "ROS")





(defclass hand_controller::CashMotionRequest
  :super ros::object
  :slots (_repetitions _t_move _t_wait ))

(defmethod hand_controller::CashMotionRequest
  (:init
   (&key
    ((:repetitions __repetitions) 0)
    ((:t_move __t_move) 0)
    ((:t_wait __t_wait) 0)
    )
   (send-super :init)
   (setq _repetitions (round __repetitions))
   (setq _t_move (round __t_move))
   (setq _t_wait (round __t_wait))
   self)
  (:repetitions
   (&optional __repetitions)
   (if __repetitions (setq _repetitions __repetitions)) _repetitions)
  (:t_move
   (&optional __t_move)
   (if __t_move (setq _t_move __t_move)) _t_move)
  (:t_wait
   (&optional __t_wait)
   (if __t_wait (setq _t_wait __t_wait)) _t_wait)
  (:serialization-length
   ()
   (+
    ;; uint16 _repetitions
    2
    ;; int16 _t_move
    2
    ;; int16 _t_wait
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _repetitions
       (write-word _repetitions s)
     ;; int16 _t_move
       (write-word _t_move s)
     ;; int16 _t_wait
       (write-word _t_wait s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _repetitions
     (setq _repetitions (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _t_move
     (setq _t_move (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _t_wait
     (setq _t_wait (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass hand_controller::CashMotionResponse
  :super ros::object
  :slots ())

(defmethod hand_controller::CashMotionResponse
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

(defclass hand_controller::CashMotion
  :super ros::object
  :slots ())

(setf (get hand_controller::CashMotion :md5sum-) "58a33dc31f93f315437ec032733c7477")
(setf (get hand_controller::CashMotion :datatype-) "hand_controller/CashMotion")
(setf (get hand_controller::CashMotion :request) hand_controller::CashMotionRequest)
(setf (get hand_controller::CashMotion :response) hand_controller::CashMotionResponse)

(defmethod hand_controller::CashMotionRequest
  (:response () (instance hand_controller::CashMotionResponse :init)))

(setf (get hand_controller::CashMotionRequest :md5sum-) "58a33dc31f93f315437ec032733c7477")
(setf (get hand_controller::CashMotionRequest :datatype-) "hand_controller/CashMotionRequest")
(setf (get hand_controller::CashMotionRequest :definition-)
      "uint16 repetitions
int16 t_move
int16 t_wait
---

")

(setf (get hand_controller::CashMotionResponse :md5sum-) "58a33dc31f93f315437ec032733c7477")
(setf (get hand_controller::CashMotionResponse :datatype-) "hand_controller/CashMotionResponse")
(setf (get hand_controller::CashMotionResponse :definition-)
      "uint16 repetitions
int16 t_move
int16 t_wait
---

")



(provide :hand_controller/CashMotion "58a33dc31f93f315437ec032733c7477")


