; Auto-generated. Do not edit!


(cl:in-package rcj_soccer_sim-msg)


;//! \htmlinclude bot_measurements.msg.html

(cl:defclass <bot_measurements> (roslisp-msg-protocol:ros-message)
  ((half_time_remaining
    :reader half_time_remaining
    :initarg :half_time_remaining
    :type cl:real
    :initform 0)
   (pos_x
    :reader pos_x
    :initarg :pos_x
    :type cl:float
    :initform 0.0)
   (pos_y
    :reader pos_y
    :initarg :pos_y
    :type cl:float
    :initform 0.0)
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0))
)

(cl:defclass bot_measurements (<bot_measurements>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bot_measurements>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bot_measurements)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rcj_soccer_sim-msg:<bot_measurements> is deprecated: use rcj_soccer_sim-msg:bot_measurements instead.")))

(cl:ensure-generic-function 'half_time_remaining-val :lambda-list '(m))
(cl:defmethod half_time_remaining-val ((m <bot_measurements>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rcj_soccer_sim-msg:half_time_remaining-val is deprecated.  Use rcj_soccer_sim-msg:half_time_remaining instead.")
  (half_time_remaining m))

(cl:ensure-generic-function 'pos_x-val :lambda-list '(m))
(cl:defmethod pos_x-val ((m <bot_measurements>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rcj_soccer_sim-msg:pos_x-val is deprecated.  Use rcj_soccer_sim-msg:pos_x instead.")
  (pos_x m))

(cl:ensure-generic-function 'pos_y-val :lambda-list '(m))
(cl:defmethod pos_y-val ((m <bot_measurements>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rcj_soccer_sim-msg:pos_y-val is deprecated.  Use rcj_soccer_sim-msg:pos_y instead.")
  (pos_y m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <bot_measurements>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rcj_soccer_sim-msg:theta-val is deprecated.  Use rcj_soccer_sim-msg:theta instead.")
  (theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bot_measurements>) ostream)
  "Serializes a message object of type '<bot_measurements>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'half_time_remaining)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'half_time_remaining) (cl:floor (cl:slot-value msg 'half_time_remaining)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pos_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pos_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bot_measurements>) istream)
  "Deserializes a message object of type '<bot_measurements>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'half_time_remaining) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pos_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pos_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bot_measurements>)))
  "Returns string type for a message object of type '<bot_measurements>"
  "rcj_soccer_sim/bot_measurements")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bot_measurements)))
  "Returns string type for a message object of type 'bot_measurements"
  "rcj_soccer_sim/bot_measurements")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bot_measurements>)))
  "Returns md5sum for a message object of type '<bot_measurements>"
  "b801a7d32c725a671c00962bbd8b8a37")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bot_measurements)))
  "Returns md5sum for a message object of type 'bot_measurements"
  "b801a7d32c725a671c00962bbd8b8a37")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bot_measurements>)))
  "Returns full string definition for message of type '<bot_measurements>"
  (cl:format cl:nil "time half_time_remaining~%float64 pos_x~%float64 pos_y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bot_measurements)))
  "Returns full string definition for message of type 'bot_measurements"
  (cl:format cl:nil "time half_time_remaining~%float64 pos_x~%float64 pos_y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bot_measurements>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bot_measurements>))
  "Converts a ROS message object to a list"
  (cl:list 'bot_measurements
    (cl:cons ':half_time_remaining (half_time_remaining msg))
    (cl:cons ':pos_x (pos_x msg))
    (cl:cons ':pos_y (pos_y msg))
    (cl:cons ':theta (theta msg))
))
