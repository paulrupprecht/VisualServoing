
(cl:in-package :asdf)

(defsystem "gazebo_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ContactState" :depends-on ("_package_ContactState"))
    (:file "_package_ContactState" :depends-on ("_package"))
    (:file "ContactsState" :depends-on ("_package_ContactsState"))
    (:file "_package_ContactsState" :depends-on ("_package"))
    (:file "LinkState" :depends-on ("_package_LinkState"))
    (:file "_package_LinkState" :depends-on ("_package"))
    (:file "LinkStates" :depends-on ("_package_LinkStates"))
    (:file "_package_LinkStates" :depends-on ("_package"))
    (:file "ModelState" :depends-on ("_package_ModelState"))
    (:file "_package_ModelState" :depends-on ("_package"))
    (:file "ModelStates" :depends-on ("_package_ModelStates"))
    (:file "_package_ModelStates" :depends-on ("_package"))
    (:file "ODEJointProperties" :depends-on ("_package_ODEJointProperties"))
    (:file "_package_ODEJointProperties" :depends-on ("_package"))
    (:file "ODEPhysics" :depends-on ("_package_ODEPhysics"))
    (:file "_package_ODEPhysics" :depends-on ("_package"))
    (:file "WorldState" :depends-on ("_package_WorldState"))
    (:file "_package_WorldState" :depends-on ("_package"))
  ))