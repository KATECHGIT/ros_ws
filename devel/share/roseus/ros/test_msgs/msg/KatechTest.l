;; Auto-generated. Do not edit!


(when (boundp 'test_msgs::KatechTest)
  (if (not (find-package "TEST_MSGS"))
    (make-package "TEST_MSGS"))
  (shadow 'KatechTest (find-package "TEST_MSGS")))
(unless (find-package "TEST_MSGS::KATECHTEST")
  (make-package "TEST_MSGS::KATECHTEST"))

(in-package "ROS")
;;//! \htmlinclude KatechTest.msg.html


(defclass test_msgs::KatechTest
  :super ros::object
  :slots (_steering_wheel_angle_cmd _steering_velocity_cmd ))

(defmethod test_msgs::KatechTest
  (:init
   (&key
    ((:steering_wheel_angle_cmd __steering_wheel_angle_cmd) 0)
    ((:steering_velocity_cmd __steering_velocity_cmd) 0)
    )
   (send-super :init)
   (setq _steering_wheel_angle_cmd (round __steering_wheel_angle_cmd))
   (setq _steering_velocity_cmd (round __steering_velocity_cmd))
   self)
  (:steering_wheel_angle_cmd
   (&optional __steering_wheel_angle_cmd)
   (if __steering_wheel_angle_cmd (setq _steering_wheel_angle_cmd __steering_wheel_angle_cmd)) _steering_wheel_angle_cmd)
  (:steering_velocity_cmd
   (&optional __steering_velocity_cmd)
   (if __steering_velocity_cmd (setq _steering_velocity_cmd __steering_velocity_cmd)) _steering_velocity_cmd)
  (:serialization-length
   ()
   (+
    ;; int32 _steering_wheel_angle_cmd
    4
    ;; int32 _steering_velocity_cmd
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _steering_wheel_angle_cmd
       (write-long _steering_wheel_angle_cmd s)
     ;; int32 _steering_velocity_cmd
       (write-long _steering_velocity_cmd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _steering_wheel_angle_cmd
     (setq _steering_wheel_angle_cmd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _steering_velocity_cmd
     (setq _steering_velocity_cmd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get test_msgs::KatechTest :md5sum-) "3d1d743ebccd40b1c19440e1aea32db4")
(setf (get test_msgs::KatechTest :datatype-) "test_msgs/KatechTest")
(setf (get test_msgs::KatechTest :definition-)
      "int32 steering_wheel_angle_cmd
int32 steering_velocity_cmd
")



(provide :test_msgs/KatechTest "3d1d743ebccd40b1c19440e1aea32db4")


