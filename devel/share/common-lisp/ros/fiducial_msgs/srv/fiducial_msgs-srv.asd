
(cl:in-package :asdf)

(defsystem "fiducial_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :fiducial_msgs-msg
)
  :components ((:file "_package")
    (:file "InitializeMap" :depends-on ("_package_InitializeMap"))
    (:file "_package_InitializeMap" :depends-on ("_package"))
  ))