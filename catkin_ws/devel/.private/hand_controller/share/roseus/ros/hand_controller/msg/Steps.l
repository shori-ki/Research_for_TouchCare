;; Auto-generated. Do not edit!


(when (boundp 'hand_controller::Steps)
  (if (not (find-package "HAND_CONTROLLER"))
    (make-package "HAND_CONTROLLER"))
  (shadow 'Steps (find-package "HAND_CONTROLLER")))
(unless (find-package "HAND_CONTROLLER::STEPS")
  (make-package "HAND_CONTROLLER::STEPS"))

(in-package "ROS")
;;//! \htmlinclude Steps.msg.html


(defclass hand_controller::Steps
  :super ros::object
  :slots (_data_1 _data_2 ))

(defmethod hand_controller::Steps
  (:init
   (&key
    ((:data_1 __data_1) 0)
    ((:data_2 __data_2) 0)
    )
   (send-super :init)
   (setq _data_1 (round __data_1))
   (setq _data_2 (round __data_2))
   self)
  (:data_1
   (&optional __data_1)
   (if __data_1 (setq _data_1 __data_1)) _data_1)
  (:data_2
   (&optional __data_2)
   (if __data_2 (setq _data_2 __data_2)) _data_2)
  (:serialization-length
   ()
   (+
    ;; uint16 _data_1
    2
    ;; uint16 _data_2
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _data_1
       (write-word _data_1 s)
     ;; uint16 _data_2
       (write-word _data_2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _data_1
     (setq _data_1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _data_2
     (setq _data_2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get hand_controller::Steps :md5sum-) "a4436f72bad4e30af05cbfcef04a9c0a")
(setf (get hand_controller::Steps :datatype-) "hand_controller/Steps")
(setf (get hand_controller::Steps :definition-)
      "uint16 data_1
uint16 data_2

")



(provide :hand_controller/Steps "a4436f72bad4e30af05cbfcef04a9c0a")


