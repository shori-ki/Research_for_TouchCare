
(cl:in-package :asdf)

(defsystem "asr_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "AsrAttributedPoint" :depends-on ("_package_AsrAttributedPoint"))
    (:file "_package_AsrAttributedPoint" :depends-on ("_package"))
    (:file "AsrAttributedPointCloud" :depends-on ("_package_AsrAttributedPointCloud"))
    (:file "_package_AsrAttributedPointCloud" :depends-on ("_package"))
    (:file "AsrGlove" :depends-on ("_package_AsrGlove"))
    (:file "_package_AsrGlove" :depends-on ("_package"))
    (:file "AsrObject" :depends-on ("_package_AsrObject"))
    (:file "_package_AsrObject" :depends-on ("_package"))
    (:file "AsrTypeAndId" :depends-on ("_package_AsrTypeAndId"))
    (:file "_package_AsrTypeAndId" :depends-on ("_package"))
    (:file "AsrViewport" :depends-on ("_package_AsrViewport"))
    (:file "_package_AsrViewport" :depends-on ("_package"))
  ))