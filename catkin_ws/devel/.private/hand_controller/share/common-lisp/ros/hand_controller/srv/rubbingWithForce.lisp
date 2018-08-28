; Auto-generated. Do not edit!


(cl:in-package hand_controller-srv)


;//! \htmlinclude rubbingWithForce-request.msg.html

(cl:defclass <rubbingWithForce-request> (roslisp-msg-protocol:ros-message)
  ((rubbingforce
    :reader rubbingforce
    :initarg :rubbingforce
    :type cl:fixnum
    :initform 0))
)

(cl:defclass rubbingWithForce-request (<rubbingWithForce-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rubbingWithForce-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rubbingWithForce-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_controller-srv:<rubbingWithForce-request> is deprecated: use hand_controller-srv:rubbingWithForce-request instead.")))

(cl:ensure-generic-function 'rubbingforce-val :lambda-list '(m))
(cl:defmethod rubbingforce-val ((m <rubbingWithForce-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:rubbingforce-val is deprecated.  Use hand_controller-srv:rubbingforce instead.")
  (rubbingforce m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rubbingWithForce-request>) ostream)
  "Serializes a message object of type '<rubbingWithForce-request>"
  (cl:let* ((signed (cl:slot-value msg 'rubbingforce)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rubbingWithForce-request>) istream)
  "Deserializes a message object of type '<rubbingWithForce-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rubbingforce) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rubbingWithForce-request>)))
  "Returns string type for a service object of type '<rubbingWithForce-request>"
  "hand_controller/rubbingWithForceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rubbingWithForce-request)))
  "Returns string type for a service object of type 'rubbingWithForce-request"
  "hand_controller/rubbingWithForceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rubbingWithForce-request>)))
  "Returns md5sum for a message object of type '<rubbingWithForce-request>"
  "a7c598bb551ac19d777f4b6aceec6663")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rubbingWithForce-request)))
  "Returns md5sum for a message object of type 'rubbingWithForce-request"
  "a7c598bb551ac19d777f4b6aceec6663")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rubbingWithForce-request>)))
  "Returns full string definition for message of type '<rubbingWithForce-request>"
  (cl:format cl:nil "int16 rubbingforce~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rubbingWithForce-request)))
  "Returns full string definition for message of type 'rubbingWithForce-request"
  (cl:format cl:nil "int16 rubbingforce~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rubbingWithForce-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rubbingWithForce-request>))
  "Converts a ROS message object to a list"
  (cl:list 'rubbingWithForce-request
    (cl:cons ':rubbingforce (rubbingforce msg))
))
;//! \htmlinclude rubbingWithForce-response.msg.html

(cl:defclass <rubbingWithForce-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass rubbingWithForce-response (<rubbingWithForce-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rubbingWithForce-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rubbingWithForce-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_controller-srv:<rubbingWithForce-response> is deprecated: use hand_controller-srv:rubbingWithForce-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rubbingWithForce-response>) ostream)
  "Serializes a message object of type '<rubbingWithForce-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rubbingWithForce-response>) istream)
  "Deserializes a message object of type '<rubbingWithForce-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rubbingWithForce-response>)))
  "Returns string type for a service object of type '<rubbingWithForce-response>"
  "hand_controller/rubbingWithForceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rubbingWithForce-response)))
  "Returns string type for a service object of type 'rubbingWithForce-response"
  "hand_controller/rubbingWithForceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rubbingWithForce-response>)))
  "Returns md5sum for a message object of type '<rubbingWithForce-response>"
  "a7c598bb551ac19d777f4b6aceec6663")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rubbingWithForce-response)))
  "Returns md5sum for a message object of type 'rubbingWithForce-response"
  "a7c598bb551ac19d777f4b6aceec6663")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rubbingWithForce-response>)))
  "Returns full string definition for message of type '<rubbingWithForce-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rubbingWithForce-response)))
  "Returns full string definition for message of type 'rubbingWithForce-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rubbingWithForce-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rubbingWithForce-response>))
  "Converts a ROS message object to a list"
  (cl:list 'rubbingWithForce-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'rubbingWithForce)))
  'rubbingWithForce-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'rubbingWithForce)))
  'rubbingWithForce-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rubbingWithForce)))
  "Returns string type for a service object of type '<rubbingWithForce>"
  "hand_controller/rubbingWithForce")