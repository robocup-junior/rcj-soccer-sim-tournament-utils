;; Auto-generated. Do not edit!


(when (boundp 'rcj-soccer-sim::bot_measurements)
  (if (not (find-package "RCJ-SOCCER-SIM"))
    (make-package "RCJ-SOCCER-SIM"))
  (shadow 'bot_measurements (find-package "RCJ-SOCCER-SIM")))
(unless (find-package "RCJ-SOCCER-SIM::BOT_MEASUREMENTS")
  (make-package "RCJ-SOCCER-SIM::BOT_MEASUREMENTS"))

(in-package "ROS")
;;//! \htmlinclude bot_measurements.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rcj-soccer-sim::bot_measurements
  :super ros::object
  :slots (_header _pos_x _pos_y _theta ))

(defmethod rcj-soccer-sim::bot_measurements
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pos_x __pos_x) 0.0)
    ((:pos_y __pos_y) 0.0)
    ((:theta __theta) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _pos_x (float __pos_x))
   (setq _pos_y (float __pos_y))
   (setq _theta (float __theta))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pos_x
   (&optional __pos_x)
   (if __pos_x (setq _pos_x __pos_x)) _pos_x)
  (:pos_y
   (&optional __pos_y)
   (if __pos_y (setq _pos_y __pos_y)) _pos_y)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _pos_x
    8
    ;; float64 _pos_y
    8
    ;; float64 _theta
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _pos_x
       (sys::poke _pos_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pos_y
       (sys::poke _pos_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _pos_x
     (setq _pos_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pos_y
     (setq _pos_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rcj-soccer-sim::bot_measurements :md5sum-) "18e2daaa3e7df5052cfb9d58c0d3c7d0")
(setf (get rcj-soccer-sim::bot_measurements :datatype-) "rcj-soccer-sim/bot_measurements")
(setf (get rcj-soccer-sim::bot_measurements :definition-)
      "Header header
float64 pos_x
float64 pos_y
float64 theta

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :rcj-soccer-sim/bot_measurements "18e2daaa3e7df5052cfb9d58c0d3c7d0")


