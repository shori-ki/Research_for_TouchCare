
(cl:in-package :asdf)

(defsystem "hand_controller-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "AddTrial" :depends-on ("_package_AddTrial"))
    (:file "_package_AddTrial" :depends-on ("_package"))
    (:file "CashMotion" :depends-on ("_package_CashMotion"))
    (:file "_package_CashMotion" :depends-on ("_package"))
    (:file "Classify" :depends-on ("_package_Classify"))
    (:file "_package_Classify" :depends-on ("_package"))
    (:file "ClassifyOptoforceData" :depends-on ("_package_ClassifyOptoforceData"))
    (:file "_package_ClassifyOptoforceData" :depends-on ("_package"))
    (:file "DemoGetForceDistribution" :depends-on ("_package_DemoGetForceDistribution"))
    (:file "_package_DemoGetForceDistribution" :depends-on ("_package"))
    (:file "GraspWithForce" :depends-on ("_package_GraspWithForce"))
    (:file "_package_GraspWithForce" :depends-on ("_package"))
    (:file "MotorAngles" :depends-on ("_package_MotorAngles"))
    (:file "_package_MotorAngles" :depends-on ("_package"))
    (:file "MotorSteps" :depends-on ("_package_MotorSteps"))
    (:file "_package_MotorSteps" :depends-on ("_package"))
    (:file "RubbingMotion" :depends-on ("_package_RubbingMotion"))
    (:file "_package_RubbingMotion" :depends-on ("_package"))
    (:file "SetMotorAngles" :depends-on ("_package_SetMotorAngles"))
    (:file "_package_SetMotorAngles" :depends-on ("_package"))
    (:file "SetMotorSteps" :depends-on ("_package_SetMotorSteps"))
    (:file "_package_SetMotorSteps" :depends-on ("_package"))
    (:file "cashMotionSet" :depends-on ("_package_cashMotionSet"))
    (:file "_package_cashMotionSet" :depends-on ("_package"))
    (:file "checkGrasp" :depends-on ("_package_checkGrasp"))
    (:file "_package_checkGrasp" :depends-on ("_package"))
    (:file "getRecordedBuffer" :depends-on ("_package_getRecordedBuffer"))
    (:file "_package_getRecordedBuffer" :depends-on ("_package"))
    (:file "recordFromNow" :depends-on ("_package_recordFromNow"))
    (:file "_package_recordFromNow" :depends-on ("_package"))
    (:file "rubbingWithForce" :depends-on ("_package_rubbingWithForce"))
    (:file "_package_rubbingWithForce" :depends-on ("_package"))
    (:file "stopRecording" :depends-on ("_package_stopRecording"))
    (:file "_package_stopRecording" :depends-on ("_package"))
  ))