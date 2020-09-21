
(cl:in-package :asdf)

(defsystem "ur_dashboard_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ProgramState" :depends-on ("_package_ProgramState"))
    (:file "_package_ProgramState" :depends-on ("_package"))
    (:file "RobotMode" :depends-on ("_package_RobotMode"))
    (:file "_package_RobotMode" :depends-on ("_package"))
    (:file "SafetyMode" :depends-on ("_package_SafetyMode"))
    (:file "_package_SafetyMode" :depends-on ("_package"))
    (:file "SetModeAction" :depends-on ("_package_SetModeAction"))
    (:file "_package_SetModeAction" :depends-on ("_package"))
    (:file "SetModeActionFeedback" :depends-on ("_package_SetModeActionFeedback"))
    (:file "_package_SetModeActionFeedback" :depends-on ("_package"))
    (:file "SetModeActionGoal" :depends-on ("_package_SetModeActionGoal"))
    (:file "_package_SetModeActionGoal" :depends-on ("_package"))
    (:file "SetModeActionResult" :depends-on ("_package_SetModeActionResult"))
    (:file "_package_SetModeActionResult" :depends-on ("_package"))
    (:file "SetModeFeedback" :depends-on ("_package_SetModeFeedback"))
    (:file "_package_SetModeFeedback" :depends-on ("_package"))
    (:file "SetModeGoal" :depends-on ("_package_SetModeGoal"))
    (:file "_package_SetModeGoal" :depends-on ("_package"))
    (:file "SetModeResult" :depends-on ("_package_SetModeResult"))
    (:file "_package_SetModeResult" :depends-on ("_package"))
  ))