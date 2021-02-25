;; Auto-generated. Do not edit!


(when (boundp 'rcj_soccer_sim::bot_command)
  (if (not (find-package "RCJ_SOCCER_SIM"))
    (make-package "RCJ_SOCCER_SIM"))
  (shadow 'bot_command (find-package "RCJ_SOCCER_SIM")))
(unless (find-package "RCJ_SOCCER_SIM::BOT_COMMAND")
  (make-package "RCJ_SOCCER_SIM::BOT_COMMAND"))

(in-package "ROS")
;;//! \htmlinclude bot_command.msg.html


(defclass rcj_soccer_sim::bot_command
  :super ros::object
  :slots (_left_wheel_speed _right_wheel_speed ))

(defmethod rcj_soccer_sim::bot_command
  (:init
   (&key
    ((:left_wheel_speed __left_wheel_speed) 0.0)
    ((:right_wheel_speed __right_wheel_speed) 0.0)
    )
   (send-super :init)
   (setq _left_wheel_speed (float __left_wheel_speed))
   (setq _right_wheel_speed (float __right_wheel_speed))
   self)
  (:left_wheel_speed
   (&optional __left_wheel_speed)
   (if __left_wheel_speed (setq _left_wheel_speed __left_wheel_speed)) _left_wheel_speed)
  (:right_wheel_speed
   (&optional __right_wheel_speed)
   (if __right_wheel_speed (setq _right_wheel_speed __right_wheel_speed)) _right_wheel_speed)
  (:serialization-length
   ()
   (+
    ;; float64 _left_wheel_speed
    8
    ;; float64 _right_wheel_speed
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _left_wheel_speed
       (sys::poke _left_wheel_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _right_wheel_speed
       (sys::poke _right_wheel_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _left_wheel_speed
     (setq _left_wheel_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _right_wheel_speed
     (setq _right_wheel_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rcj_soccer_sim::bot_command :md5sum-) "2cb3b75b4d7e87ac43d11103b2af0a1e")
(setf (get rcj_soccer_sim::bot_command :datatype-) "rcj_soccer_sim/bot_command")
(setf (get rcj_soccer_sim::bot_command :definition-)
      "float64 left_wheel_speed
float64 right_wheel_speed

")



(provide :rcj_soccer_sim/bot_command "2cb3b75b4d7e87ac43d11103b2af0a1e")


