;; Auto-generated. Do not edit!


(when (boundp 'hand_controller::getRecordedBuffer)
  (if (not (find-package "HAND_CONTROLLER"))
    (make-package "HAND_CONTROLLER"))
  (shadow 'getRecordedBuffer (find-package "HAND_CONTROLLER")))
(unless (find-package "HAND_CONTROLLER::GETRECORDEDBUFFER")
  (make-package "HAND_CONTROLLER::GETRECORDEDBUFFER"))
(unless (find-package "HAND_CONTROLLER::GETRECORDEDBUFFERREQUEST")
  (make-package "HAND_CONTROLLER::GETRECORDEDBUFFERREQUEST"))
(unless (find-package "HAND_CONTROLLER::GETRECORDEDBUFFERRESPONSE")
  (make-package "HAND_CONTROLLER::GETRECORDEDBUFFERRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass hand_controller::getRecordedBufferRequest
  :super ros::object
  :slots ())

(defmethod hand_controller::getRecordedBufferRequest
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

(defclass hand_controller::getRecordedBufferResponse
  :super ros::object
  :slots (_buffer _x_buffer _y_buffer _z_buffer ))

(defmethod hand_controller::getRecordedBufferResponse
  (:init
   (&key
    ((:buffer __buffer) (let (r) (dotimes (i 0) (push (instance geometry_msgs::WrenchStamped :init) r)) r))
    ((:x_buffer __x_buffer) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y_buffer __y_buffer) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:z_buffer __z_buffer) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _buffer __buffer)
   (setq _x_buffer __x_buffer)
   (setq _y_buffer __y_buffer)
   (setq _z_buffer __z_buffer)
   self)
  (:buffer
   (&rest __buffer)
   (if (keywordp (car __buffer))
       (send* _buffer __buffer)
     (progn
       (if __buffer (setq _buffer (car __buffer)))
       _buffer)))
  (:x_buffer
   (&optional __x_buffer)
   (if __x_buffer (setq _x_buffer __x_buffer)) _x_buffer)
  (:y_buffer
   (&optional __y_buffer)
   (if __y_buffer (setq _y_buffer __y_buffer)) _y_buffer)
  (:z_buffer
   (&optional __z_buffer)
   (if __z_buffer (setq _z_buffer __z_buffer)) _z_buffer)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/WrenchStamped[] _buffer
    (apply #'+ (send-all _buffer :serialization-length)) 4
    ;; float64[] _x_buffer
    (* 8    (length _x_buffer)) 4
    ;; float64[] _y_buffer
    (* 8    (length _y_buffer)) 4
    ;; float64[] _z_buffer
    (* 8    (length _z_buffer)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/WrenchStamped[] _buffer
     (write-long (length _buffer) s)
     (dolist (elem _buffer)
       (send elem :serialize s)
       )
     ;; float64[] _x_buffer
     (write-long (length _x_buffer) s)
     (dotimes (i (length _x_buffer))
       (sys::poke (elt _x_buffer i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _y_buffer
     (write-long (length _y_buffer) s)
     (dotimes (i (length _y_buffer))
       (sys::poke (elt _y_buffer i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _z_buffer
     (write-long (length _z_buffer) s)
     (dotimes (i (length _z_buffer))
       (sys::poke (elt _z_buffer i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/WrenchStamped[] _buffer
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _buffer (let (r) (dotimes (i n) (push (instance geometry_msgs::WrenchStamped :init) r)) r))
     (dolist (elem- _buffer)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64[] _x_buffer
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x_buffer (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x_buffer i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _y_buffer
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y_buffer (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _y_buffer i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _z_buffer
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _z_buffer (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _z_buffer i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass hand_controller::getRecordedBuffer
  :super ros::object
  :slots ())

(setf (get hand_controller::getRecordedBuffer :md5sum-) "9f0d2e2dca63a66d6097c4b52389060c")
(setf (get hand_controller::getRecordedBuffer :datatype-) "hand_controller/getRecordedBuffer")
(setf (get hand_controller::getRecordedBuffer :request) hand_controller::getRecordedBufferRequest)
(setf (get hand_controller::getRecordedBuffer :response) hand_controller::getRecordedBufferResponse)

(defmethod hand_controller::getRecordedBufferRequest
  (:response () (instance hand_controller::getRecordedBufferResponse :init)))

(setf (get hand_controller::getRecordedBufferRequest :md5sum-) "9f0d2e2dca63a66d6097c4b52389060c")
(setf (get hand_controller::getRecordedBufferRequest :datatype-) "hand_controller/getRecordedBufferRequest")
(setf (get hand_controller::getRecordedBufferRequest :definition-)
      "
---
geometry_msgs/WrenchStamped[] buffer
float64[] x_buffer
float64[] y_buffer
float64[] z_buffer


================================================================================
MSG: geometry_msgs/WrenchStamped
# A wrench with reference coordinate frame and timestamp
Header header
Wrench wrench

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Wrench
# This represents force in free space, separated into
# its linear and angular parts.
Vector3  force
Vector3  torque

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")

(setf (get hand_controller::getRecordedBufferResponse :md5sum-) "9f0d2e2dca63a66d6097c4b52389060c")
(setf (get hand_controller::getRecordedBufferResponse :datatype-) "hand_controller/getRecordedBufferResponse")
(setf (get hand_controller::getRecordedBufferResponse :definition-)
      "
---
geometry_msgs/WrenchStamped[] buffer
float64[] x_buffer
float64[] y_buffer
float64[] z_buffer


================================================================================
MSG: geometry_msgs/WrenchStamped
# A wrench with reference coordinate frame and timestamp
Header header
Wrench wrench

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Wrench
# This represents force in free space, separated into
# its linear and angular parts.
Vector3  force
Vector3  torque

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")



(provide :hand_controller/getRecordedBuffer "9f0d2e2dca63a66d6097c4b52389060c")


