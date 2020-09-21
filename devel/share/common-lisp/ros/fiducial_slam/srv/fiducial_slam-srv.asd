
(cl:in-package :asdf)

(defsystem "fiducial_slam-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AddFiducial" :depends-on ("_package_AddFiducial"))
    (:file "_package_AddFiducial" :depends-on ("_package"))
  ))