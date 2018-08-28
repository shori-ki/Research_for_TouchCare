; Auto-generated. Do not edit!


(cl:in-package hand_controller-srv)


;//! \htmlinclude MotorAngles-request.msg.html

(cl:defclass <MotorAngles-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass MotorAngles-request (<MotorAngles-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorAngles-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorAngles-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_controller-srv:<MotorAngles-request> is deprecated: use hand_controller-srv:MotorAngles-request instead.")))

(cl:ensure-generic-function 'motorangle1-val :lambda-list '(m))
(cl:defmethod motorangle1-val ((m <MotorAngles-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:motorangle1-val is deprecated.  Use hand_controller-srv:motorangle1 instead.")
  (motorangle1 m))

(cl:ensure-generic-function 'motorangle2-val :lambda-list '(m))
(cl:defmethod motorangle2-val ((m <MotorAngles-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:motorangle2-val is deprecated.  Use hand_controller-srv:motorangle2 instead.")
  (motorangle2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorAngles-request>) ostream)
  "Serializes a message object of type '<MotorAngles-request>"
  (cl:let* ((signed (cl:slot-value msg 'motorangle1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'motorangle2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorAngles-request>) istream)
  "Deserializes a message object of type '<MotorAngles-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorAngles-request>)))
  "Returns string type for a service object of type '<MotorAngles-request>"
  "hand_controller/MotorAnglesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorAngles-request)))
  "Returns string type for a service object of type 'MotorAngles-request"
  "hand_controller/MotorAnglesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorAngles-request>)))
  "Returns md5sum for a message object of type '<MotorAngles-request>"
  "9582b1b82bee1f1b3579a9d96d1b0c8c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorAngles-request)))
  "Returns md5sum for a message object of type 'MotorAngles-request"
  "9582b1b82bee1f1b3579a9d96d1b0c8c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorAngles-request>)))
  "Returns full string definition for message of type '<MotorAngles-request>"
  (cl:format cl:nil "int16 motorangle1~%int16 motorangle2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorAngles-request)))
  "Returns full string definition for message of type 'MotorAngles-request"
  (cl:format cl:nil "int16 motorangle1~%int16 motorangle2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorAngles-request>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorAngles-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorAngles-request
    (cl:cons ':motorangle1 (motorangle1 msg))
    (cl:cons ':motorangle2 (motorangle2 msg))
))
;//! \htmlinclude MotorAngles-response.msg.html

(cl:defclass <MotorAngles-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass MotorAngles-response (<MotorAngles-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorAngles-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorAngles-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_controller-srv:<MotorAngles-response> is deprecated: use hand_controller-srv:MotorAngles-response instead.")))

(cl:ensure-generic-function 'motorangle1-val :lambda-list '(m))
(cl:defmethod motorangle1-val ((m <MotorAngles-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:motorangle1-val is deprecated.  Use hand_controller-srv:motorangle1 instead.")
  (motorangle1 m))

(cl:ensure-generic-function 'motorangle2-val :lambda-list '(m))
(cl:defmethod motorangle2-val ((m <MotorAngles-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:motorangle2-val is deprecated.  Use hand_controller-srv:motorangle2 instead.")
  (motorangle2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorAngles-response>) ostream)
  "Serializes a message object of type '<MotorAngles-response>"
  (cl:let* ((signed (cl:slot-value msg 'motorangle1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'motorangle2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorAngles-response>) istream)
  "Deserializes a message object of type '<MotorAngles-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorAngles-response>)))
  "Returns string type for a service object of type '<MotorAngles-response>"
  "hand_controller/MotorAnglesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorAngles-response)))
  "Returns string type for a service object of type 'MotorAngles-response"
  "hand_controller/MotorAnglesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorAngles-response>)))
  "Returns md5sum for a message object of type '<MotorAngles-response>"
  "9582b1b82bee1f1b3579a9d96d1b0c8c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorAngles-response)))
  "Returns md5sum for a message object of type 'MotorAngles-response"
  "9582b1b82bee1f1b3579a9d96d1b0c8c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorAngles-response>)))
  "Returns full string definition for message of type '<MotorAngles-response>"
  (cl:format cl:nil "int16 motorangle1~%int16 motorangle2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorAngles-response)))
  "Returns full string definition for message of type 'MotorAngles-response"
  (cl:format cl:nil "int16 motorangle1~%int16 motorangle2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorAngles-response>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorAngles-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorAngles-response
    (cl:cons ':motorangle1 (motorangle1 msg))
    (cl:cons ':motorangle2 (motorangle2 msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MotorAngles)))
  'MotorAngles-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MotorAngles)))
  'MotorAngles-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorAngles)))
  "Returns string type for a service object of type '<MotorAngles>"
  "hand_controller/MotorAngles")