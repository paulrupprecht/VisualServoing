
(cl:in-package :asdf)

(defsystem "fiducial_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Fiducial" :depends-on ("_package_Fiducial"))
    (:file "_package_Fiducial" :depends-on ("_package"))
    (:file "FiducialArray" :depends-on ("_package_FiducialArray"))
    (:file "_package_FiducialArray" :depends-on ("_package"))
    (:file "FiducialMapEntry" :depends-on ("_package_FiducialMapEntry"))
    (:file "_package_FiducialMapEntry" :depends-on ("_package"))
    (:file "FiducialMapEntryArray" :depends-on ("_package_FiducialMapEntryArray"))
    (:file "_package_FiducialMapEntryArray" :depends-on ("_package"))
    (:file "FiducialTransform" :depends-on ("_package_FiducialTransform"))
    (:file "_package_FiducialTransform" :depends-on ("_package"))
    (:file "FiducialTransformArray" :depends-on ("_package_FiducialTransformArray"))
    (:file "_package_FiducialTransformArray" :depends-on ("_package"))
  ))