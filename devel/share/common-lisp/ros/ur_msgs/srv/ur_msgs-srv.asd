
(cl:in-package :asdf)

(defsystem "ur_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SetIO" :depends-on ("_package_SetIO"))
    (:file "_package_SetIO" :depends-on ("_package"))
    (:file "SetPayload" :depends-on ("_package_SetPayload"))
    (:file "_package_SetPayload" :depends-on ("_package"))
    (:file "SetSpeedSliderFraction" :depends-on ("_package_SetSpeedSliderFraction"))
    (:file "_package_SetSpeedSliderFraction" :depends-on ("_package"))
  ))