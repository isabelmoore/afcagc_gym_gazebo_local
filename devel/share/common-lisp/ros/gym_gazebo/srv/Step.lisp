; Auto-generated. Do not edit!


(cl:in-package gym_gazebo-srv)


;//! \htmlinclude Step-request.msg.html

(cl:defclass <Step-request> (roslisp-msg-protocol:ros-message)
  ((seconds
    :reader seconds
    :initarg :seconds
    :type cl:float
    :initform 0.0)
   (command
    :reader command
    :initarg :command
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist)))
)

(cl:defclass Step-request (<Step-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Step-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Step-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gym_gazebo-srv:<Step-request> is deprecated: use gym_gazebo-srv:Step-request instead.")))

(cl:ensure-generic-function 'seconds-val :lambda-list '(m))
(cl:defmethod seconds-val ((m <Step-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gym_gazebo-srv:seconds-val is deprecated.  Use gym_gazebo-srv:seconds instead.")
  (seconds m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <Step-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gym_gazebo-srv:command-val is deprecated.  Use gym_gazebo-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Step-request>) ostream)
  "Serializes a message object of type '<Step-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'seconds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'command) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Step-request>) istream)
  "Deserializes a message object of type '<Step-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'seconds) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'command) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Step-request>)))
  "Returns string type for a service object of type '<Step-request>"
  "gym_gazebo/StepRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Step-request)))
  "Returns string type for a service object of type 'Step-request"
  "gym_gazebo/StepRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Step-request>)))
  "Returns md5sum for a message object of type '<Step-request>"
  "6aeb2d84ae696b706a75700e2f66e1e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Step-request)))
  "Returns md5sum for a message object of type 'Step-request"
  "6aeb2d84ae696b706a75700e2f66e1e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Step-request>)))
  "Returns full string definition for message of type '<Step-request>"
  (cl:format cl:nil "float64 seconds # simulation time~%geometry_msgs/Twist command # action~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Step-request)))
  "Returns full string definition for message of type 'Step-request"
  (cl:format cl:nil "float64 seconds # simulation time~%geometry_msgs/Twist command # action~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Step-request>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Step-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Step-request
    (cl:cons ':seconds (seconds msg))
    (cl:cons ':command (command msg))
))
;//! \htmlinclude Step-response.msg.html

(cl:defclass <Step-response> (roslisp-msg-protocol:ros-message)
  ((odometry
    :reader odometry
    :initarg :odometry
    :type nav_msgs-msg:Odometry
    :initform (cl:make-instance 'nav_msgs-msg:Odometry)))
)

(cl:defclass Step-response (<Step-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Step-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Step-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gym_gazebo-srv:<Step-response> is deprecated: use gym_gazebo-srv:Step-response instead.")))

(cl:ensure-generic-function 'odometry-val :lambda-list '(m))
(cl:defmethod odometry-val ((m <Step-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gym_gazebo-srv:odometry-val is deprecated.  Use gym_gazebo-srv:odometry instead.")
  (odometry m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Step-response>) ostream)
  "Serializes a message object of type '<Step-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'odometry) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Step-response>) istream)
  "Deserializes a message object of type '<Step-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'odometry) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Step-response>)))
  "Returns string type for a service object of type '<Step-response>"
  "gym_gazebo/StepResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Step-response)))
  "Returns string type for a service object of type 'Step-response"
  "gym_gazebo/StepResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Step-response>)))
  "Returns md5sum for a message object of type '<Step-response>"
  "6aeb2d84ae696b706a75700e2f66e1e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Step-response)))
  "Returns md5sum for a message object of type 'Step-response"
  "6aeb2d84ae696b706a75700e2f66e1e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Step-response>)))
  "Returns full string definition for message of type '<Step-response>"
  (cl:format cl:nil "nav_msgs/Odometry odometry # state/observation~%~%~%================================================================================~%MSG: nav_msgs/Odometry~%# This represents an estimate of a position and velocity in free space.  ~%# The pose in this message should be specified in the coordinate frame given by header.frame_id.~%# The twist in this message should be specified in the coordinate frame given by the child_frame_id~%Header header~%string child_frame_id~%geometry_msgs/PoseWithCovariance pose~%geometry_msgs/TwistWithCovariance twist~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Step-response)))
  "Returns full string definition for message of type 'Step-response"
  (cl:format cl:nil "nav_msgs/Odometry odometry # state/observation~%~%~%================================================================================~%MSG: nav_msgs/Odometry~%# This represents an estimate of a position and velocity in free space.  ~%# The pose in this message should be specified in the coordinate frame given by header.frame_id.~%# The twist in this message should be specified in the coordinate frame given by the child_frame_id~%Header header~%string child_frame_id~%geometry_msgs/PoseWithCovariance pose~%geometry_msgs/TwistWithCovariance twist~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Step-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'odometry))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Step-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Step-response
    (cl:cons ':odometry (odometry msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Step)))
  'Step-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Step)))
  'Step-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Step)))
  "Returns string type for a service object of type '<Step>"
  "gym_gazebo/Step")