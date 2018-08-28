; Auto-generated. Do not edit!


(cl:in-package hand_controller-srv)


;//! \htmlinclude getRecordedBuffer-request.msg.html

(cl:defclass <getRecordedBuffer-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass getRecordedBuffer-request (<getRecordedBuffer-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <getRecordedBuffer-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'getRecordedBuffer-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_controller-srv:<getRecordedBuffer-request> is deprecated: use hand_controller-srv:getRecordedBuffer-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <getRecordedBuffer-request>) ostream)
  "Serializes a message object of type '<getRecordedBuffer-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <getRecordedBuffer-request>) istream)
  "Deserializes a message object of type '<getRecordedBuffer-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<getRecordedBuffer-request>)))
  "Returns string type for a service object of type '<getRecordedBuffer-request>"
  "hand_controller/getRecordedBufferRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getRecordedBuffer-request)))
  "Returns string type for a service object of type 'getRecordedBuffer-request"
  "hand_controller/getRecordedBufferRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<getRecordedBuffer-request>)))
  "Returns md5sum for a message object of type '<getRecordedBuffer-request>"
  "9f0d2e2dca63a66d6097c4b52389060c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'getRecordedBuffer-request)))
  "Returns md5sum for a message object of type 'getRecordedBuffer-request"
  "9f0d2e2dca63a66d6097c4b52389060c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<getRecordedBuffer-request>)))
  "Returns full string definition for message of type '<getRecordedBuffer-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'getRecordedBuffer-request)))
  "Returns full string definition for message of type 'getRecordedBuffer-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <getRecordedBuffer-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <getRecordedBuffer-request>))
  "Converts a ROS message object to a list"
  (cl:list 'getRecordedBuffer-request
))
;//! \htmlinclude getRecordedBuffer-response.msg.html

(cl:defclass <getRecordedBuffer-response> (roslisp-msg-protocol:ros-message)
  ((buffer
    :reader buffer
    :initarg :buffer
    :type (cl:vector geometry_msgs-msg:WrenchStamped)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:WrenchStamped :initial-element (cl:make-instance 'geometry_msgs-msg:WrenchStamped)))
   (x_buffer
    :reader x_buffer
    :initarg :x_buffer
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (y_buffer
    :reader y_buffer
    :initarg :y_buffer
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (z_buffer
    :reader z_buffer
    :initarg :z_buffer
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass getRecordedBuffer-response (<getRecordedBuffer-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <getRecordedBuffer-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'getRecordedBuffer-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_controller-srv:<getRecordedBuffer-response> is deprecated: use hand_controller-srv:getRecordedBuffer-response instead.")))

(cl:ensure-generic-function 'buffer-val :lambda-list '(m))
(cl:defmethod buffer-val ((m <getRecordedBuffer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:buffer-val is deprecated.  Use hand_controller-srv:buffer instead.")
  (buffer m))

(cl:ensure-generic-function 'x_buffer-val :lambda-list '(m))
(cl:defmethod x_buffer-val ((m <getRecordedBuffer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:x_buffer-val is deprecated.  Use hand_controller-srv:x_buffer instead.")
  (x_buffer m))

(cl:ensure-generic-function 'y_buffer-val :lambda-list '(m))
(cl:defmethod y_buffer-val ((m <getRecordedBuffer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:y_buffer-val is deprecated.  Use hand_controller-srv:y_buffer instead.")
  (y_buffer m))

(cl:ensure-generic-function 'z_buffer-val :lambda-list '(m))
(cl:defmethod z_buffer-val ((m <getRecordedBuffer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:z_buffer-val is deprecated.  Use hand_controller-srv:z_buffer instead.")
  (z_buffer m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <getRecordedBuffer-response>) ostream)
  "Serializes a message object of type '<getRecordedBuffer-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'buffer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'buffer))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'x_buffer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'x_buffer))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'y_buffer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'y_buffer))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'z_buffer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'z_buffer))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <getRecordedBuffer-response>) istream)
  "Deserializes a message object of type '<getRecordedBuffer-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'buffer) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'buffer)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:WrenchStamped))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'x_buffer) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'x_buffer)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'y_buffer) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'y_buffer)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'z_buffer) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'z_buffer)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<getRecordedBuffer-response>)))
  "Returns string type for a service object of type '<getRecordedBuffer-response>"
  "hand_controller/getRecordedBufferResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getRecordedBuffer-response)))
  "Returns string type for a service object of type 'getRecordedBuffer-response"
  "hand_controller/getRecordedBufferResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<getRecordedBuffer-response>)))
  "Returns md5sum for a message object of type '<getRecordedBuffer-response>"
  "9f0d2e2dca63a66d6097c4b52389060c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'getRecordedBuffer-response)))
  "Returns md5sum for a message object of type 'getRecordedBuffer-response"
  "9f0d2e2dca63a66d6097c4b52389060c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<getRecordedBuffer-response>)))
  "Returns full string definition for message of type '<getRecordedBuffer-response>"
  (cl:format cl:nil "geometry_msgs/WrenchStamped[] buffer~%float64[] x_buffer~%float64[] y_buffer~%float64[] z_buffer~%~%~%================================================================================~%MSG: geometry_msgs/WrenchStamped~%# A wrench with reference coordinate frame and timestamp~%Header header~%Wrench wrench~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'getRecordedBuffer-response)))
  "Returns full string definition for message of type 'getRecordedBuffer-response"
  (cl:format cl:nil "geometry_msgs/WrenchStamped[] buffer~%float64[] x_buffer~%float64[] y_buffer~%float64[] z_buffer~%~%~%================================================================================~%MSG: geometry_msgs/WrenchStamped~%# A wrench with reference coordinate frame and timestamp~%Header header~%Wrench wrench~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <getRecordedBuffer-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'buffer) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'x_buffer) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'y_buffer) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'z_buffer) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <getRecordedBuffer-response>))
  "Converts a ROS message object to a list"
  (cl:list 'getRecordedBuffer-response
    (cl:cons ':buffer (buffer msg))
    (cl:cons ':x_buffer (x_buffer msg))
    (cl:cons ':y_buffer (y_buffer msg))
    (cl:cons ':z_buffer (z_buffer msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'getRecordedBuffer)))
  'getRecordedBuffer-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'getRecordedBuffer)))
  'getRecordedBuffer-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getRecordedBuffer)))
  "Returns string type for a service object of type '<getRecordedBuffer>"
  "hand_controller/getRecordedBuffer")