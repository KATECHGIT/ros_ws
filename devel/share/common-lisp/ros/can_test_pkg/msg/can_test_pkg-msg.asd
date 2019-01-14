
(cl:in-package :asdf)

(defsystem "can_test_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "CANPacket" :depends-on ("_package_CANPacket"))
    (:file "_package_CANPacket" :depends-on ("_package"))
    (:file "KatechSonata" :depends-on ("_package_KatechSonata"))
    (:file "_package_KatechSonata" :depends-on ("_package"))
  ))