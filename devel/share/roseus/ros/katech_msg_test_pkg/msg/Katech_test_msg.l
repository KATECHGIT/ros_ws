;; Auto-generated. Do not edit!


(when (boundp 'katech_msg_test_pkg::Katech_test_msg)
  (if (not (find-package "KATECH_MSG_TEST_PKG"))
    (make-package "KATECH_MSG_TEST_PKG"))
  (shadow 'Katech_test_msg (find-package "KATECH_MSG_TEST_PKG")))
(unless (find-package "KATECH_MSG_TEST_PKG::KATECH_TEST_MSG")
  (make-package "KATECH_MSG_TEST_PKG::KATECH_TEST_MSG"))

(in-package "ROS")
;;//! \htmlinclude Katech_test_msg.msg.html


(defclass katech_msg_test_pkg::Katech_test_msg
  :super ros::object
  :slots (_velocity _wheel _yaw ))

(defmethod katech_msg_test_pkg::Katech_test_msg
  (:init
   (&key
    ((:velocity __velocity) 0)
    ((:wheel __wheel) 0)
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _velocity (round __velocity))
   (setq _wheel (round __wheel))
   (setq _yaw (float __yaw))
   self)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:wheel
   (&optional __wheel)
   (if __wheel (setq _wheel __wheel)) _wheel)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; int32 _velocity
    4
    ;; int32 _wheel
    4
    ;; float32 _yaw
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _velocity
       (write-long _velocity s)
     ;; int32 _wheel
       (write-long _wheel s)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _velocity
     (setq _velocity (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _wheel
     (setq _wheel (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get katech_msg_test_pkg::Katech_test_msg :md5sum-) "587936dd7ca4add6c71b58cdb7ef89ad")
(setf (get katech_msg_test_pkg::Katech_test_msg :datatype-) "katech_msg_test_pkg/Katech_test_msg")
(setf (get katech_msg_test_pkg::Katech_test_msg :definition-)
      "int32 velocity
int32 wheel
float32 yaw
")



(provide :katech_msg_test_pkg/Katech_test_msg "587936dd7ca4add6c71b58cdb7ef89ad")


