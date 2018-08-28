;; Auto-generated. Do not edit!


(when (boundp 'hand_controller::SetMotorAngles)
  (if (not (find-package "HAND_CONTROLLER"))
    (make-package "HAND_CONTROLLER"))
  (shadow 'SetMotorAngles (find-package "HAND_CONTROLLER")))
(unless (find-package "HAND_CONTROLLER::SETMOTORANGLES")
  (make-package "HAND_CONTROLLER::SETMOTORANGLES"))
(unless (find-package "HAND_CONTROLLER::SETMOTORANGLESREQUEST")
  (make-package "HAND_CONTROLLER::SETMOTORANGLESREQUEST"))
(unless (find-package "HAND_CONTROLLER::SETMOTORANGLESRESPONSE")
  (make-package "HAND_CONTROLLER::SETMOTORANGLESRESPONSE"))

(in-package "ROS")





(defclass hand_controller::SetMotorAnglesRequest
  :super ros::object
  :slots (_motorangle1 _motorangle2 ))

(defmethod hand_controller::SetMotorAnglesRequest
  (:init
   (&key
    ((:motorangle1 __motorangle1) 0)
    ((:motorangle2 __motorangle2) 0)
    )
   (send-super :init)
   (setq _motorangle1 (round __motorangle1))
   (setq _motorangle2 (round __motorangle2))
   self)
  (:motorangle1
   (&optional __motorangle1)
   (if __motorangle1 (setq _motorangle1 __motorangle1)) _motorangle1)
  (:motorangle2
   (&optional __motorangle2)
   (if __motorangle2 (setq _motorangle2 __motorangle2)) _motorangle2)
  (:serialization-length
   ()
   (+
    ;; int16 _motorangle1
    2
    ;; int16 _motorangle2
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _motorangle1
       (write-word _motorangle1 s)
     ;; int16 _motorangle2
       (write-word _motorangle2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _motorangle1
     (setq _motorangle1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _motorangle2
     (setq _motorangle2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass hand_controller::SetMotorAnglesResponse
  :super ros::object
  :slots ())

(defmethod hand_controller::SetMotorAnglesResponse
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

(defclass hand_controller::SetMotorAngles
  :super ros::object
  :slots ())

(setf (get hand_controller::SetMotorAngles :md5sum-) "985fd6b2c4a26cb7c36bfac8da43b577")
(setf (get hand_controller::SetMotorAngles :datatype-) "hand_controller/SetMotorAngles")
(setf (get hand_controller::SetMotorAngles :request) hand_controller::SetMotorAnglesRequest)
(setf (get hand_controller::SetMotorAngles :response) hand_controller::SetMotorAnglesResponse)

(defmethod hand_controller::SetMotorAnglesRequest
  (:response () (instance hand_controller::SetMotorAnglesResponse :init)))

(setf (get hand_controller::SetMotorAnglesRequest :md5sum-) "985fd6b2c4a26cb7c36bfac8da43b577")
(setf (get hand_controller::SetMotorAnglesRequest :datatype-) "hand_controller/SetMotorAnglesRequest")
(setf (get hand_controller::SetMotorAnglesRequest :definition-)
      "int16 motorangle1
int16 motorangle2
---

")

(setf (get hand_controller::SetMotorAnglesResponse :md5sum-) "985fd6b2c4a26cb7c36bfac8da43b577")
(setf (get hand_controller::SetMotorAnglesResponse :datatype-) "hand_controller/SetMotorAnglesResponse")
(setf (get hand_controller::SetMotorAnglesResponse :definition-)
      "int16 motorangle1
int16 motorangle2
---

")



(provide :hand_controller/SetMotorAngles "985fd6b2c4a26cb7c36bfac8da43b577")


