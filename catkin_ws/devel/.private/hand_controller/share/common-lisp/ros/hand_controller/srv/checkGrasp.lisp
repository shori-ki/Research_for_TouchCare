; Auto-generated. Do not edit!


(cl:in-package hand_controller-srv)


;//! \htmlinclude checkGrasp-request.msg.html

(cl:defclass <checkGrasp-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass checkGrasp-request (<checkGrasp-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <checkGrasp-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'checkGrasp-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_controller-srv:<checkGrasp-request> is deprecated: use hand_controller-srv:checkGrasp-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <checkGrasp-request>) ostream)
  "Serializes a message object of type '<checkGrasp-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <checkGrasp-request>) istream)
  "Deserializes a message object of type '<checkGrasp-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<checkGrasp-request>)))
  "Returns string type for a service object of type '<checkGrasp-request>"
  "hand_controller/checkGraspRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'checkGrasp-request)))
  "Returns string type for a service object of type 'checkGrasp-request"
  "hand_controller/checkGraspRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<checkGrasp-request>)))
  "Returns md5sum for a message object of type '<checkGrasp-request>"
  "a87fef5f943ec854fec992ab903ef3aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'checkGrasp-request)))
  "Returns md5sum for a message object of type 'checkGrasp-request"
  "a87fef5f943ec854fec992ab903ef3aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<checkGrasp-request>)))
  "Returns full string definition for message of type '<checkGrasp-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'checkGrasp-request)))
  "Returns full string definition for message of type 'checkGrasp-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <checkGrasp-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <checkGrasp-request>))
  "Converts a ROS message object to a list"
  (cl:list 'checkGrasp-request
))
;//! \htmlinclude checkGrasp-response.msg.html

(cl:defclass <checkGrasp-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (single_layer
    :reader single_layer
    :initarg :single_layer
    :type cl:boolean
    :initform cl:nil)
   (material
    :reader material
    :initarg :material
    :type cl:string
    :initform ""))
)

(cl:defclass checkGrasp-response (<checkGrasp-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <checkGrasp-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'checkGrasp-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_controller-srv:<checkGrasp-response> is deprecated: use hand_controller-srv:checkGrasp-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <checkGrasp-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:success-val is deprecated.  Use hand_controller-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'single_layer-val :lambda-list '(m))
(cl:defmethod single_layer-val ((m <checkGrasp-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:single_layer-val is deprecated.  Use hand_controller-srv:single_layer instead.")
  (single_layer m))

(cl:ensure-generic-function 'material-val :lambda-list '(m))
(cl:defmethod material-val ((m <checkGrasp-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:material-val is deprecated.  Use hand_controller-srv:material instead.")
  (material m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <checkGrasp-response>) ostream)
  "Serializes a message object of type '<checkGrasp-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'single_layer) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'material))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'material))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <checkGrasp-response>) istream)
  "Deserializes a message object of type '<checkGrasp-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'single_layer) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'material) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'material) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<checkGrasp-response>)))
  "Returns string type for a service object of type '<checkGrasp-response>"
  "hand_controller/checkGraspResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'checkGrasp-response)))
  "Returns string type for a service object of type 'checkGrasp-response"
  "hand_controller/checkGraspResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<checkGrasp-response>)))
  "Returns md5sum for a message object of type '<checkGrasp-response>"
  "a87fef5f943ec854fec992ab903ef3aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'checkGrasp-response)))
  "Returns md5sum for a message object of type 'checkGrasp-response"
  "a87fef5f943ec854fec992ab903ef3aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<checkGrasp-response>)))
  "Returns full string definition for message of type '<checkGrasp-response>"
  (cl:format cl:nil "bool success~%bool single_layer~%string material~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'checkGrasp-response)))
  "Returns full string definition for message of type 'checkGrasp-response"
  (cl:format cl:nil "bool success~%bool single_layer~%string material~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <checkGrasp-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'material))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <checkGrasp-response>))
  "Converts a ROS message object to a list"
  (cl:list 'checkGrasp-response
    (cl:cons ':success (success msg))
    (cl:cons ':single_layer (single_layer msg))
    (cl:cons ':material (material msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'checkGrasp)))
  'checkGrasp-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'checkGrasp)))
  'checkGrasp-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'checkGrasp)))
  "Returns string type for a service object of type '<checkGrasp>"
  "hand_controller/checkGrasp")