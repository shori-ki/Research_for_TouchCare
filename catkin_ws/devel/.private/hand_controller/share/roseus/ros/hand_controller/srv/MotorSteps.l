;; Auto-generated. Do not edit!


(when (boundp 'hand_controller::MotorSteps)
  (if (not (find-package "HAND_CONTROLLER"))
    (make-package "HAND_CONTROLLER"))
  (shadow 'MotorSteps (find-package "HAND_CONTROLLER")))
(unless (find-package "HAND_CONTROLLER::MOTORSTEPS")
  (make-package "HAND_CONTROLLER::MOTORSTEPS"))
(unless (find-package "HAND_CONTROLLER::MOTORSTEPSREQUEST")
  (make-package "HAND_CONTROLLER::MOTORSTEPSREQUEST"))
(unless (find-package "HAND_CONTROLLER::MOTORSTEPSRESPONSE")
  (make-package "HAND_CONTROLLER::MOTORSTEPSRESPONSE"))

(in-package "ROS")





(defclass hand_controller::MotorStepsRequest
  :super ros::object
  :slots (_motorstep1 _motorstep2 ))

(defmethod hand_controller::MotorStepsRequest
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

(defclass hand_controller::MotorStepsResponse
  :super ros::object
  :slots (_motorstep1 _motorstep2 ))

(defmethod hand_controller::MotorStepsResponse
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

(defclass hand_controller::MotorSteps
  :super ros::object
  :slots ())

(setf (get hand_controller::MotorSteps :md5sum-) "323528af2fa6691dff3466f8e1db56ef")
(setf (get hand_controller::MotorSteps :datatype-) "hand_controller/MotorSteps")
(setf (get hand_controller::MotorSteps :request) hand_controller::MotorStepsRequest)
(setf (get hand_controller::MotorSteps :response) hand_controller::MotorStepsResponse)

(defmethod hand_controller::MotorStepsRequest
  (:response () (instance hand_controller::MotorStepsResponse :init)))

(setf (get hand_controller::MotorStepsRequest :md5sum-) "323528af2fa6691dff3466f8e1db56ef")
(setf (get hand_controller::MotorStepsRequest :datatype-) "hand_controller/MotorStepsRequest")
(setf (get hand_controller::MotorStepsRequest :definition-)
      "int16 motorstep1
int16 motorstep2
---
int16 motorstep1
int16 motorstep2

")

(setf (get hand_controller::MotorStepsResponse :md5sum-) "323528af2fa6691dff3466f8e1db56ef")
(setf (get hand_controller::MotorStepsResponse :datatype-) "hand_controller/MotorStepsResponse")
(setf (get hand_controller::MotorStepsResponse :definition-)
      "int16 motorstep1
int16 motorstep2
---
int16 motorstep1
int16 motorstep2

")



(provide :hand_controller/MotorSteps "323528af2fa6691dff3466f8e1db56ef")


