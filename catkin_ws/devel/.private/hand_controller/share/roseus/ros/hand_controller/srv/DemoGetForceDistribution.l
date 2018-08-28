;; Auto-generated. Do not edit!


(when (boundp 'hand_controller::DemoGetForceDistribution)
  (if (not (find-package "HAND_CONTROLLER"))
    (make-package "HAND_CONTROLLER"))
  (shadow 'DemoGetForceDistribution (find-package "HAND_CONTROLLER")))
(unless (find-package "HAND_CONTROLLER::DEMOGETFORCEDISTRIBUTION")
  (make-package "HAND_CONTROLLER::DEMOGETFORCEDISTRIBUTION"))
(unless (find-package "HAND_CONTROLLER::DEMOGETFORCEDISTRIBUTIONREQUEST")
  (make-package "HAND_CONTROLLER::DEMOGETFORCEDISTRIBUTIONREQUEST"))
(unless (find-package "HAND_CONTROLLER::DEMOGETFORCEDISTRIBUTIONRESPONSE")
  (make-package "HAND_CONTROLLER::DEMOGETFORCEDISTRIBUTIONRESPONSE"))

(in-package "ROS")





(defclass hand_controller::DemoGetForceDistributionRequest
  :super ros::object
  :slots (_iStart _iEnd ))

(defmethod hand_controller::DemoGetForceDistributionRequest
  (:init
   (&key
    ((:iStart __iStart) 0)
    ((:iEnd __iEnd) 0)
    )
   (send-super :init)
   (setq _iStart (round __iStart))
   (setq _iEnd (round __iEnd))
   self)
  (:iStart
   (&optional __iStart)
   (if __iStart (setq _iStart __iStart)) _iStart)
  (:iEnd
   (&optional __iEnd)
   (if __iEnd (setq _iEnd __iEnd)) _iEnd)
  (:serialization-length
   ()
   (+
    ;; int16 _iStart
    2
    ;; int16 _iEnd
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _iStart
       (write-word _iStart s)
     ;; int16 _iEnd
       (write-word _iEnd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _iStart
     (setq _iStart (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _iEnd
     (setq _iEnd (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass hand_controller::DemoGetForceDistributionResponse
  :super ros::object
  :slots ())

(defmethod hand_controller::DemoGetForceDistributionResponse
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

(defclass hand_controller::DemoGetForceDistribution
  :super ros::object
  :slots ())

(setf (get hand_controller::DemoGetForceDistribution :md5sum-) "bab83eaafe63f283402717a090950e23")
(setf (get hand_controller::DemoGetForceDistribution :datatype-) "hand_controller/DemoGetForceDistribution")
(setf (get hand_controller::DemoGetForceDistribution :request) hand_controller::DemoGetForceDistributionRequest)
(setf (get hand_controller::DemoGetForceDistribution :response) hand_controller::DemoGetForceDistributionResponse)

(defmethod hand_controller::DemoGetForceDistributionRequest
  (:response () (instance hand_controller::DemoGetForceDistributionResponse :init)))

(setf (get hand_controller::DemoGetForceDistributionRequest :md5sum-) "bab83eaafe63f283402717a090950e23")
(setf (get hand_controller::DemoGetForceDistributionRequest :datatype-) "hand_controller/DemoGetForceDistributionRequest")
(setf (get hand_controller::DemoGetForceDistributionRequest :definition-)
      "int16 iStart
int16 iEnd
---

")

(setf (get hand_controller::DemoGetForceDistributionResponse :md5sum-) "bab83eaafe63f283402717a090950e23")
(setf (get hand_controller::DemoGetForceDistributionResponse :datatype-) "hand_controller/DemoGetForceDistributionResponse")
(setf (get hand_controller::DemoGetForceDistributionResponse :definition-)
      "int16 iStart
int16 iEnd
---

")



(provide :hand_controller/DemoGetForceDistribution "bab83eaafe63f283402717a090950e23")


