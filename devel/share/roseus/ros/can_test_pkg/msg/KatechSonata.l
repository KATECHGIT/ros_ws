;; Auto-generated. Do not edit!


(when (boundp 'can_test_pkg::KatechSonata)
  (if (not (find-package "CAN_TEST_PKG"))
    (make-package "CAN_TEST_PKG"))
  (shadow 'KatechSonata (find-package "CAN_TEST_PKG")))
(unless (find-package "CAN_TEST_PKG::KATECHSONATA")
  (make-package "CAN_TEST_PKG::KATECHSONATA"))

(in-package "ROS")
;;//! \htmlinclude KatechSonata.msg.html


(defclass can_test_pkg::KatechSonata
  :super ros::object
  :slots (_velocity ))

(defmethod can_test_pkg::KatechSonata
  (:init
   (&key
    ((:velocity __velocity) 0)
    )
   (send-super :init)
   (setq _velocity (round __velocity))
   self)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:serialization-length
   ()
   (+
    ;; int32 _velocity
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _velocity
       (write-long _velocity s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _velocity
     (setq _velocity (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get can_test_pkg::KatechSonata :md5sum-) "c1221446a6cb55fc620353cce70eed4a")
(setf (get can_test_pkg::KatechSonata :datatype-) "can_test_pkg/KatechSonata")
(setf (get can_test_pkg::KatechSonata :definition-)
      "int32 velocity

")



(provide :can_test_pkg/KatechSonata "c1221446a6cb55fc620353cce70eed4a")


