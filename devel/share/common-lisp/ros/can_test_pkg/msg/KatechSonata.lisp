; Auto-generated. Do not edit!


(cl:in-package can_test_pkg-msg)


;//! \htmlinclude KatechSonata.msg.html

(cl:defclass <KatechSonata> (roslisp-msg-protocol:ros-message)
  ((velocity
    :reader velocity
    :initarg :velocity
    :type cl:integer
    :initform 0))
)

(cl:defclass KatechSonata (<KatechSonata>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KatechSonata>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KatechSonata)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_test_pkg-msg:<KatechSonata> is deprecated: use can_test_pkg-msg:KatechSonata instead.")))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <KatechSonata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_test_pkg-msg:velocity-val is deprecated.  Use can_test_pkg-msg:velocity instead.")
  (velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KatechSonata>) ostream)
  "Serializes a message object of type '<KatechSonata>"
  (cl:let* ((signed (cl:slot-value msg 'velocity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KatechSonata>) istream)
  "Deserializes a message object of type '<KatechSonata>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'velocity) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KatechSonata>)))
  "Returns string type for a message object of type '<KatechSonata>"
  "can_test_pkg/KatechSonata")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KatechSonata)))
  "Returns string type for a message object of type 'KatechSonata"
  "can_test_pkg/KatechSonata")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KatechSonata>)))
  "Returns md5sum for a message object of type '<KatechSonata>"
  "c1221446a6cb55fc620353cce70eed4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KatechSonata)))
  "Returns md5sum for a message object of type 'KatechSonata"
  "c1221446a6cb55fc620353cce70eed4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KatechSonata>)))
  "Returns full string definition for message of type '<KatechSonata>"
  (cl:format cl:nil "int32 velocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KatechSonata)))
  "Returns full string definition for message of type 'KatechSonata"
  (cl:format cl:nil "int32 velocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KatechSonata>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KatechSonata>))
  "Converts a ROS message object to a list"
  (cl:list 'KatechSonata
    (cl:cons ':velocity (velocity msg))
))
