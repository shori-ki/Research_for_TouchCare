
(cl:in-package :asdf)

(defsystem "plot_graph-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "sendDataStamped" :depends-on ("_package_sendDataStamped"))
    (:file "_package_sendDataStamped" :depends-on ("_package"))
  ))