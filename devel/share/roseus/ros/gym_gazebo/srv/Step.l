;; Auto-generated. Do not edit!


(when (boundp 'gym_gazebo::Step)
  (if (not (find-package "GYM_GAZEBO"))
    (make-package "GYM_GAZEBO"))
  (shadow 'Step (find-package "GYM_GAZEBO")))
(unless (find-package "GYM_GAZEBO::STEP")
  (make-package "GYM_GAZEBO::STEP"))
(unless (find-package "GYM_GAZEBO::STEPREQUEST")
  (make-package "GYM_GAZEBO::STEPREQUEST"))
(unless (find-package "GYM_GAZEBO::STEPRESPONSE")
  (make-package "GYM_GAZEBO::STEPRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass gym_gazebo::StepRequest
  :super ros::object
  :slots (_seconds _command ))

(defmethod gym_gazebo::StepRequest
  (:init
   (&key
    ((:seconds __seconds) 0.0)
    ((:command __command) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _seconds (float __seconds))
   (setq _command __command)
   self)
  (:seconds
   (&optional __seconds)
   (if __seconds (setq _seconds __seconds)) _seconds)
  (:command
   (&rest __command)
   (if (keywordp (car __command))
       (send* _command __command)
     (progn
       (if __command (setq _command (car __command)))
       _command)))
  (:serialization-length
   ()
   (+
    ;; float64 _seconds
    8
    ;; geometry_msgs/Twist _command
    (send _command :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _seconds
       (sys::poke _seconds (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Twist _command
       (send _command :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _seconds
     (setq _seconds (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Twist _command
     (send _command :deserialize buf ptr-) (incf ptr- (send _command :serialization-length))
   ;;
   self)
  )

(defclass gym_gazebo::StepResponse
  :super ros::object
  :slots (_odometry ))

(defmethod gym_gazebo::StepResponse
  (:init
   (&key
    ((:odometry __odometry) (instance nav_msgs::Odometry :init))
    )
   (send-super :init)
   (setq _odometry __odometry)
   self)
  (:odometry
   (&rest __odometry)
   (if (keywordp (car __odometry))
       (send* _odometry __odometry)
     (progn
       (if __odometry (setq _odometry (car __odometry)))
       _odometry)))
  (:serialization-length
   ()
   (+
    ;; nav_msgs/Odometry _odometry
    (send _odometry :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/Odometry _odometry
       (send _odometry :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/Odometry _odometry
     (send _odometry :deserialize buf ptr-) (incf ptr- (send _odometry :serialization-length))
   ;;
   self)
  )

(defclass gym_gazebo::Step
  :super ros::object
  :slots ())

(setf (get gym_gazebo::Step :md5sum-) "6aeb2d84ae696b706a75700e2f66e1e5")
(setf (get gym_gazebo::Step :datatype-) "gym_gazebo/Step")
(setf (get gym_gazebo::Step :request) gym_gazebo::StepRequest)
(setf (get gym_gazebo::Step :response) gym_gazebo::StepResponse)

(defmethod gym_gazebo::StepRequest
  (:response () (instance gym_gazebo::StepResponse :init)))

(setf (get gym_gazebo::StepRequest :md5sum-) "6aeb2d84ae696b706a75700e2f66e1e5")
(setf (get gym_gazebo::StepRequest :datatype-) "gym_gazebo/StepRequest")
(setf (get gym_gazebo::StepRequest :definition-)
      "float64 seconds # simulation time
geometry_msgs/Twist command # action

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---
nav_msgs/Odometry odometry # state/observation


================================================================================
MSG: nav_msgs/Odometry
# This represents an estimate of a position and velocity in free space.  
# The pose in this message should be specified in the coordinate frame given by header.frame_id.
# The twist in this message should be specified in the coordinate frame given by the child_frame_id
Header header
string child_frame_id
geometry_msgs/PoseWithCovariance pose
geometry_msgs/TwistWithCovariance twist

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

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")

(setf (get gym_gazebo::StepResponse :md5sum-) "6aeb2d84ae696b706a75700e2f66e1e5")
(setf (get gym_gazebo::StepResponse :datatype-) "gym_gazebo/StepResponse")
(setf (get gym_gazebo::StepResponse :definition-)
      "float64 seconds # simulation time
geometry_msgs/Twist command # action

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---
nav_msgs/Odometry odometry # state/observation


================================================================================
MSG: nav_msgs/Odometry
# This represents an estimate of a position and velocity in free space.  
# The pose in this message should be specified in the coordinate frame given by header.frame_id.
# The twist in this message should be specified in the coordinate frame given by the child_frame_id
Header header
string child_frame_id
geometry_msgs/PoseWithCovariance pose
geometry_msgs/TwistWithCovariance twist

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

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")



(provide :gym_gazebo/Step "6aeb2d84ae696b706a75700e2f66e1e5")


