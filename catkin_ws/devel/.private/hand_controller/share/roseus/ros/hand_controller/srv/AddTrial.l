;; Auto-generated. Do not edit!


(when (boundp 'hand_controller::AddTrial)
  (if (not (find-package "HAND_CONTROLLER"))
    (make-package "HAND_CONTROLLER"))
  (shadow 'AddTrial (find-package "HAND_CONTROLLER")))
(unless (find-package "HAND_CONTROLLER::ADDTRIAL")
  (make-package "HAND_CONTROLLER::ADDTRIAL"))
(unless (find-package "HAND_CONTROLLER::ADDTRIALREQUEST")
  (make-package "HAND_CONTROLLER::ADDTRIALREQUEST"))
(unless (find-package "HAND_CONTROLLER::ADDTRIALRESPONSE")
  (make-package "HAND_CONTROLLER::ADDTRIALRESPONSE"))

(in-package "ROS")





(defclass hand_controller::AddTrialRequest
  :super ros::object
  :slots (_label _force_x _force_y _force_z ))

(defmethod hand_controller::AddTrialRequest
  (:init
   (&key
    ((:label __label) "")
    ((:force_x __force_x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:force_y __force_y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:force_z __force_z) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _label (string __label))
   (setq _force_x __force_x)
   (setq _force_y __force_y)
   (setq _force_z __force_z)
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:force_x
   (&optional __force_x)
   (if __force_x (setq _force_x __force_x)) _force_x)
  (:force_y
   (&optional __force_y)
   (if __force_y (setq _force_y __force_y)) _force_y)
  (:force_z
   (&optional __force_z)
   (if __force_z (setq _force_z __force_z)) _force_z)
  (:serialization-length
   ()
   (+
    ;; string _label
    4 (length _label)
    ;; float64[] _force_x
    (* 8    (length _force_x)) 4
    ;; float64[] _force_y
    (* 8    (length _force_y)) 4
    ;; float64[] _force_z
    (* 8    (length _force_z)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;; float64[] _force_x
     (write-long (length _force_x) s)
     (dotimes (i (length _force_x))
       (sys::poke (elt _force_x i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _force_y
     (write-long (length _force_y) s)
     (dotimes (i (length _force_y))
       (sys::poke (elt _force_y i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _force_z
     (write-long (length _force_z) s)
     (dotimes (i (length _force_z))
       (sys::poke (elt _force_z i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64[] _force_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _force_x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _force_x i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _force_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _force_y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _force_y i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _force_z
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _force_z (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _force_z i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass hand_controller::AddTrialResponse
  :super ros::object
  :slots ())

(defmethod hand_controller::AddTrialResponse
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

(defclass hand_controller::AddTrial
  :super ros::object
  :slots ())

(setf (get hand_controller::AddTrial :md5sum-) "0dc24b7f1f2931dc1f963137493e45ae")
(setf (get hand_controller::AddTrial :datatype-) "hand_controller/AddTrial")
(setf (get hand_controller::AddTrial :request) hand_controller::AddTrialRequest)
(setf (get hand_controller::AddTrial :response) hand_controller::AddTrialResponse)

(defmethod hand_controller::AddTrialRequest
  (:response () (instance hand_controller::AddTrialResponse :init)))

(setf (get hand_controller::AddTrialRequest :md5sum-) "0dc24b7f1f2931dc1f963137493e45ae")
(setf (get hand_controller::AddTrialRequest :datatype-) "hand_controller/AddTrialRequest")
(setf (get hand_controller::AddTrialRequest :definition-)
      "string label
float64[] force_x
float64[] force_y
float64[] force_z
---

")

(setf (get hand_controller::AddTrialResponse :md5sum-) "0dc24b7f1f2931dc1f963137493e45ae")
(setf (get hand_controller::AddTrialResponse :datatype-) "hand_controller/AddTrialResponse")
(setf (get hand_controller::AddTrialResponse :definition-)
      "string label
float64[] force_x
float64[] force_y
float64[] force_z
---

")



(provide :hand_controller/AddTrial "0dc24b7f1f2931dc1f963137493e45ae")


