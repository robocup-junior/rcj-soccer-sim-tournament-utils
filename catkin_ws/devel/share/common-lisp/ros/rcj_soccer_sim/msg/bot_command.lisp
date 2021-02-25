; Auto-generated. Do not edit!


(cl:in-package rcj_soccer_sim-msg)


;//! \htmlinclude bot_command.msg.html

(cl:defclass <bot_command> (roslisp-msg-protocol:ros-message)
  ((left_wheel_speed
    :reader left_wheel_speed
    :initarg :left_wheel_speed
    :type cl:float
    :initform 0.0)
   (right_wheel_speed
    :reader right_wheel_speed
    :initarg :right_wheel_speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass bot_command (<bot_command>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bot_command>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bot_command)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rcj_soccer_sim-msg:<bot_command> is deprecated: use rcj_soccer_sim-msg:bot_command instead.")))

(cl:ensure-generic-function 'left_wheel_speed-val :lambda-list '(m))
(cl:defmethod left_wheel_speed-val ((m <bot_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rcj_soccer_sim-msg:left_wheel_speed-val is deprecated.  Use rcj_soccer_sim-msg:left_wheel_speed instead.")
  (left_wheel_speed m))

(cl:ensure-generic-function 'right_wheel_speed-val :lambda-list '(m))
(cl:defmethod right_wheel_speed-val ((m <bot_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rcj_soccer_sim-msg:right_wheel_speed-val is deprecated.  Use rcj_soccer_sim-msg:right_wheel_speed instead.")
  (right_wheel_speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bot_command>) ostream)
  "Serializes a message object of type '<bot_command>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'left_wheel_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'right_wheel_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bot_command>) istream)
  "Deserializes a message object of type '<bot_command>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_wheel_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_wheel_speed) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bot_command>)))
  "Returns string type for a message object of type '<bot_command>"
  "rcj_soccer_sim/bot_command")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bot_command)))
  "Returns string type for a message object of type 'bot_command"
  "rcj_soccer_sim/bot_command")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bot_command>)))
  "Returns md5sum for a message object of type '<bot_command>"
  "2cb3b75b4d7e87ac43d11103b2af0a1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bot_command)))
  "Returns md5sum for a message object of type 'bot_command"
  "2cb3b75b4d7e87ac43d11103b2af0a1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bot_command>)))
  "Returns full string definition for message of type '<bot_command>"
  (cl:format cl:nil "float64 left_wheel_speed~%float64 right_wheel_speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bot_command)))
  "Returns full string definition for message of type 'bot_command"
  (cl:format cl:nil "float64 left_wheel_speed~%float64 right_wheel_speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bot_command>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bot_command>))
  "Converts a ROS message object to a list"
  (cl:list 'bot_command
    (cl:cons ':left_wheel_speed (left_wheel_speed msg))
    (cl:cons ':right_wheel_speed (right_wheel_speed msg))
))
