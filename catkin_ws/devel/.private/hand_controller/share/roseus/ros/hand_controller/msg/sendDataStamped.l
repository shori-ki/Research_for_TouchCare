;; Auto-generated. Do not edit!


(when (boundp 'hand_controller::sendDataStamped)
  (if (not (find-package "HAND_CONTROLLER"))
    (make-package "HAND_CONTROLLER"))
  (shadow 'sendDataStamped (find-package "HAND_CONTROLLER")))
(unless (find-package "HAND_CONTROLLER::SENDDATASTAMPED")
  (make-package "HAND_CONTROLLER::SENDDATASTAMPED"))

(in-package "ROS")
;;//! \htmlinclude sendDataStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hand_controller::sendDataStamped
  :super ros::object
  :slots (_header _temp ))

(defmethod hand_controller::sendDataStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:temp __temp) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _temp (float __temp))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:temp
   (&optional __temp)
   (if __temp (setq _temp __temp)) _temp)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _temp
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _temp
       (sys::poke _temp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _temp
     (setq _temp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hand_controller::sendDataStamped :md5sum-) "f6eb6a543ec2aebc9a011b375a854603")
(setf (get hand_controller::sendDataStamped :datatype-) "hand_controller/sendDataStamped")
(setf (get hand_controller::sendDataStamped :definition-)
      "Header header
float32 temp
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

")



(provide :hand_controller/sendDataStamped "f6eb6a543ec2aebc9a011b375a854603")


