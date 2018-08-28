; Auto-generated. Do not edit!


(cl:in-package hand_controller-srv)


;//! \htmlinclude CashMotion-request.msg.html

(cl:defclass <CashMotion-request> (roslisp-msg-protocol:ros-message)
  ((repetitions
    :reader repetitions
    :initarg :repetitions
    :type cl:fixnum
    :initform 0)
   (t_move
    :reader t_move
    :initarg :t_move
    :type cl:fixnum
    :initform 0)
   (t_wait
    :reader t_wait
    :initarg :t_wait
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CashMotion-request (<CashMotion-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CashMotion-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CashMotion-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_controller-srv:<CashMotion-request> is deprecated: use hand_controller-srv:CashMotion-request instead.")))

(cl:ensure-generic-function 'repetitions-val :lambda-list '(m))
(cl:defmethod repetitions-val ((m <CashMotion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:repetitions-val is deprecated.  Use hand_controller-srv:repetitions instead.")
  (repetitions m))

(cl:ensure-generic-function 't_move-val :lambda-list '(m))
(cl:defmethod t_move-val ((m <CashMotion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:t_move-val is deprecated.  Use hand_controller-srv:t_move instead.")
  (t_move m))

(cl:ensure-generic-function 't_wait-val :lambda-list '(m))
(cl:defmethod t_wait-val ((m <CashMotion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:t_wait-val is deprecated.  Use hand_controller-srv:t_wait instead.")
  (t_wait m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CashMotion-request>) ostream)
  "Serializes a message object of type '<CashMotion-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'repetitions)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'repetitions)) ostream)
  (cl:let* ((signed (cl:slot-value msg 't_move)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 't_wait)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CashMotion-request>) istream)
  "Deserializes a message object of type '<CashMotion-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'repetitions)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'repetitions)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 't_move) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 't_wait) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CashMotion-request>)))
  "Returns string type for a service object of type '<CashMotion-request>"
  "hand_controller/CashMotionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CashMotion-request)))
  "Returns string type for a service object of type 'CashMotion-request"
  "hand_controller/CashMotionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CashMotion-request>)))
  "Returns md5sum for a message object of type '<CashMotion-request>"
  "58a33dc31f93f315437ec032733c7477")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CashMotion-request)))
  "Returns md5sum for a message object of type 'CashMotion-request"
  "58a33dc31f93f315437ec032733c7477")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CashMotion-request>)))
  "Returns full string definition for message of type '<CashMotion-request>"
  (cl:format cl:nil "uint16 repetitions~%int16 t_move~%int16 t_wait~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CashMotion-request)))
  "Returns full string definition for message of type 'CashMotion-request"
  (cl:format cl:nil "uint16 repetitions~%int16 t_move~%int16 t_wait~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CashMotion-request>))
  (cl:+ 0
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CashMotion-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CashMotion-request
    (cl:cons ':repetitions (repetitions msg))
    (cl:cons ':t_move (t_move msg))
    (cl:cons ':t_wait (t_wait msg))
))
;//! \htmlinclude CashMotion-response.msg.html

(cl:defclass <CashMotion-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass CashMotion-response (<CashMotion-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CashMotion-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CashMotion-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_controller-srv:<CashMotion-response> is deprecated: use hand_controller-srv:CashMotion-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CashMotion-response>) ostream)
  "Serializes a message object of type '<CashMotion-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CashMotion-response>) istream)
  "Deserializes a message object of type '<CashMotion-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CashMotion-response>)))
  "Returns string type for a service object of type '<CashMotion-response>"
  "hand_controller/CashMotionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CashMotion-response)))
  "Returns string type for a service object of type 'CashMotion-response"
  "hand_controller/CashMotionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CashMotion-response>)))
  "Returns md5sum for a message object of type '<CashMotion-response>"
  "58a33dc31f93f315437ec032733c7477")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CashMotion-response)))
  "Returns md5sum for a message object of type 'CashMotion-response"
  "58a33dc31f93f315437ec032733c7477")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CashMotion-response>)))
  "Returns full string definition for message of type '<CashMotion-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CashMotion-response)))
  "Returns full string definition for message of type 'CashMotion-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CashMotion-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CashMotion-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CashMotion-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CashMotion)))
  'CashMotion-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CashMotion)))
  'CashMotion-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CashMotion)))
  "Returns string type for a service object of type '<CashMotion>"
  "hand_controller/CashMotion")