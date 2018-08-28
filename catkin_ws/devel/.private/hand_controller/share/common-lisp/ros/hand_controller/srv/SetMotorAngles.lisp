; Auto-generated. Do not edit!


(cl:in-package hand_controller-srv)


;//! \htmlinclude SetMotorAngles-request.msg.html

(cl:defclass <SetMotorAngles-request> (roslisp-msg-protocol:ros-message)
  ((motorangle1
    :reader motorangle1
    :initarg :motorangle1
    :type cl:fixnum
    :initform 0)
   (motorangle2
    :reader motorangle2
    :initarg :motorangle2
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetMotorAngles-request (<SetMotorAngles-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMotorAngles-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMotorAngles-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_controller-srv:<SetMotorAngles-request> is deprecated: use hand_controller-srv:SetMotorAngles-request instead.")))

(cl:ensure-generic-function 'motorangle1-val :lambda-list '(m))
(cl:defmethod motorangle1-val ((m <SetMotorAngles-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:motorangle1-val is deprecated.  Use hand_controller-srv:motorangle1 instead.")
  (motorangle1 m))

(cl:ensure-generic-function 'motorangle2-val :lambda-list '(m))
(cl:defmethod motorangle2-val ((m <SetMotorAngles-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:motorangle2-val is deprecated.  Use hand_controller-srv:motorangle2 instead.")
  (motorangle2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMotorAngles-request>) ostream)
  "Serializes a message object of type '<SetMotorAngles-request>"
  (cl:let* ((signed (cl:slot-value msg 'motorangle1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'motorangle2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMotorAngles-request>) istream)
  "Deserializes a message object of type '<SetMotorAngles-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motorangle1) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motorangle2) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMotorAngles-request>)))
  "Returns string type for a service object of type '<SetMotorAngles-request>"
  "hand_controller/SetMotorAnglesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMotorAngles-request)))
  "Returns string type for a service object of type 'SetMotorAngles-request"
  "hand_controller/SetMotorAnglesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMotorAngles-request>)))
  "Returns md5sum for a message object of type '<SetMotorAngles-request>"
  "985fd6b2c4a26cb7c36bfac8da43b577")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMotorAngles-request)))
  "Returns md5sum for a message object of type 'SetMotorAngles-request"
  "985fd6b2c4a26cb7c36bfac8da43b577")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMotorAngles-request>)))
  "Returns full string definition for message of type '<SetMotorAngles-request>"
  (cl:format cl:nil "int16 motorangle1~%int16 motorangle2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMotorAngles-request)))
  "Returns full string definition for message of type 'SetMotorAngles-request"
  (cl:format cl:nil "int16 motorangle1~%int16 motorangle2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMotorAngles-request>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMotorAngles-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMotorAngles-request
    (cl:cons ':motorangle1 (motorangle1 msg))
    (cl:cons ':motorangle2 (motorangle2 msg))
))
;//! \htmlinclude SetMotorAngles-response.msg.html

(cl:defclass <SetMotorAngles-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetMotorAngles-response (<SetMotorAngles-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMotorAngles-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMotorAngles-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_controller-srv:<SetMotorAngles-response> is deprecated: use hand_controller-srv:SetMotorAngles-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMotorAngles-response>) ostream)
  "Serializes a message object of type '<SetMotorAngles-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMotorAngles-response>) istream)
  "Deserializes a message object of type '<SetMotorAngles-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMotorAngles-response>)))
  "Returns string type for a service object of type '<SetMotorAngles-response>"
  "hand_controller/SetMotorAnglesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMotorAngles-response)))
  "Returns string type for a service object of type 'SetMotorAngles-response"
  "hand_controller/SetMotorAnglesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMotorAngles-response>)))
  "Returns md5sum for a message object of type '<SetMotorAngles-response>"
  "985fd6b2c4a26cb7c36bfac8da43b577")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMotorAngles-response)))
  "Returns md5sum for a message object of type 'SetMotorAngles-response"
  "985fd6b2c4a26cb7c36bfac8da43b577")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMotorAngles-response>)))
  "Returns full string definition for message of type '<SetMotorAngles-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMotorAngles-response)))
  "Returns full string definition for message of type 'SetMotorAngles-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMotorAngles-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMotorAngles-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMotorAngles-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetMotorAngles)))
  'SetMotorAngles-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetMotorAngles)))
  'SetMotorAngles-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMotorAngles)))
  "Returns string type for a service object of type '<SetMotorAngles>"
  "hand_controller/SetMotorAngles")