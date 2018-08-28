;; Auto-generated. Do not edit!


(when (boundp 'hand_controller::checkGrasp)
  (if (not (find-package "HAND_CONTROLLER"))
    (make-package "HAND_CONTROLLER"))
  (shadow 'checkGrasp (find-package "HAND_CONTROLLER")))
(unless (find-package "HAND_CONTROLLER::CHECKGRASP")
  (make-package "HAND_CONTROLLER::CHECKGRASP"))
(unless (find-package "HAND_CONTROLLER::CHECKGRASPREQUEST")
  (make-package "HAND_CONTROLLER::CHECKGRASPREQUEST"))
(unless (find-package "HAND_CONTROLLER::CHECKGRASPRESPONSE")
  (make-package "HAND_CONTROLLER::CHECKGRASPRESPONSE"))

(in-package "ROS")





(defclass hand_controller::checkGraspRequest
  :super ros::object
  :slots ())

(defmethod hand_controller::checkGraspRequest
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

(defclass hand_controller::checkGraspResponse
  :super ros::object
  :slots (_success _single_layer _material ))

(defmethod hand_controller::checkGraspResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:single_layer __single_layer) nil)
    ((:material __material) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _single_layer __single_layer)
   (setq _material (string __material))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:single_layer
   (&optional __single_layer)
   (if __single_layer (setq _single_layer __single_layer)) _single_layer)
  (:material
   (&optional __material)
   (if __material (setq _material __material)) _material)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; bool _single_layer
    1
    ;; string _material
    4 (length _material)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; bool _single_layer
       (if _single_layer (write-byte -1 s) (write-byte 0 s))
     ;; string _material
       (write-long (length _material) s) (princ _material s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _single_layer
     (setq _single_layer (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _material
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _material (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass hand_controller::checkGrasp
  :super ros::object
  :slots ())

(setf (get hand_controller::checkGrasp :md5sum-) "a87fef5f943ec854fec992ab903ef3aa")
(setf (get hand_controller::checkGrasp :datatype-) "hand_controller/checkGrasp")
(setf (get hand_controller::checkGrasp :request) hand_controller::checkGraspRequest)
(setf (get hand_controller::checkGrasp :response) hand_controller::checkGraspResponse)

(defmethod hand_controller::checkGraspRequest
  (:response () (instance hand_controller::checkGraspResponse :init)))

(setf (get hand_controller::checkGraspRequest :md5sum-) "a87fef5f943ec854fec992ab903ef3aa")
(setf (get hand_controller::checkGraspRequest :datatype-) "hand_controller/checkGraspRequest")
(setf (get hand_controller::checkGraspRequest :definition-)
      "
---
bool success
bool single_layer
string material
")

(setf (get hand_controller::checkGraspResponse :md5sum-) "a87fef5f943ec854fec992ab903ef3aa")
(setf (get hand_controller::checkGraspResponse :datatype-) "hand_controller/checkGraspResponse")
(setf (get hand_controller::checkGraspResponse :definition-)
      "
---
bool success
bool single_layer
string material
")



(provide :hand_controller/checkGrasp "a87fef5f943ec854fec992ab903ef3aa")


