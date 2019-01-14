; Auto-generated. Do not edit!


(cl:in-package katech_msg_test_pkg-msg)


;//! \htmlinclude Katech_test_msg.msg.html

(cl:defclass <Katech_test_msg> (roslisp-msg-protocol:ros-message)
  ((velocity
    :reader velocity
    :initarg :velocity
    :type cl:integer
    :initform 0)
   (wheel
    :reader wheel
    :initarg :wheel
    :type cl:integer
    :initform 0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0))
)

(cl:defclass Katech_test_msg (<Katech_test_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Katech_test_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Katech_test_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name katech_msg_test_pkg-msg:<Katech_test_msg> is deprecated: use katech_msg_test_pkg-msg:Katech_test_msg instead.")))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <Katech_test_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader katech_msg_test_pkg-msg:velocity-val is deprecated.  Use katech_msg_test_pkg-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'wheel-val :lambda-list '(m))
(cl:defmethod wheel-val ((m <Katech_test_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader katech_msg_test_pkg-msg:wheel-val is deprecated.  Use katech_msg_test_pkg-msg:wheel instead.")
  (wheel m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <Katech_test_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader katech_msg_test_pkg-msg:yaw-val is deprecated.  Use katech_msg_test_pkg-msg:yaw instead.")
  (yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Katech_test_msg>) ostream)
  "Serializes a message object of type '<Katech_test_msg>"
  (cl:let* ((signed (cl:slot-value msg 'velocity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'wheel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Katech_test_msg>) istream)
  "Deserializes a message object of type '<Katech_test_msg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'velocity) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wheel) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Katech_test_msg>)))
  "Returns string type for a message object of type '<Katech_test_msg>"
  "katech_msg_test_pkg/Katech_test_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Katech_test_msg)))
  "Returns string type for a message object of type 'Katech_test_msg"
  "katech_msg_test_pkg/Katech_test_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Katech_test_msg>)))
  "Returns md5sum for a message object of type '<Katech_test_msg>"
  "587936dd7ca4add6c71b58cdb7ef89ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Katech_test_msg)))
  "Returns md5sum for a message object of type 'Katech_test_msg"
  "587936dd7ca4add6c71b58cdb7ef89ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Katech_test_msg>)))
  "Returns full string definition for message of type '<Katech_test_msg>"
  (cl:format cl:nil "int32 velocity~%int32 wheel~%float32 yaw~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Katech_test_msg)))
  "Returns full string definition for message of type 'Katech_test_msg"
  (cl:format cl:nil "int32 velocity~%int32 wheel~%float32 yaw~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Katech_test_msg>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Katech_test_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'Katech_test_msg
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':wheel (wheel msg))
    (cl:cons ':yaw (yaw msg))
))
