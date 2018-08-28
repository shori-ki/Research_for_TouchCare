; Auto-generated. Do not edit!


(cl:in-package hand_controller-srv)


;//! \htmlinclude cashMotionSet-request.msg.html

(cl:defclass <cashMotionSet-request> (roslisp-msg-protocol:ros-message)
  ((repetitions
    :reader repetitions
    :initarg :repetitions
    :type cl:fixnum
    :initform 0)
   (set
    :reader set
    :initarg :set
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

(cl:defclass cashMotionSet-request (<cashMotionSet-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cashMotionSet-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cashMotionSet-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_controller-srv:<cashMotionSet-request> is deprecated: use hand_controller-srv:cashMotionSet-request instead.")))

(cl:ensure-generic-function 'repetitions-val :lambda-list '(m))
(cl:defmethod repetitions-val ((m <cashMotionSet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:repetitions-val is deprecated.  Use hand_controller-srv:repetitions instead.")
  (repetitions m))

(cl:ensure-generic-function 'set-val :lambda-list '(m))
(cl:defmethod set-val ((m <cashMotionSet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:set-val is deprecated.  Use hand_controller-srv:set instead.")
  (set m))

(cl:ensure-generic-function 't_move-val :lambda-list '(m))
(cl:defmethod t_move-val ((m <cashMotionSet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:t_move-val is deprecated.  Use hand_controller-srv:t_move instead.")
  (t_move m))

(cl:ensure-generic-function 't_wait-val :lambda-list '(m))
(cl:defmethod t_wait-val ((m <cashMotionSet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:t_wait-val is deprecated.  Use hand_controller-srv:t_wait instead.")
  (t_wait m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cashMotionSet-request>) ostream)
  "Serializes a message object of type '<cashMotionSet-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'repetitions)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'repetitions)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'set)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 't_move)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 't_wait)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cashMotionSet-request>) istream)
  "Deserializes a message object of type '<cashMotionSet-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'repetitions)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'repetitions)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'set) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cashMotionSet-request>)))
  "Returns string type for a service object of type '<cashMotionSet-request>"
  "hand_controller/cashMotionSetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cashMotionSet-request)))
  "Returns string type for a service object of type 'cashMotionSet-request"
  "hand_controller/cashMotionSetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cashMotionSet-request>)))
  "Returns md5sum for a message object of type '<cashMotionSet-request>"
  "109cc6351a2b407de68db394282f6650")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cashMotionSet-request)))
  "Returns md5sum for a message object of type 'cashMotionSet-request"
  "109cc6351a2b407de68db394282f6650")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cashMotionSet-request>)))
  "Returns full string definition for message of type '<cashMotionSet-request>"
  (cl:format cl:nil "uint16 repetitions~%int16 set~%int16 t_move~%int16 t_wait~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cashMotionSet-request)))
  "Returns full string definition for message of type 'cashMotionSet-request"
  (cl:format cl:nil "uint16 repetitions~%int16 set~%int16 t_move~%int16 t_wait~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cashMotionSet-request>))
  (cl:+ 0
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cashMotionSet-request>))
  "Converts a ROS message object to a list"
  (cl:list 'cashMotionSet-request
    (cl:cons ':repetitions (repetitions msg))
    (cl:cons ':set (set msg))
    (cl:cons ':t_move (t_move msg))
    (cl:cons ':t_wait (t_wait msg))
))
;//! \htmlinclude cashMotionSet-response.msg.html

(cl:defclass <cashMotionSet-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass cashMotionSet-response (<cashMotionSet-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cashMotionSet-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cashMotionSet-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_controller-srv:<cashMotionSet-response> is deprecated: use hand_controller-srv:cashMotionSet-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cashMotionSet-response>) ostream)
  "Serializes a message object of type '<cashMotionSet-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cashMotionSet-response>) istream)
  "Deserializes a message object of type '<cashMotionSet-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cashMotionSet-response>)))
  "Returns string type for a service object of type '<cashMotionSet-response>"
  "hand_controller/cashMotionSetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cashMotionSet-response)))
  "Returns string type for a service object of type 'cashMotionSet-response"
  "hand_controller/cashMotionSetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cashMotionSet-response>)))
  "Returns md5sum for a message object of type '<cashMotionSet-response>"
  "109cc6351a2b407de68db394282f6650")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cashMotionSet-response)))
  "Returns md5sum for a message object of type 'cashMotionSet-response"
  "109cc6351a2b407de68db394282f6650")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cashMotionSet-response>)))
  "Returns full string definition for message of type '<cashMotionSet-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cashMotionSet-response)))
  "Returns full string definition for message of type 'cashMotionSet-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cashMotionSet-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cashMotionSet-response>))
  "Converts a ROS message object to a list"
  (cl:list 'cashMotionSet-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'cashMotionSet)))
  'cashMotionSet-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'cashMotionSet)))
  'cashMotionSet-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cashMotionSet)))
  "Returns string type for a service object of type '<cashMotionSet>"
  "hand_controller/cashMotionSet")