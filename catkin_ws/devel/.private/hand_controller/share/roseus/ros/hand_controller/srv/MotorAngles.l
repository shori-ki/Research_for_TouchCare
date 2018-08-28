;; Auto-generated. Do not edit!


(when (boundp 'hand_controller::MotorAngles)
  (if (not (find-package "HAND_CONTROLLER"))
    (make-package "HAND_CONTROLLER"))
  (shadow 'MotorAngles (find-package "HAND_CONTROLLER")))
(unless (find-package "HAND_CONTROLLER::MOTORANGLES")
  (make-package "HAND_CONTROLLER::MOTORANGLES"))
(unless (find-package "HAND_CONTROLLER::MOTORANGLESREQUEST")
  (make-package "HAND_CONTROLLER::MOTORANGLESREQUEST"))
(unless (find-package "HAND_CONTROLLER::MOTORANGLESRESPONSE")
  (make-package "HAND_CONTROLLER::MOTORANGLESRESPONSE"))

(in-package "ROS")





(defclass hand_controller::MotorAnglesRequest
  :super ros::object
  :slots (_motorangle1 _motorangle2 ))

(defmethod hand_controller::MotorAnglesRequest
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

(defclass hand_controller::MotorAnglesResponse
  :super ros::object
  :slots (_motorangle1 _motorangle2 ))

(defmethod hand_controller::MotorAnglesResponse
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

(defclass hand_controller::MotorAngles
  :super ros::object
  :slots ())

(setf (get hand_controller::MotorAngles :md5sum-) "9582b1b82bee1f1b3579a9d96d1b0c8c")
(setf (get hand_controller::MotorAngles :datatype-) "hand_controller/MotorAngles")
(setf (get hand_controller::MotorAngles :request) hand_controller::MotorAnglesRequest)
(setf (get hand_controller::MotorAngles :response) hand_controller::MotorAnglesResponse)

(defmethod hand_controller::MotorAnglesRequest
  (:response () (instance hand_controller::MotorAnglesResponse :init)))

(setf (get hand_controller::MotorAnglesRequest :md5sum-) "9582b1b82bee1f1b3579a9d96d1b0c8c")
(setf (get hand_controller::MotorAnglesRequest :datatype-) "hand_controller/MotorAnglesRequest")
(setf (get hand_controller::MotorAnglesRequest :definition-)
      "int16 motorangle1
int16 motorangle2
---
int16 motorangle1
int16 motorangle2

")

(setf (get hand_controller::MotorAnglesResponse :md5sum-) "9582b1b82bee1f1b3579a9d96d1b0c8c")
(setf (get hand_controller::MotorAnglesResponse :datatype-) "hand_controller/MotorAnglesResponse")
(setf (get hand_controller::MotorAnglesResponse :definition-)
      "int16 motorangle1
int16 motorangle2
---
int16 motorangle1
int16 motorangle2

")



(provide :hand_controller/MotorAngles "9582b1b82bee1f1b3579a9d96d1b0c8c")


