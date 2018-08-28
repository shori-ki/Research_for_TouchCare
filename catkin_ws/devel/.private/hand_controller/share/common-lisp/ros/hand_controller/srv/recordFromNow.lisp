; Auto-generated. Do not edit!


(cl:in-package hand_controller-srv)


;//! \htmlinclude recordFromNow-request.msg.html

(cl:defclass <recordFromNow-request> (roslisp-msg-protocol:ros-message)
  ((recordFromNow
    :reader recordFromNow
    :initarg :recordFromNow
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass recordFromNow-request (<recordFromNow-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <recordFromNow-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'recordFromNow-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_controller-srv:<recordFromNow-request> is deprecated: use hand_controller-srv:recordFromNow-request instead.")))

(cl:ensure-generic-function 'recordFromNow-val :lambda-list '(m))
(cl:defmethod recordFromNow-val ((m <recordFromNow-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:recordFromNow-val is deprecated.  Use hand_controller-srv:recordFromNow instead.")
  (recordFromNow m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <recordFromNow-request>) ostream)
  "Serializes a message object of type '<recordFromNow-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'recordFromNow) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <recordFromNow-request>) istream)
  "Deserializes a message object of type '<recordFromNow-request>"
    (cl:setf (cl:slot-value msg 'recordFromNow) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<recordFromNow-request>)))
  "Returns string type for a service object of type '<recordFromNow-request>"
  "hand_controller/recordFromNowRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'recordFromNow-request)))
  "Returns string type for a service object of type 'recordFromNow-request"
  "hand_controller/recordFromNowRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<recordFromNow-request>)))
  "Returns md5sum for a message object of type '<recordFromNow-request>"
  "a7a6eb955c6d382d4e09c68b1ae9adfc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'recordFromNow-request)))
  "Returns md5sum for a message object of type 'recordFromNow-request"
  "a7a6eb955c6d382d4e09c68b1ae9adfc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<recordFromNow-request>)))
  "Returns full string definition for message of type '<recordFromNow-request>"
  (cl:format cl:nil "bool recordFromNow~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'recordFromNow-request)))
  "Returns full string definition for message of type 'recordFromNow-request"
  (cl:format cl:nil "bool recordFromNow~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <recordFromNow-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <recordFromNow-request>))
  "Converts a ROS message object to a list"
  (cl:list 'recordFromNow-request
    (cl:cons ':recordFromNow (recordFromNow msg))
))
;//! \htmlinclude recordFromNow-response.msg.html

(cl:defclass <recordFromNow-response> (roslisp-msg-protocol:ros-message)
  ((recordFromNow
    :reader recordFromNow
    :initarg :recordFromNow
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass recordFromNow-response (<recordFromNow-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <recordFromNow-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'recordFromNow-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_controller-srv:<recordFromNow-response> is deprecated: use hand_controller-srv:recordFromNow-response instead.")))

(cl:ensure-generic-function 'recordFromNow-val :lambda-list '(m))
(cl:defmethod recordFromNow-val ((m <recordFromNow-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:recordFromNow-val is deprecated.  Use hand_controller-srv:recordFromNow instead.")
  (recordFromNow m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <recordFromNow-response>) ostream)
  "Serializes a message object of type '<recordFromNow-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'recordFromNow) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <recordFromNow-response>) istream)
  "Deserializes a message object of type '<recordFromNow-response>"
    (cl:setf (cl:slot-value msg 'recordFromNow) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<recordFromNow-response>)))
  "Returns string type for a service object of type '<recordFromNow-response>"
  "hand_controller/recordFromNowResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'recordFromNow-response)))
  "Returns string type for a service object of type 'recordFromNow-response"
  "hand_controller/recordFromNowResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<recordFromNow-response>)))
  "Returns md5sum for a message object of type '<recordFromNow-response>"
  "a7a6eb955c6d382d4e09c68b1ae9adfc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'recordFromNow-response)))
  "Returns md5sum for a message object of type 'recordFromNow-response"
  "a7a6eb955c6d382d4e09c68b1ae9adfc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<recordFromNow-response>)))
  "Returns full string definition for message of type '<recordFromNow-response>"
  (cl:format cl:nil "bool recordFromNow~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'recordFromNow-response)))
  "Returns full string definition for message of type 'recordFromNow-response"
  (cl:format cl:nil "bool recordFromNow~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <recordFromNow-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <recordFromNow-response>))
  "Converts a ROS message object to a list"
  (cl:list 'recordFromNow-response
    (cl:cons ':recordFromNow (recordFromNow msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'recordFromNow)))
  'recordFromNow-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'recordFromNow)))
  'recordFromNow-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'recordFromNow)))
  "Returns string type for a service object of type '<recordFromNow>"
  "hand_controller/recordFromNow")