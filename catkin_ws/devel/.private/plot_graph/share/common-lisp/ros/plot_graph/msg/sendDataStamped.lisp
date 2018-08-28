; Auto-generated. Do not edit!


(cl:in-package plot_graph-msg)


;//! \htmlinclude sendDataStamped.msg.html

(cl:defclass <sendDataStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (temp
    :reader temp
    :initarg :temp
    :type cl:float
    :initform 0.0))
)

(cl:defclass sendDataStamped (<sendDataStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sendDataStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sendDataStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plot_graph-msg:<sendDataStamped> is deprecated: use plot_graph-msg:sendDataStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <sendDataStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plot_graph-msg:header-val is deprecated.  Use plot_graph-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'temp-val :lambda-list '(m))
(cl:defmethod temp-val ((m <sendDataStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plot_graph-msg:temp-val is deprecated.  Use plot_graph-msg:temp instead.")
  (temp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sendDataStamped>) ostream)
  "Serializes a message object of type '<sendDataStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sendDataStamped>) istream)
  "Deserializes a message object of type '<sendDataStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temp) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sendDataStamped>)))
  "Returns string type for a message object of type '<sendDataStamped>"
  "plot_graph/sendDataStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sendDataStamped)))
  "Returns string type for a message object of type 'sendDataStamped"
  "plot_graph/sendDataStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sendDataStamped>)))
  "Returns md5sum for a message object of type '<sendDataStamped>"
  "f6eb6a543ec2aebc9a011b375a854603")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sendDataStamped)))
  "Returns md5sum for a message object of type 'sendDataStamped"
  "f6eb6a543ec2aebc9a011b375a854603")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sendDataStamped>)))
  "Returns full string definition for message of type '<sendDataStamped>"
  (cl:format cl:nil "Header header~%float32 temp~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sendDataStamped)))
  "Returns full string definition for message of type 'sendDataStamped"
  (cl:format cl:nil "Header header~%float32 temp~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sendDataStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sendDataStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'sendDataStamped
    (cl:cons ':header (header msg))
    (cl:cons ':temp (temp msg))
))
