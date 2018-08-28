; Auto-generated. Do not edit!


(cl:in-package hand_controller-msg)


;//! \htmlinclude Steps.msg.html

(cl:defclass <Steps> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Steps (<Steps>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Steps>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Steps)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_controller-msg:<Steps> is deprecated: use hand_controller-msg:Steps instead.")))

(cl:ensure-generic-function 'data_1-val :lambda-list '(m))
(cl:defmethod data_1-val ((m <Steps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-msg:data_1-val is deprecated.  Use hand_controller-msg:data_1 instead.")
  (data_1 m))

(cl:ensure-generic-function 'data_2-val :lambda-list '(m))
(cl:defmethod data_2-val ((m <Steps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-msg:data_2-val is deprecated.  Use hand_controller-msg:data_2 instead.")
  (data_2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Steps>) ostream)
  "Serializes a message object of type '<Steps>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data_2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data_2)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Steps>) istream)
  "Deserializes a message object of type '<Steps>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data_2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data_2)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Steps>)))
  "Returns string type for a message object of type '<Steps>"
  "hand_controller/Steps")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Steps)))
  "Returns string type for a message object of type 'Steps"
  "hand_controller/Steps")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Steps>)))
  "Returns md5sum for a message object of type '<Steps>"
  "a4436f72bad4e30af05cbfcef04a9c0a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Steps)))
  "Returns md5sum for a message object of type 'Steps"
  "a4436f72bad4e30af05cbfcef04a9c0a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Steps>)))
  "Returns full string definition for message of type '<Steps>"
  (cl:format cl:nil "uint16 data_1~%uint16 data_2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Steps)))
  "Returns full string definition for message of type 'Steps"
  (cl:format cl:nil "uint16 data_1~%uint16 data_2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Steps>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Steps>))
  "Converts a ROS message object to a list"
  (cl:list 'Steps
    (cl:cons ':data_1 (data_1 msg))
    (cl:cons ':data_2 (data_2 msg))
))
