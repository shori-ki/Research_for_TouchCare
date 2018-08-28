; Auto-generated. Do not edit!


(cl:in-package hand_controller-srv)


;//! \htmlinclude MotorSteps-request.msg.html

(cl:defclass <MotorSteps-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass MotorSteps-request (<MotorSteps-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorSteps-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorSteps-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_controller-srv:<MotorSteps-request> is deprecated: use hand_controller-srv:MotorSteps-request instead.")))

(cl:ensure-generic-function 'motorstep1-val :lambda-list '(m))
(cl:defmethod motorstep1-val ((m <MotorSteps-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:motorstep1-val is deprecated.  Use hand_controller-srv:motorstep1 instead.")
  (motorstep1 m))

(cl:ensure-generic-function 'motorstep2-val :lambda-list '(m))
(cl:defmethod motorstep2-val ((m <MotorSteps-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:motorstep2-val is deprecated.  Use hand_controller-srv:motorstep2 instead.")
  (motorstep2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorSteps-request>) ostream)
  "Serializes a message object of type '<MotorSteps-request>"
  (cl:let* ((signed (cl:slot-value msg 'motorstep1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'motorstep2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorSteps-request>) istream)
  "Deserializes a message object of type '<MotorSteps-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorSteps-request>)))
  "Returns string type for a service object of type '<MotorSteps-request>"
  "hand_controller/MotorStepsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorSteps-request)))
  "Returns string type for a service object of type 'MotorSteps-request"
  "hand_controller/MotorStepsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorSteps-request>)))
  "Returns md5sum for a message object of type '<MotorSteps-request>"
  "323528af2fa6691dff3466f8e1db56ef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorSteps-request)))
  "Returns md5sum for a message object of type 'MotorSteps-request"
  "323528af2fa6691dff3466f8e1db56ef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorSteps-request>)))
  "Returns full string definition for message of type '<MotorSteps-request>"
  (cl:format cl:nil "int16 motorstep1~%int16 motorstep2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorSteps-request)))
  "Returns full string definition for message of type 'MotorSteps-request"
  (cl:format cl:nil "int16 motorstep1~%int16 motorstep2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorSteps-request>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorSteps-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorSteps-request
    (cl:cons ':motorstep1 (motorstep1 msg))
    (cl:cons ':motorstep2 (motorstep2 msg))
))
;//! \htmlinclude MotorSteps-response.msg.html

(cl:defclass <MotorSteps-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass MotorSteps-response (<MotorSteps-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorSteps-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorSteps-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_controller-srv:<MotorSteps-response> is deprecated: use hand_controller-srv:MotorSteps-response instead.")))

(cl:ensure-generic-function 'motorstep1-val :lambda-list '(m))
(cl:defmethod motorstep1-val ((m <MotorSteps-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:motorstep1-val is deprecated.  Use hand_controller-srv:motorstep1 instead.")
  (motorstep1 m))

(cl:ensure-generic-function 'motorstep2-val :lambda-list '(m))
(cl:defmethod motorstep2-val ((m <MotorSteps-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:motorstep2-val is deprecated.  Use hand_controller-srv:motorstep2 instead.")
  (motorstep2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorSteps-response>) ostream)
  "Serializes a message object of type '<MotorSteps-response>"
  (cl:let* ((signed (cl:slot-value msg 'motorstep1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'motorstep2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorSteps-response>) istream)
  "Deserializes a message object of type '<MotorSteps-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorSteps-response>)))
  "Returns string type for a service object of type '<MotorSteps-response>"
  "hand_controller/MotorStepsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorSteps-response)))
  "Returns string type for a service object of type 'MotorSteps-response"
  "hand_controller/MotorStepsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorSteps-response>)))
  "Returns md5sum for a message object of type '<MotorSteps-response>"
  "323528af2fa6691dff3466f8e1db56ef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorSteps-response)))
  "Returns md5sum for a message object of type 'MotorSteps-response"
  "323528af2fa6691dff3466f8e1db56ef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorSteps-response>)))
  "Returns full string definition for message of type '<MotorSteps-response>"
  (cl:format cl:nil "int16 motorstep1~%int16 motorstep2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorSteps-response)))
  "Returns full string definition for message of type 'MotorSteps-response"
  (cl:format cl:nil "int16 motorstep1~%int16 motorstep2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorSteps-response>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorSteps-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorSteps-response
    (cl:cons ':motorstep1 (motorstep1 msg))
    (cl:cons ':motorstep2 (motorstep2 msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MotorSteps)))
  'MotorSteps-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MotorSteps)))
  'MotorSteps-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorSteps)))
  "Returns string type for a service object of type '<MotorSteps>"
  "hand_controller/MotorSteps")