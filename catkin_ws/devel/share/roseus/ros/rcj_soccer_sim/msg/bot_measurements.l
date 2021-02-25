;; Auto-generated. Do not edit!


(when (boundp 'rcj_soccer_sim::bot_measurements)
  (if (not (find-package "RCJ_SOCCER_SIM"))
    (make-package "RCJ_SOCCER_SIM"))
  (shadow 'bot_measurements (find-package "RCJ_SOCCER_SIM")))
(unless (find-package "RCJ_SOCCER_SIM::BOT_MEASUREMENTS")
  (make-package "RCJ_SOCCER_SIM::BOT_MEASUREMENTS"))

(in-package "ROS")
;;//! \htmlinclude bot_measurements.msg.html


(defclass rcj_soccer_sim::bot_measurements
  :super ros::object
  :slots (_half_time_remaining _pos_x _pos_y _theta ))

(defmethod rcj_soccer_sim::bot_measurements
  (:init
   (&key
    ((:half_time_remaining __half_time_remaining) (instance ros::time :init))
    ((:pos_x __pos_x) 0.0)
    ((:pos_y __pos_y) 0.0)
    ((:theta __theta) 0.0)
    )
   (send-super :init)
   (setq _half_time_remaining __half_time_remaining)
   (setq _pos_x (float __pos_x))
   (setq _pos_y (float __pos_y))
   (setq _theta (float __theta))
   self)
  (:half_time_remaining
   (&optional __half_time_remaining)
   (if __half_time_remaining (setq _half_time_remaining __half_time_remaining)) _half_time_remaining)
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
    ;; time _half_time_remaining
    8
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
     ;; time _half_time_remaining
       (write-long (send _half_time_remaining :sec) s) (write-long (send _half_time_remaining :nsec) s)
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
   ;; time _half_time_remaining
     (send _half_time_remaining :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _half_time_remaining :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _pos_x
     (setq _pos_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pos_y
     (setq _pos_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rcj_soccer_sim::bot_measurements :md5sum-) "b801a7d32c725a671c00962bbd8b8a37")
(setf (get rcj_soccer_sim::bot_measurements :datatype-) "rcj_soccer_sim/bot_measurements")
(setf (get rcj_soccer_sim::bot_measurements :definition-)
      "time half_time_remaining
float64 pos_x
float64 pos_y
float64 theta

")



(provide :rcj_soccer_sim/bot_measurements "b801a7d32c725a671c00962bbd8b8a37")


