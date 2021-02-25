
(cl:in-package :asdf)

(defsystem "rcj-soccer-sim-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "bot_measurements" :depends-on ("_package_bot_measurements"))
    (:file "_package_bot_measurements" :depends-on ("_package"))
  ))