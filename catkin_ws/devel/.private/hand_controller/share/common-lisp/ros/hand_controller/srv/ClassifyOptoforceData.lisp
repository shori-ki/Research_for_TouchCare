; Auto-generated. Do not edit!


(cl:in-package hand_controller-srv)


;//! \htmlinclude ClassifyOptoforceData-request.msg.html

(cl:defclass <ClassifyOptoforceData-request> (roslisp-msg-protocol:ros-message)
  ((optoforcedatabuffer
    :reader optoforcedatabuffer
    :initarg :optoforcedatabuffer
    :type cl:string
    :initform ""))
)

(cl:defclass ClassifyOptoforceData-request (<ClassifyOptoforceData-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClassifyOptoforceData-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClassifyOptoforceData-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_controller-srv:<ClassifyOptoforceData-request> is deprecated: use hand_controller-srv:ClassifyOptoforceData-request instead.")))

(cl:ensure-generic-function 'optoforcedatabuffer-val :lambda-list '(m))
(cl:defmethod optoforcedatabuffer-val ((m <ClassifyOptoforceData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:optoforcedatabuffer-val is deprecated.  Use hand_controller-srv:optoforcedatabuffer instead.")
  (optoforcedatabuffer m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClassifyOptoforceData-request>) ostream)
  "Serializes a message object of type '<ClassifyOptoforceData-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'optoforcedatabuffer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'optoforcedatabuffer))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClassifyOptoforceData-request>) istream)
  "Deserializes a message object of type '<ClassifyOptoforceData-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'optoforcedatabuffer) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'optoforcedatabuffer) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClassifyOptoforceData-request>)))
  "Returns string type for a service object of type '<ClassifyOptoforceData-request>"
  "hand_controller/ClassifyOptoforceDataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClassifyOptoforceData-request)))
  "Returns string type for a service object of type 'ClassifyOptoforceData-request"
  "hand_controller/ClassifyOptoforceDataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClassifyOptoforceData-request>)))
  "Returns md5sum for a message object of type '<ClassifyOptoforceData-request>"
  "1b074e2d253a3e64ad0835b48e4ba924")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClassifyOptoforceData-request)))
  "Returns md5sum for a message object of type 'ClassifyOptoforceData-request"
  "1b074e2d253a3e64ad0835b48e4ba924")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClassifyOptoforceData-request>)))
  "Returns full string definition for message of type '<ClassifyOptoforceData-request>"
  (cl:format cl:nil "string optoforcedatabuffer~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClassifyOptoforceData-request)))
  "Returns full string definition for message of type 'ClassifyOptoforceData-request"
  (cl:format cl:nil "string optoforcedatabuffer~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClassifyOptoforceData-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'optoforcedatabuffer))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClassifyOptoforceData-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ClassifyOptoforceData-request
    (cl:cons ':optoforcedatabuffer (optoforcedatabuffer msg))
))
;//! \htmlinclude ClassifyOptoforceData-response.msg.html

(cl:defclass <ClassifyOptoforceData-response> (roslisp-msg-protocol:ros-message)
  ((classifyresult
    :reader classifyresult
    :initarg :classifyresult
    :type cl:string
    :initform ""))
)

(cl:defclass ClassifyOptoforceData-response (<ClassifyOptoforceData-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClassifyOptoforceData-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClassifyOptoforceData-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_controller-srv:<ClassifyOptoforceData-response> is deprecated: use hand_controller-srv:ClassifyOptoforceData-response instead.")))

(cl:ensure-generic-function 'classifyresult-val :lambda-list '(m))
(cl:defmethod classifyresult-val ((m <ClassifyOptoforceData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:classifyresult-val is deprecated.  Use hand_controller-srv:classifyresult instead.")
  (classifyresult m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClassifyOptoforceData-response>) ostream)
  "Serializes a message object of type '<ClassifyOptoforceData-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'classifyresult))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'classifyresult))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClassifyOptoforceData-response>) istream)
  "Deserializes a message object of type '<ClassifyOptoforceData-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'classifyresult) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'classifyresult) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClassifyOptoforceData-response>)))
  "Returns string type for a service object of type '<ClassifyOptoforceData-response>"
  "hand_controller/ClassifyOptoforceDataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClassifyOptoforceData-response)))
  "Returns string type for a service object of type 'ClassifyOptoforceData-response"
  "hand_controller/ClassifyOptoforceDataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClassifyOptoforceData-response>)))
  "Returns md5sum for a message object of type '<ClassifyOptoforceData-response>"
  "1b074e2d253a3e64ad0835b48e4ba924")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClassifyOptoforceData-response)))
  "Returns md5sum for a message object of type 'ClassifyOptoforceData-response"
  "1b074e2d253a3e64ad0835b48e4ba924")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClassifyOptoforceData-response>)))
  "Returns full string definition for message of type '<ClassifyOptoforceData-response>"
  (cl:format cl:nil "string classifyresult~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClassifyOptoforceData-response)))
  "Returns full string definition for message of type 'ClassifyOptoforceData-response"
  (cl:format cl:nil "string classifyresult~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClassifyOptoforceData-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'classifyresult))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClassifyOptoforceData-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ClassifyOptoforceData-response
    (cl:cons ':classifyresult (classifyresult msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ClassifyOptoforceData)))
  'ClassifyOptoforceData-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ClassifyOptoforceData)))
  'ClassifyOptoforceData-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClassifyOptoforceData)))
  "Returns string type for a service object of type '<ClassifyOptoforceData>"
  "hand_controller/ClassifyOptoforceData")