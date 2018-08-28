; Auto-generated. Do not edit!


(cl:in-package hand_controller-srv)


;//! \htmlinclude Classify-request.msg.html

(cl:defclass <Classify-request> (roslisp-msg-protocol:ros-message)
  ((force_x
    :reader force_x
    :initarg :force_x
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (force_y
    :reader force_y
    :initarg :force_y
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (force_z
    :reader force_z
    :initarg :force_z
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Classify-request (<Classify-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Classify-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Classify-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_controller-srv:<Classify-request> is deprecated: use hand_controller-srv:Classify-request instead.")))

(cl:ensure-generic-function 'force_x-val :lambda-list '(m))
(cl:defmethod force_x-val ((m <Classify-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:force_x-val is deprecated.  Use hand_controller-srv:force_x instead.")
  (force_x m))

(cl:ensure-generic-function 'force_y-val :lambda-list '(m))
(cl:defmethod force_y-val ((m <Classify-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:force_y-val is deprecated.  Use hand_controller-srv:force_y instead.")
  (force_y m))

(cl:ensure-generic-function 'force_z-val :lambda-list '(m))
(cl:defmethod force_z-val ((m <Classify-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:force_z-val is deprecated.  Use hand_controller-srv:force_z instead.")
  (force_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Classify-request>) ostream)
  "Serializes a message object of type '<Classify-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'force_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'force_x))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'force_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'force_y))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'force_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'force_z))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Classify-request>) istream)
  "Deserializes a message object of type '<Classify-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'force_x) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'force_x)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'force_y) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'force_y)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'force_z) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'force_z)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Classify-request>)))
  "Returns string type for a service object of type '<Classify-request>"
  "hand_controller/ClassifyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Classify-request)))
  "Returns string type for a service object of type 'Classify-request"
  "hand_controller/ClassifyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Classify-request>)))
  "Returns md5sum for a message object of type '<Classify-request>"
  "a7d3514bb828bdf6301e6a471a1834ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Classify-request)))
  "Returns md5sum for a message object of type 'Classify-request"
  "a7d3514bb828bdf6301e6a471a1834ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Classify-request>)))
  "Returns full string definition for message of type '<Classify-request>"
  (cl:format cl:nil "float64[] force_x~%float64[] force_y~%float64[] force_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Classify-request)))
  "Returns full string definition for message of type 'Classify-request"
  (cl:format cl:nil "float64[] force_x~%float64[] force_y~%float64[] force_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Classify-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'force_x) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'force_y) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'force_z) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Classify-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Classify-request
    (cl:cons ':force_x (force_x msg))
    (cl:cons ':force_y (force_y msg))
    (cl:cons ':force_z (force_z msg))
))
;//! \htmlinclude Classify-response.msg.html

(cl:defclass <Classify-response> (roslisp-msg-protocol:ros-message)
  ((label
    :reader label
    :initarg :label
    :type cl:string
    :initform ""))
)

(cl:defclass Classify-response (<Classify-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Classify-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Classify-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_controller-srv:<Classify-response> is deprecated: use hand_controller-srv:Classify-response instead.")))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <Classify-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_controller-srv:label-val is deprecated.  Use hand_controller-srv:label instead.")
  (label m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Classify-response>) ostream)
  "Serializes a message object of type '<Classify-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'label))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'label))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Classify-response>) istream)
  "Deserializes a message object of type '<Classify-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'label) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'label) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Classify-response>)))
  "Returns string type for a service object of type '<Classify-response>"
  "hand_controller/ClassifyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Classify-response)))
  "Returns string type for a service object of type 'Classify-response"
  "hand_controller/ClassifyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Classify-response>)))
  "Returns md5sum for a message object of type '<Classify-response>"
  "a7d3514bb828bdf6301e6a471a1834ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Classify-response)))
  "Returns md5sum for a message object of type 'Classify-response"
  "a7d3514bb828bdf6301e6a471a1834ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Classify-response>)))
  "Returns full string definition for message of type '<Classify-response>"
  (cl:format cl:nil "string label~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Classify-response)))
  "Returns full string definition for message of type 'Classify-response"
  (cl:format cl:nil "string label~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Classify-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'label))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Classify-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Classify-response
    (cl:cons ':label (label msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Classify)))
  'Classify-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Classify)))
  'Classify-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Classify)))
  "Returns string type for a service object of type '<Classify>"
  "hand_controller/Classify")