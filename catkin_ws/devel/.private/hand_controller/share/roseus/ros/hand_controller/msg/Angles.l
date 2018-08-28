;; Auto-generated. Do not edit!


(when (boundp 'hand_controller::Angles)
  (if (not (find-package "HAND_CONTROLLER"))
    (make-package "HAND_CONTROLLER"))
  (shadow 'Angles (find-package "HAND_CONTROLLER")))
(unless (find-package "HAND_CONTROLLER::ANGLES")
  (make-package "HAND_CONTROLLER::ANGLES"))

(in-package "ROS")
;;//! \htmlinclude Angles.msg.html


(defclass hand_controller::Angles
  :super ros::object
  :slots (_data_1 _data_2 ))

(defmethod hand_controller::Angles
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
    ;; uint8 _data_1
    1
    ;; uint8 _data_2
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _data_1
       (write-byte _data_1 s)
     ;; uint8 _data_2
       (write-byte _data_2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _data_1
     (setq _data_1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _data_2
     (setq _data_2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get hand_controller::Angles :md5sum-) "9cd7eb3205b83a9787c9effbd8c528ae")
(setf (get hand_controller::Angles :datatype-) "hand_controller/Angles")
(setf (get hand_controller::Angles :definition-)
      "uint8 data_1
uint8 data_2

")



(provide :hand_controller/Angles "9cd7eb3205b83a9787c9effbd8c528ae")


