;; Auto-generated. Do not edit!


(when (boundp 'hand_controller::Classify)
  (if (not (find-package "HAND_CONTROLLER"))
    (make-package "HAND_CONTROLLER"))
  (shadow 'Classify (find-package "HAND_CONTROLLER")))
(unless (find-package "HAND_CONTROLLER::CLASSIFY")
  (make-package "HAND_CONTROLLER::CLASSIFY"))
(unless (find-package "HAND_CONTROLLER::CLASSIFYREQUEST")
  (make-package "HAND_CONTROLLER::CLASSIFYREQUEST"))
(unless (find-package "HAND_CONTROLLER::CLASSIFYRESPONSE")
  (make-package "HAND_CONTROLLER::CLASSIFYRESPONSE"))

(in-package "ROS")





(defclass hand_controller::ClassifyRequest
  :super ros::object
  :slots (_force_x _force_y _force_z ))

(defmethod hand_controller::ClassifyRequest
  (:init
   (&key
    ((:force_x __force_x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:force_y __force_y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:force_z __force_z) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _force_x __force_x)
   (setq _force_y __force_y)
   (setq _force_z __force_z)
   self)
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

(defclass hand_controller::ClassifyResponse
  :super ros::object
  :slots (_label ))

(defmethod hand_controller::ClassifyResponse
  (:init
   (&key
    ((:label __label) "")
    )
   (send-super :init)
   (setq _label (string __label))
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:serialization-length
   ()
   (+
    ;; string _label
    4 (length _label)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass hand_controller::Classify
  :super ros::object
  :slots ())

(setf (get hand_controller::Classify :md5sum-) "a7d3514bb828bdf6301e6a471a1834ee")
(setf (get hand_controller::Classify :datatype-) "hand_controller/Classify")
(setf (get hand_controller::Classify :request) hand_controller::ClassifyRequest)
(setf (get hand_controller::Classify :response) hand_controller::ClassifyResponse)

(defmethod hand_controller::ClassifyRequest
  (:response () (instance hand_controller::ClassifyResponse :init)))

(setf (get hand_controller::ClassifyRequest :md5sum-) "a7d3514bb828bdf6301e6a471a1834ee")
(setf (get hand_controller::ClassifyRequest :datatype-) "hand_controller/ClassifyRequest")
(setf (get hand_controller::ClassifyRequest :definition-)
      "float64[] force_x
float64[] force_y
float64[] force_z
---
string label
")

(setf (get hand_controller::ClassifyResponse :md5sum-) "a7d3514bb828bdf6301e6a471a1834ee")
(setf (get hand_controller::ClassifyResponse :datatype-) "hand_controller/ClassifyResponse")
(setf (get hand_controller::ClassifyResponse :definition-)
      "float64[] force_x
float64[] force_y
float64[] force_z
---
string label
")



(provide :hand_controller/Classify "a7d3514bb828bdf6301e6a471a1834ee")


