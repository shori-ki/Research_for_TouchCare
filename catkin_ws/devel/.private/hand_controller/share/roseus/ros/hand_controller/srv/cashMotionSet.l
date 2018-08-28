;; Auto-generated. Do not edit!


(when (boundp 'hand_controller::cashMotionSet)
  (if (not (find-package "HAND_CONTROLLER"))
    (make-package "HAND_CONTROLLER"))
  (shadow 'cashMotionSet (find-package "HAND_CONTROLLER")))
(unless (find-package "HAND_CONTROLLER::CASHMOTIONSET")
  (make-package "HAND_CONTROLLER::CASHMOTIONSET"))
(unless (find-package "HAND_CONTROLLER::CASHMOTIONSETREQUEST")
  (make-package "HAND_CONTROLLER::CASHMOTIONSETREQUEST"))
(unless (find-package "HAND_CONTROLLER::CASHMOTIONSETRESPONSE")
  (make-package "HAND_CONTROLLER::CASHMOTIONSETRESPONSE"))

(in-package "ROS")





(defclass hand_controller::cashMotionSetRequest
  :super ros::object
  :slots (_repetitions _set _t_move _t_wait ))

(defmethod hand_controller::cashMotionSetRequest
  (:init
   (&key
    ((:repetitions __repetitions) 0)
    ((:set __set) 0)
    ((:t_move __t_move) 0)
    ((:t_wait __t_wait) 0)
    )
   (send-super :init)
   (setq _repetitions (round __repetitions))
   (setq _set (round __set))
   (setq _t_move (round __t_move))
   (setq _t_wait (round __t_wait))
   self)
  (:repetitions
   (&optional __repetitions)
   (if __repetitions (setq _repetitions __repetitions)) _repetitions)
  (:set
   (&optional __set)
   (if __set (setq _set __set)) _set)
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
    ;; int16 _set
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
     ;; int16 _set
       (write-word _set s)
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
   ;; int16 _set
     (setq _set (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _t_move
     (setq _t_move (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _t_wait
     (setq _t_wait (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass hand_controller::cashMotionSetResponse
  :super ros::object
  :slots ())

(defmethod hand_controller::cashMotionSetResponse
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

(defclass hand_controller::cashMotionSet
  :super ros::object
  :slots ())

(setf (get hand_controller::cashMotionSet :md5sum-) "109cc6351a2b407de68db394282f6650")
(setf (get hand_controller::cashMotionSet :datatype-) "hand_controller/cashMotionSet")
(setf (get hand_controller::cashMotionSet :request) hand_controller::cashMotionSetRequest)
(setf (get hand_controller::cashMotionSet :response) hand_controller::cashMotionSetResponse)

(defmethod hand_controller::cashMotionSetRequest
  (:response () (instance hand_controller::cashMotionSetResponse :init)))

(setf (get hand_controller::cashMotionSetRequest :md5sum-) "109cc6351a2b407de68db394282f6650")
(setf (get hand_controller::cashMotionSetRequest :datatype-) "hand_controller/cashMotionSetRequest")
(setf (get hand_controller::cashMotionSetRequest :definition-)
      "uint16 repetitions
int16 set
int16 t_move
int16 t_wait
---

")

(setf (get hand_controller::cashMotionSetResponse :md5sum-) "109cc6351a2b407de68db394282f6650")
(setf (get hand_controller::cashMotionSetResponse :datatype-) "hand_controller/cashMotionSetResponse")
(setf (get hand_controller::cashMotionSetResponse :definition-)
      "uint16 repetitions
int16 set
int16 t_move
int16 t_wait
---

")



(provide :hand_controller/cashMotionSet "109cc6351a2b407de68db394282f6650")


