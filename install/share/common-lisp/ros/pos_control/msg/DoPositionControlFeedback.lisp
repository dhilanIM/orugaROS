; Auto-generated. Do not edit!


(cl:in-package pos_control-msg)


;//! \htmlinclude DoPositionControlFeedback.msg.html

(cl:defclass <DoPositionControlFeedback> (roslisp-msg-protocol:ros-message)
  ((p_e
    :reader p_e
    :initarg :p_e
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass DoPositionControlFeedback (<DoPositionControlFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DoPositionControlFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DoPositionControlFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pos_control-msg:<DoPositionControlFeedback> is deprecated: use pos_control-msg:DoPositionControlFeedback instead.")))

(cl:ensure-generic-function 'p_e-val :lambda-list '(m))
(cl:defmethod p_e-val ((m <DoPositionControlFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pos_control-msg:p_e-val is deprecated.  Use pos_control-msg:p_e instead.")
  (p_e m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DoPositionControlFeedback>) ostream)
  "Serializes a message object of type '<DoPositionControlFeedback>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'p_e))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'p_e))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DoPositionControlFeedback>) istream)
  "Deserializes a message object of type '<DoPositionControlFeedback>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'p_e) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'p_e)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DoPositionControlFeedback>)))
  "Returns string type for a message object of type '<DoPositionControlFeedback>"
  "pos_control/DoPositionControlFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DoPositionControlFeedback)))
  "Returns string type for a message object of type 'DoPositionControlFeedback"
  "pos_control/DoPositionControlFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DoPositionControlFeedback>)))
  "Returns md5sum for a message object of type '<DoPositionControlFeedback>"
  "1b57fd56f43af2ea0cae1569e7c9b042")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DoPositionControlFeedback)))
  "Returns md5sum for a message object of type 'DoPositionControlFeedback"
  "1b57fd56f43af2ea0cae1569e7c9b042")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DoPositionControlFeedback>)))
  "Returns full string definition for message of type '<DoPositionControlFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#Feedback~%float32[] p_e   # error de posicion~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DoPositionControlFeedback)))
  "Returns full string definition for message of type 'DoPositionControlFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#Feedback~%float32[] p_e   # error de posicion~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DoPositionControlFeedback>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'p_e) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DoPositionControlFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'DoPositionControlFeedback
    (cl:cons ':p_e (p_e msg))
))
