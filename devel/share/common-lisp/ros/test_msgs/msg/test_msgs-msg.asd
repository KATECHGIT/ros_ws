
(cl:in-package :asdf)

(defsystem "test_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "KatechTest" :depends-on ("_package_KatechTest"))
    (:file "_package_KatechTest" :depends-on ("_package"))
  ))