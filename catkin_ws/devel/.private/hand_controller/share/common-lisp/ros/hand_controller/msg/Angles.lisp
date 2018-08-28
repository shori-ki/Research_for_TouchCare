; Auto-generated. Do not edit!


(cl:in-package hand_controller-msg)


;//! \htmlinclude Angles.msg.html

(cl:defclass <Angles> (roslisp-msg-protocol:ros-message)
  ((data_1
    :reader data_1
    :initarg :data_1
    :type cl:fixnum
    :initform 0)
   (data_2
    :reader data_2
    :initarg :data_2
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Angles (<Angles>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Angles>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Angles)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_controller-msg:<Angles> is deprecated: use hand_controller-msg:Angles instead.")))

(cl:ensure-generic-function 'data_1-val :lambda-list '(m))
(cl:defmethod data_1-val ((m <Angles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-msg:data_1-val is deprecated.  Use hand_controller-msg:data_1 instead.")
  (data_1 m))

(cl:ensure-generic-function 'data_2-val :lambda-list '(m))
(cl:defmethod data_2-val ((m <Angles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-msg:data_2-val is deprecated.  Use hand_controller-msg:data_2 instead.")
  (data_2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Angles>) ostream)
  "Serializes a message object of type '<Angles>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data_2)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Angles>) istream)
  "Deserializes a message object of type '<Angles>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data_2)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Angles>)))
  "Returns string type for a message object of type '<Angles>"
  "hand_controller/Angles")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Angles)))
  "Returns string type for a message object of type 'Angles"
  "hand_controller/Angles")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Angles>)))
  "Returns md5sum for a message object of type '<Angles>"
  "9cd7eb3205b83a9787c9effbd8c528ae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Angles)))
  "Returns md5sum for a message object of type 'Angles"
  "9cd7eb3205b83a9787c9effbd8c528ae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Angles>)))
  "Returns full string definition for message of type '<Angles>"
  (cl:format cl:nil "uint8 data_1~%uint8 data_2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Angles)))
  "Returns full string definition for message of type 'Angles"
  (cl:format cl:nil "uint8 data_1~%uint8 data_2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Angles>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Angles>))
  "Converts a ROS message object to a list"
  (cl:list 'Angles
    (cl:cons ':data_1 (data_1 msg))
    (cl:cons ':data_2 (data_2 msg))
))
