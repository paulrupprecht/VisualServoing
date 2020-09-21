
(cl:in-package :asdf)

(defsystem "custom_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "floatList" :depends-on ("_package_floatList"))
    (:file "_package_floatList" :depends-on ("_package"))
  ))