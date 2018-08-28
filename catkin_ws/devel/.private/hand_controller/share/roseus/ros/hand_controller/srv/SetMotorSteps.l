;; Auto-generated. Do not edit!


(when (boundp 'hand_controller::SetMotorSteps)
  (if (not (find-package "HAND_CONTROLLER"))
    (make-package "HAND_CONTROLLER"))
  (shadow 'SetMotorSteps (find-package "HAND_CONTROLLER")))
(unless (find-package "HAND_CONTROLLER::SETMOTORSTEPS")
  (make-package "HAND_CONTROLLER::SETMOTORSTEPS"))
(unless (find-package "HAND_CONTROLLER::SETMOTORSTEPSREQUEST")
  (make-package "HAND_CONTROLLER::SETMOTORSTEPSREQUEST"))
(unless (find-package "HAND_CONTROLLER::SETMOTORSTEPSRESPONSE")
  (make-package "HAND_CONTROLLER::SETMOTORSTEPSRESPONSE"))

(in-package "ROS")





(defclass hand_controller::SetMotorStepsRequest
  :super ros::object
  :slots (_motorstep1 _motorstep2 ))

(defmethod hand_controller::SetMotorStepsRequest
  (:init
   (&key
    ((:motorstep1 __motorstep1) 0)
    ((:motorstep2 __motorstep2) 0)
    )
   (send-super :init)
   (setq _motorstep1 (round __motorstep1))
   (setq _motorstep2 (round __motorstep2))
   self)
  (:motorstep1
   (&optional __motorstep1)
   (if __motorstep1 (setq _motorstep1 __motorstep1)) _motorstep1)
  (:motorstep2
   (&optional __motorstep2)
   (if __motorstep2 (setq _motorstep2 __motorstep2)) _motorstep2)
  (:serialization-length
   ()
   (+
    ;; int16 _motorstep1
    2
    ;; int16 _motorstep2
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _motorstep1
       (write-word _motorstep1 s)
     ;; int16 _motorstep2
       (write-word _motorstep2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _motorstep1
     (setq _motorstep1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _motorstep2
     (setq _motorstep2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass hand_controller::SetMotorStepsResponse
  :super ros::object
  :slots ())

(defmethod hand_controller::SetMotorStepsResponse
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

(defclass hand_controller::SetMotorSteps
  :super ros::object
  :slots ())

(setf (get hand_controller::SetMotorSteps :md5sum-) "5df53fa0fa1b84c4a7ebce9f68720f63")
(setf (get hand_controller::SetMotorSteps :datatype-) "hand_controller/SetMotorSteps")
(setf (get hand_controller::SetMotorSteps :request) hand_controller::SetMotorStepsRequest)
(setf (get hand_controller::SetMotorSteps :response) hand_controller::SetMotorStepsResponse)

(defmethod hand_controller::SetMotorStepsRequest
  (:response () (instance hand_controller::SetMotorStepsResponse :init)))

(setf (get hand_controller::SetMotorStepsRequest :md5sum-) "5df53fa0fa1b84c4a7ebce9f68720f63")
(setf (get hand_controller::SetMotorStepsRequest :datatype-) "hand_controller/SetMotorStepsRequest")
(setf (get hand_controller::SetMotorStepsRequest :definition-)
      "int16 motorstep1
int16 motorstep2
---

")

(setf (get hand_controller::SetMotorStepsResponse :md5sum-) "5df53fa0fa1b84c4a7ebce9f68720f63")
(setf (get hand_controller::SetMotorStepsResponse :datatype-) "hand_controller/SetMotorStepsResponse")
(setf (get hand_controller::SetMotorStepsResponse :definition-)
      "int16 motorstep1
int16 motorstep2
---

")



(provide :hand_controller/SetMotorSteps "5df53fa0fa1b84c4a7ebce9f68720f63")


