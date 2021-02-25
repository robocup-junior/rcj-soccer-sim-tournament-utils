
(cl:in-package :asdf)

(defsystem "rcj_soccer_sim-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "bot_command" :depends-on ("_package_bot_command"))
    (:file "_package_bot_command" :depends-on ("_package"))
    (:file "bot_measurements" :depends-on ("_package_bot_measurements"))
    (:file "_package_bot_measurements" :depends-on ("_package"))
  ))