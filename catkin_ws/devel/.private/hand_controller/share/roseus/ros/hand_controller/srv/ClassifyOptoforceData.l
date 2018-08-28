;; Auto-generated. Do not edit!


(when (boundp 'hand_controller::ClassifyOptoforceData)
  (if (not (find-package "HAND_CONTROLLER"))
    (make-package "HAND_CONTROLLER"))
  (shadow 'ClassifyOptoforceData (find-package "HAND_CONTROLLER")))
(unless (find-package "HAND_CONTROLLER::CLASSIFYOPTOFORCEDATA")
  (make-package "HAND_CONTROLLER::CLASSIFYOPTOFORCEDATA"))
(unless (find-package "HAND_CONTROLLER::CLASSIFYOPTOFORCEDATAREQUEST")
  (make-package "HAND_CONTROLLER::CLASSIFYOPTOFORCEDATAREQUEST"))
(unless (find-package "HAND_CONTROLLER::CLASSIFYOPTOFORCEDATARESPONSE")
  (make-package "HAND_CONTROLLER::CLASSIFYOPTOFORCEDATARESPONSE"))

(in-package "ROS")





(defclass hand_controller::ClassifyOptoforceDataRequest
  :super ros::object
  :slots (_optoforcedatabuffer ))

(defmethod hand_controller::ClassifyOptoforceDataRequest
  (:init
   (&key
    ((:optoforcedatabuffer __optoforcedatabuffer) "")
    )
   (send-super :init)
   (setq _optoforcedatabuffer (string __optoforcedatabuffer))
   self)
  (:optoforcedatabuffer
   (&optional __optoforcedatabuffer)
   (if __optoforcedatabuffer (setq _optoforcedatabuffer __optoforcedatabuffer)) _optoforcedatabuffer)
  (:serialization-length
   ()
   (+
    ;; string _optoforcedatabuffer
    4 (length _optoforcedatabuffer)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _optoforcedatabuffer
       (write-long (length _optoforcedatabuffer) s) (princ _optoforcedatabuffer s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _optoforcedatabuffer
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _optoforcedatabuffer (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass hand_controller::ClassifyOptoforceDataResponse
  :super ros::object
  :slots (_classifyresult ))

(defmethod hand_controller::ClassifyOptoforceDataResponse
  (:init
   (&key
    ((:classifyresult __classifyresult) "")
    )
   (send-super :init)
   (setq _classifyresult (string __classifyresult))
   self)
  (:classifyresult
   (&optional __classifyresult)
   (if __classifyresult (setq _classifyresult __classifyresult)) _classifyresult)
  (:serialization-length
   ()
   (+
    ;; string _classifyresult
    4 (length _classifyresult)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _classifyresult
       (write-long (length _classifyresult) s) (princ _classifyresult s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _classifyresult
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _classifyresult (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass hand_controller::ClassifyOptoforceData
  :super ros::object
  :slots ())

(setf (get hand_controller::ClassifyOptoforceData :md5sum-) "1b074e2d253a3e64ad0835b48e4ba924")
(setf (get hand_controller::ClassifyOptoforceData :datatype-) "hand_controller/ClassifyOptoforceData")
(setf (get hand_controller::ClassifyOptoforceData :request) hand_controller::ClassifyOptoforceDataRequest)
(setf (get hand_controller::ClassifyOptoforceData :response) hand_controller::ClassifyOptoforceDataResponse)

(defmethod hand_controller::ClassifyOptoforceDataRequest
  (:response () (instance hand_controller::ClassifyOptoforceDataResponse :init)))

(setf (get hand_controller::ClassifyOptoforceDataRequest :md5sum-) "1b074e2d253a3e64ad0835b48e4ba924")
(setf (get hand_controller::ClassifyOptoforceDataRequest :datatype-) "hand_controller/ClassifyOptoforceDataRequest")
(setf (get hand_controller::ClassifyOptoforceDataRequest :definition-)
      "string optoforcedatabuffer
---
string classifyresult

")

(setf (get hand_controller::ClassifyOptoforceDataResponse :md5sum-) "1b074e2d253a3e64ad0835b48e4ba924")
(setf (get hand_controller::ClassifyOptoforceDataResponse :datatype-) "hand_controller/ClassifyOptoforceDataResponse")
(setf (get hand_controller::ClassifyOptoforceDataResponse :definition-)
      "string optoforcedatabuffer
---
string classifyresult

")



(provide :hand_controller/ClassifyOptoforceData "1b074e2d253a3e64ad0835b48e4ba924")


