;; Auto-generated. Do not edit!


(when (boundp 'hand_controller::GraspWithForce)
  (if (not (find-package "HAND_CONTROLLER"))
    (make-package "HAND_CONTROLLER"))
  (shadow 'GraspWithForce (find-package "HAND_CONTROLLER")))
(unless (find-package "HAND_CONTROLLER::GRASPWITHFORCE")
  (make-package "HAND_CONTROLLER::GRASPWITHFORCE"))
(unless (find-package "HAND_CONTROLLER::GRASPWITHFORCEREQUEST")
  (make-package "HAND_CONTROLLER::GRASPWITHFORCEREQUEST"))
(unless (find-package "HAND_CONTROLLER::GRASPWITHFORCERESPONSE")
  (make-package "HAND_CONTROLLER::GRASPWITHFORCERESPONSE"))

(in-package "ROS")





(defclass hand_controller::GraspWithForceRequest
  :super ros::object
  :slots (_graspforce ))

(defmethod hand_controller::GraspWithForceRequest
  (:init
   (&key
    ((:graspforce __graspforce) 0)
    )
   (send-super :init)
   (setq _graspforce (round __graspforce))
   self)
  (:graspforce
   (&optional __graspforce)
   (if __graspforce (setq _graspforce __graspforce)) _graspforce)
  (:serialization-length
   ()
   (+
    ;; int16 _graspforce
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _graspforce
       (write-word _graspforce s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _graspforce
     (setq _graspforce (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass hand_controller::GraspWithForceResponse
  :super ros::object
  :slots ())

(defmethod hand_controller::GraspWithForceResponse
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

(defclass hand_controller::GraspWithForce
  :super ros::object
  :slots ())

(setf (get hand_controller::GraspWithForce :md5sum-) "6b622b99eb46c5f82062546c298013a7")
(setf (get hand_controller::GraspWithForce :datatype-) "hand_controller/GraspWithForce")
(setf (get hand_controller::GraspWithForce :request) hand_controller::GraspWithForceRequest)
(setf (get hand_controller::GraspWithForce :response) hand_controller::GraspWithForceResponse)

(defmethod hand_controller::GraspWithForceRequest
  (:response () (instance hand_controller::GraspWithForceResponse :init)))

(setf (get hand_controller::GraspWithForceRequest :md5sum-) "6b622b99eb46c5f82062546c298013a7")
(setf (get hand_controller::GraspWithForceRequest :datatype-) "hand_controller/GraspWithForceRequest")
(setf (get hand_controller::GraspWithForceRequest :definition-)
      "int16 graspforce
---

")

(setf (get hand_controller::GraspWithForceResponse :md5sum-) "6b622b99eb46c5f82062546c298013a7")
(setf (get hand_controller::GraspWithForceResponse :datatype-) "hand_controller/GraspWithForceResponse")
(setf (get hand_controller::GraspWithForceResponse :definition-)
      "int16 graspforce
---

")



(provide :hand_controller/GraspWithForce "6b622b99eb46c5f82062546c298013a7")


