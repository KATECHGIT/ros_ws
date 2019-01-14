
(cl:in-package :asdf)

(defsystem "katech_msg_test_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Katech_test_msg" :depends-on ("_package_Katech_test_msg"))
    (:file "_package_Katech_test_msg" :depends-on ("_package"))
  ))