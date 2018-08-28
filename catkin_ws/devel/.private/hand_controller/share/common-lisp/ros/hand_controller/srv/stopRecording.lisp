; Auto-generated. Do not edit!


(cl:in-package hand_controller-srv)


;//! \htmlinclude stopRecording-request.msg.html

(cl:defclass <stopRecording-request> (roslisp-msg-protocol:ros-message)
  ((stopRecording
    :reader stopRecording
    :initarg :stopRecording
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass stopRecording-request (<stopRecording-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <stopRecording-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'stopRecording-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_controller-srv:<stopRecording-request> is deprecated: use hand_controller-srv:stopRecording-request instead.")))

(cl:ensure-generic-function 'stopRecording-val :lambda-list '(m))
(cl:defmethod stopRecording-val ((m <stopRecording-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:stopRecording-val is deprecated.  Use hand_controller-srv:stopRecording instead.")
  (stopRecording m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <stopRecording-request>) ostream)
  "Serializes a message object of type '<stopRecording-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stopRecording) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <stopRecording-request>) istream)
  "Deserializes a message object of type '<stopRecording-request>"
    (cl:setf (cl:slot-value msg 'stopRecording) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<stopRecording-request>)))
  "Returns string type for a service object of type '<stopRecording-request>"
  "hand_controller/stopRecordingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'stopRecording-request)))
  "Returns string type for a service object of type 'stopRecording-request"
  "hand_controller/stopRecordingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<stopRecording-request>)))
  "Returns md5sum for a message object of type '<stopRecording-request>"
  "f583eeb433b8e7ea4c20a3695d033c86")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'stopRecording-request)))
  "Returns md5sum for a message object of type 'stopRecording-request"
  "f583eeb433b8e7ea4c20a3695d033c86")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<stopRecording-request>)))
  "Returns full string definition for message of type '<stopRecording-request>"
  (cl:format cl:nil "bool stopRecording~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'stopRecording-request)))
  "Returns full string definition for message of type 'stopRecording-request"
  (cl:format cl:nil "bool stopRecording~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <stopRecording-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <stopRecording-request>))
  "Converts a ROS message object to a list"
  (cl:list 'stopRecording-request
    (cl:cons ':stopRecording (stopRecording msg))
))
;//! \htmlinclude stopRecording-response.msg.html

(cl:defclass <stopRecording-response> (roslisp-msg-protocol:ros-message)
  ((stopRecording
    :reader stopRecording
    :initarg :stopRecording
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass stopRecording-response (<stopRecording-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <stopRecording-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'stopRecording-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_controller-srv:<stopRecording-response> is deprecated: use hand_controller-srv:stopRecording-response instead.")))

(cl:ensure-generic-function 'stopRecording-val :lambda-list '(m))
(cl:defmethod stopRecording-val ((m <stopRecording-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:stopRecording-val is deprecated.  Use hand_controller-srv:stopRecording instead.")
  (stopRecording m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <stopRecording-response>) ostream)
  "Serializes a message object of type '<stopRecording-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stopRecording) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <stopRecording-response>) istream)
  "Deserializes a message object of type '<stopRecording-response>"
    (cl:setf (cl:slot-value msg 'stopRecording) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<stopRecording-response>)))
  "Returns string type for a service object of type '<stopRecording-response>"
  "hand_controller/stopRecordingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'stopRecording-response)))
  "Returns string type for a service object of type 'stopRecording-response"
  "hand_controller/stopRecordingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<stopRecording-response>)))
  "Returns md5sum for a message object of type '<stopRecording-response>"
  "f583eeb433b8e7ea4c20a3695d033c86")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'stopRecording-response)))
  "Returns md5sum for a message object of type 'stopRecording-response"
  "f583eeb433b8e7ea4c20a3695d033c86")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<stopRecording-response>)))
  "Returns full string definition for message of type '<stopRecording-response>"
  (cl:format cl:nil "bool stopRecording~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'stopRecording-response)))
  "Returns full string definition for message of type 'stopRecording-response"
  (cl:format cl:nil "bool stopRecording~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <stopRecording-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <stopRecording-response>))
  "Converts a ROS message object to a list"
  (cl:list 'stopRecording-response
    (cl:cons ':stopRecording (stopRecording msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'stopRecording)))
  'stopRecording-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'stopRecording)))
  'stopRecording-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'stopRecording)))
  "Returns string type for a service object of type '<stopRecording>"
  "hand_controller/stopRecording")