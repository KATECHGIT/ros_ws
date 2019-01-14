; Auto-generated. Do not edit!


(cl:in-package test_msgs-msg)


;//! \htmlinclude KatechTest.msg.html

(cl:defclass <KatechTest> (roslisp-msg-protocol:ros-message)
  ((steering_wheel_angle_cmd
    :reader steering_wheel_angle_cmd
    :initarg :steering_wheel_angle_cmd
    :type cl:integer
    :initform 0)
   (steering_velocity_cmd
    :reader steering_velocity_cmd
    :initarg :steering_velocity_cmd
    :type cl:integer
    :initform 0))
)

(cl:defclass KatechTest (<KatechTest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KatechTest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KatechTest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_msgs-msg:<KatechTest> is deprecated: use test_msgs-msg:KatechTest instead.")))

(cl:ensure-generic-function 'steering_wheel_angle_cmd-val :lambda-list '(m))
(cl:defmethod steering_wheel_angle_cmd-val ((m <KatechTest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_msgs-msg:steering_wheel_angle_cmd-val is deprecated.  Use test_msgs-msg:steering_wheel_angle_cmd instead.")
  (steering_wheel_angle_cmd m))

(cl:ensure-generic-function 'steering_velocity_cmd-val :lambda-list '(m))
(cl:defmethod steering_velocity_cmd-val ((m <KatechTest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_msgs-msg:steering_velocity_cmd-val is deprecated.  Use test_msgs-msg:steering_velocity_cmd instead.")
  (steering_velocity_cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KatechTest>) ostream)
  "Serializes a message object of type '<KatechTest>"
  (cl:let* ((signed (cl:slot-value msg 'steering_wheel_angle_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'steering_velocity_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KatechTest>) istream)
  "Deserializes a message object of type '<KatechTest>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'steering_wheel_angle_cmd) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'steering_velocity_cmd) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KatechTest>)))
  "Returns string type for a message object of type '<KatechTest>"
  "test_msgs/KatechTest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KatechTest)))
  "Returns string type for a message object of type 'KatechTest"
  "test_msgs/KatechTest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KatechTest>)))
  "Returns md5sum for a message object of type '<KatechTest>"
  "3d1d743ebccd40b1c19440e1aea32db4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KatechTest)))
  "Returns md5sum for a message object of type 'KatechTest"
  "3d1d743ebccd40b1c19440e1aea32db4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KatechTest>)))
  "Returns full string definition for message of type '<KatechTest>"
  (cl:format cl:nil "int32 steering_wheel_angle_cmd~%int32 steering_velocity_cmd~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KatechTest)))
  "Returns full string definition for message of type 'KatechTest"
  (cl:format cl:nil "int32 steering_wheel_angle_cmd~%int32 steering_velocity_cmd~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KatechTest>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KatechTest>))
  "Converts a ROS message object to a list"
  (cl:list 'KatechTest
    (cl:cons ':steering_wheel_angle_cmd (steering_wheel_angle_cmd msg))
    (cl:cons ':steering_velocity_cmd (steering_velocity_cmd msg))
))
