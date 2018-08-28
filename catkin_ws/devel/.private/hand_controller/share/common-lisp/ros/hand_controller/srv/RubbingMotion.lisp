; Auto-generated. Do not edit!


(cl:in-package hand_controller-srv)


;//! \htmlinclude RubbingMotion-request.msg.html

(cl:defclass <RubbingMotion-request> (roslisp-msg-protocol:ros-message)
  ((rubbingmotionrepetitions
    :reader rubbingmotionrepetitions
    :initarg :rubbingmotionrepetitions
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RubbingMotion-request (<RubbingMotion-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RubbingMotion-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RubbingMotion-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_controller-srv:<RubbingMotion-request> is deprecated: use hand_controller-srv:RubbingMotion-request instead.")))

(cl:ensure-generic-function 'rubbingmotionrepetitions-val :lambda-list '(m))
(cl:defmethod rubbingmotionrepetitions-val ((m <RubbingMotion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:rubbingmotionrepetitions-val is deprecated.  Use hand_controller-srv:rubbingmotionrepetitions instead.")
  (rubbingmotionrepetitions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RubbingMotion-request>) ostream)
  "Serializes a message object of type '<RubbingMotion-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rubbingmotionrepetitions)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rubbingmotionrepetitions)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RubbingMotion-request>) istream)
  "Deserializes a message object of type '<RubbingMotion-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rubbingmotionrepetitions)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rubbingmotionrepetitions)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RubbingMotion-request>)))
  "Returns string type for a service object of type '<RubbingMotion-request>"
  "hand_controller/RubbingMotionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RubbingMotion-request)))
  "Returns string type for a service object of type 'RubbingMotion-request"
  "hand_controller/RubbingMotionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RubbingMotion-request>)))
  "Returns md5sum for a message object of type '<RubbingMotion-request>"
  "558b361be41d47909cd85fcfff79812b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RubbingMotion-request)))
  "Returns md5sum for a message object of type 'RubbingMotion-request"
  "558b361be41d47909cd85fcfff79812b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RubbingMotion-request>)))
  "Returns full string definition for message of type '<RubbingMotion-request>"
  (cl:format cl:nil "uint16 rubbingmotionrepetitions~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RubbingMotion-request)))
  "Returns full string definition for message of type 'RubbingMotion-request"
  (cl:format cl:nil "uint16 rubbingmotionrepetitions~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RubbingMotion-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RubbingMotion-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RubbingMotion-request
    (cl:cons ':rubbingmotionrepetitions (rubbingmotionrepetitions msg))
))
;//! \htmlinclude RubbingMotion-response.msg.html

(cl:defclass <RubbingMotion-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RubbingMotion-response (<RubbingMotion-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RubbingMotion-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RubbingMotion-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_controller-srv:<RubbingMotion-response> is deprecated: use hand_controller-srv:RubbingMotion-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RubbingMotion-response>) ostream)
  "Serializes a message object of type '<RubbingMotion-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RubbingMotion-response>) istream)
  "Deserializes a message object of type '<RubbingMotion-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RubbingMotion-response>)))
  "Returns string type for a service object of type '<RubbingMotion-response>"
  "hand_controller/RubbingMotionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RubbingMotion-response)))
  "Returns string type for a service object of type 'RubbingMotion-response"
  "hand_controller/RubbingMotionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RubbingMotion-response>)))
  "Returns md5sum for a message object of type '<RubbingMotion-response>"
  "558b361be41d47909cd85fcfff79812b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RubbingMotion-response)))
  "Returns md5sum for a message object of type 'RubbingMotion-response"
  "558b361be41d47909cd85fcfff79812b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RubbingMotion-response>)))
  "Returns full string definition for message of type '<RubbingMotion-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RubbingMotion-response)))
  "Returns full string definition for message of type 'RubbingMotion-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RubbingMotion-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RubbingMotion-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RubbingMotion-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RubbingMotion)))
  'RubbingMotion-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RubbingMotion)))
  'RubbingMotion-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RubbingMotion)))
  "Returns string type for a service object of type '<RubbingMotion>"
  "hand_controller/RubbingMotion")