; Auto-generated. Do not edit!


(cl:in-package hand_controller-srv)


;//! \htmlinclude GraspWithForce-request.msg.html

(cl:defclass <GraspWithForce-request> (roslisp-msg-protocol:ros-message)
  ((graspforce
    :reader graspforce
    :initarg :graspforce
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GraspWithForce-request (<GraspWithForce-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GraspWithForce-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GraspWithForce-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_controller-srv:<GraspWithForce-request> is deprecated: use hand_controller-srv:GraspWithForce-request instead.")))

(cl:ensure-generic-function 'graspforce-val :lambda-list '(m))
(cl:defmethod graspforce-val ((m <GraspWithForce-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:graspforce-val is deprecated.  Use hand_controller-srv:graspforce instead.")
  (graspforce m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GraspWithForce-request>) ostream)
  "Serializes a message object of type '<GraspWithForce-request>"
  (cl:let* ((signed (cl:slot-value msg 'graspforce)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GraspWithForce-request>) istream)
  "Deserializes a message object of type '<GraspWithForce-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'graspforce) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GraspWithForce-request>)))
  "Returns string type for a service object of type '<GraspWithForce-request>"
  "hand_controller/GraspWithForceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GraspWithForce-request)))
  "Returns string type for a service object of type 'GraspWithForce-request"
  "hand_controller/GraspWithForceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GraspWithForce-request>)))
  "Returns md5sum for a message object of type '<GraspWithForce-request>"
  "6b622b99eb46c5f82062546c298013a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GraspWithForce-request)))
  "Returns md5sum for a message object of type 'GraspWithForce-request"
  "6b622b99eb46c5f82062546c298013a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GraspWithForce-request>)))
  "Returns full string definition for message of type '<GraspWithForce-request>"
  (cl:format cl:nil "int16 graspforce~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GraspWithForce-request)))
  "Returns full string definition for message of type 'GraspWithForce-request"
  (cl:format cl:nil "int16 graspforce~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GraspWithForce-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GraspWithForce-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GraspWithForce-request
    (cl:cons ':graspforce (graspforce msg))
))
;//! \htmlinclude GraspWithForce-response.msg.html

(cl:defclass <GraspWithForce-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GraspWithForce-response (<GraspWithForce-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GraspWithForce-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GraspWithForce-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_controller-srv:<GraspWithForce-response> is deprecated: use hand_controller-srv:GraspWithForce-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GraspWithForce-response>) ostream)
  "Serializes a message object of type '<GraspWithForce-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GraspWithForce-response>) istream)
  "Deserializes a message object of type '<GraspWithForce-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GraspWithForce-response>)))
  "Returns string type for a service object of type '<GraspWithForce-response>"
  "hand_controller/GraspWithForceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GraspWithForce-response)))
  "Returns string type for a service object of type 'GraspWithForce-response"
  "hand_controller/GraspWithForceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GraspWithForce-response>)))
  "Returns md5sum for a message object of type '<GraspWithForce-response>"
  "6b622b99eb46c5f82062546c298013a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GraspWithForce-response)))
  "Returns md5sum for a message object of type 'GraspWithForce-response"
  "6b622b99eb46c5f82062546c298013a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GraspWithForce-response>)))
  "Returns full string definition for message of type '<GraspWithForce-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GraspWithForce-response)))
  "Returns full string definition for message of type 'GraspWithForce-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GraspWithForce-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GraspWithForce-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GraspWithForce-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GraspWithForce)))
  'GraspWithForce-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GraspWithForce)))
  'GraspWithForce-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GraspWithForce)))
  "Returns string type for a service object of type '<GraspWithForce>"
  "hand_controller/GraspWithForce")