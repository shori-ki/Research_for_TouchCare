; Auto-generated. Do not edit!


(cl:in-package hand_controller-srv)


;//! \htmlinclude SetMotorSteps-request.msg.html

(cl:defclass <SetMotorSteps-request> (roslisp-msg-protocol:ros-message)
  ((motorstep1
    :reader motorstep1
    :initarg :motorstep1
    :type cl:fixnum
    :initform 0)
   (motorstep2
    :reader motorstep2
    :initarg :motorstep2
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetMotorSteps-request (<SetMotorSteps-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMotorSteps-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMotorSteps-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_controller-srv:<SetMotorSteps-request> is deprecated: use hand_controller-srv:SetMotorSteps-request instead.")))

(cl:ensure-generic-function 'motorstep1-val :lambda-list '(m))
(cl:defmethod motorstep1-val ((m <SetMotorSteps-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:motorstep1-val is deprecated.  Use hand_controller-srv:motorstep1 instead.")
  (motorstep1 m))

(cl:ensure-generic-function 'motorstep2-val :lambda-list '(m))
(cl:defmethod motorstep2-val ((m <SetMotorSteps-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:motorstep2-val is deprecated.  Use hand_controller-srv:motorstep2 instead.")
  (motorstep2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMotorSteps-request>) ostream)
  "Serializes a message object of type '<SetMotorSteps-request>"
  (cl:let* ((signed (cl:slot-value msg 'motorstep1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'motorstep2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMotorSteps-request>) istream)
  "Deserializes a message object of type '<SetMotorSteps-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motorstep1) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motorstep2) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMotorSteps-request>)))
  "Returns string type for a service object of type '<SetMotorSteps-request>"
  "hand_controller/SetMotorStepsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMotorSteps-request)))
  "Returns string type for a service object of type 'SetMotorSteps-request"
  "hand_controller/SetMotorStepsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMotorSteps-request>)))
  "Returns md5sum for a message object of type '<SetMotorSteps-request>"
  "5df53fa0fa1b84c4a7ebce9f68720f63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMotorSteps-request)))
  "Returns md5sum for a message object of type 'SetMotorSteps-request"
  "5df53fa0fa1b84c4a7ebce9f68720f63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMotorSteps-request>)))
  "Returns full string definition for message of type '<SetMotorSteps-request>"
  (cl:format cl:nil "int16 motorstep1~%int16 motorstep2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMotorSteps-request)))
  "Returns full string definition for message of type 'SetMotorSteps-request"
  (cl:format cl:nil "int16 motorstep1~%int16 motorstep2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMotorSteps-request>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMotorSteps-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMotorSteps-request
    (cl:cons ':motorstep1 (motorstep1 msg))
    (cl:cons ':motorstep2 (motorstep2 msg))
))
;//! \htmlinclude SetMotorSteps-response.msg.html

(cl:defclass <SetMotorSteps-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetMotorSteps-response (<SetMotorSteps-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMotorSteps-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMotorSteps-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_controller-srv:<SetMotorSteps-response> is deprecated: use hand_controller-srv:SetMotorSteps-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMotorSteps-response>) ostream)
  "Serializes a message object of type '<SetMotorSteps-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMotorSteps-response>) istream)
  "Deserializes a message object of type '<SetMotorSteps-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMotorSteps-response>)))
  "Returns string type for a service object of type '<SetMotorSteps-response>"
  "hand_controller/SetMotorStepsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMotorSteps-response)))
  "Returns string type for a service object of type 'SetMotorSteps-response"
  "hand_controller/SetMotorStepsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMotorSteps-response>)))
  "Returns md5sum for a message object of type '<SetMotorSteps-response>"
  "5df53fa0fa1b84c4a7ebce9f68720f63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMotorSteps-response)))
  "Returns md5sum for a message object of type 'SetMotorSteps-response"
  "5df53fa0fa1b84c4a7ebce9f68720f63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMotorSteps-response>)))
  "Returns full string definition for message of type '<SetMotorSteps-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMotorSteps-response)))
  "Returns full string definition for message of type 'SetMotorSteps-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMotorSteps-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMotorSteps-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMotorSteps-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetMotorSteps)))
  'SetMotorSteps-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetMotorSteps)))
  'SetMotorSteps-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMotorSteps)))
  "Returns string type for a service object of type '<SetMotorSteps>"
  "hand_controller/SetMotorSteps")