; Auto-generated. Do not edit!


(cl:in-package hand_controller-srv)


;//! \htmlinclude DemoGetForceDistribution-request.msg.html

(cl:defclass <DemoGetForceDistribution-request> (roslisp-msg-protocol:ros-message)
  ((iStart
    :reader iStart
    :initarg :iStart
    :type cl:fixnum
    :initform 0)
   (iEnd
    :reader iEnd
    :initarg :iEnd
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DemoGetForceDistribution-request (<DemoGetForceDistribution-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DemoGetForceDistribution-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DemoGetForceDistribution-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_controller-srv:<DemoGetForceDistribution-request> is deprecated: use hand_controller-srv:DemoGetForceDistribution-request instead.")))

(cl:ensure-generic-function 'iStart-val :lambda-list '(m))
(cl:defmethod iStart-val ((m <DemoGetForceDistribution-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:iStart-val is deprecated.  Use hand_controller-srv:iStart instead.")
  (iStart m))

(cl:ensure-generic-function 'iEnd-val :lambda-list '(m))
(cl:defmethod iEnd-val ((m <DemoGetForceDistribution-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:iEnd-val is deprecated.  Use hand_controller-srv:iEnd instead.")
  (iEnd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DemoGetForceDistribution-request>) ostream)
  "Serializes a message object of type '<DemoGetForceDistribution-request>"
  (cl:let* ((signed (cl:slot-value msg 'iStart)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'iEnd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DemoGetForceDistribution-request>) istream)
  "Deserializes a message object of type '<DemoGetForceDistribution-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'iStart) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'iEnd) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DemoGetForceDistribution-request>)))
  "Returns string type for a service object of type '<DemoGetForceDistribution-request>"
  "hand_controller/DemoGetForceDistributionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DemoGetForceDistribution-request)))
  "Returns string type for a service object of type 'DemoGetForceDistribution-request"
  "hand_controller/DemoGetForceDistributionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DemoGetForceDistribution-request>)))
  "Returns md5sum for a message object of type '<DemoGetForceDistribution-request>"
  "bab83eaafe63f283402717a090950e23")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DemoGetForceDistribution-request)))
  "Returns md5sum for a message object of type 'DemoGetForceDistribution-request"
  "bab83eaafe63f283402717a090950e23")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DemoGetForceDistribution-request>)))
  "Returns full string definition for message of type '<DemoGetForceDistribution-request>"
  (cl:format cl:nil "int16 iStart~%int16 iEnd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DemoGetForceDistribution-request)))
  "Returns full string definition for message of type 'DemoGetForceDistribution-request"
  (cl:format cl:nil "int16 iStart~%int16 iEnd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DemoGetForceDistribution-request>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DemoGetForceDistribution-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DemoGetForceDistribution-request
    (cl:cons ':iStart (iStart msg))
    (cl:cons ':iEnd (iEnd msg))
))
;//! \htmlinclude DemoGetForceDistribution-response.msg.html

(cl:defclass <DemoGetForceDistribution-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DemoGetForceDistribution-response (<DemoGetForceDistribution-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DemoGetForceDistribution-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DemoGetForceDistribution-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_controller-srv:<DemoGetForceDistribution-response> is deprecated: use hand_controller-srv:DemoGetForceDistribution-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DemoGetForceDistribution-response>) ostream)
  "Serializes a message object of type '<DemoGetForceDistribution-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DemoGetForceDistribution-response>) istream)
  "Deserializes a message object of type '<DemoGetForceDistribution-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DemoGetForceDistribution-response>)))
  "Returns string type for a service object of type '<DemoGetForceDistribution-response>"
  "hand_controller/DemoGetForceDistributionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DemoGetForceDistribution-response)))
  "Returns string type for a service object of type 'DemoGetForceDistribution-response"
  "hand_controller/DemoGetForceDistributionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DemoGetForceDistribution-response>)))
  "Returns md5sum for a message object of type '<DemoGetForceDistribution-response>"
  "bab83eaafe63f283402717a090950e23")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DemoGetForceDistribution-response)))
  "Returns md5sum for a message object of type 'DemoGetForceDistribution-response"
  "bab83eaafe63f283402717a090950e23")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DemoGetForceDistribution-response>)))
  "Returns full string definition for message of type '<DemoGetForceDistribution-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DemoGetForceDistribution-response)))
  "Returns full string definition for message of type 'DemoGetForceDistribution-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DemoGetForceDistribution-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DemoGetForceDistribution-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DemoGetForceDistribution-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DemoGetForceDistribution)))
  'DemoGetForceDistribution-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DemoGetForceDistribution)))
  'DemoGetForceDistribution-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DemoGetForceDistribution)))
  "Returns string type for a service object of type '<DemoGetForceDistribution>"
  "hand_controller/DemoGetForceDistribution")