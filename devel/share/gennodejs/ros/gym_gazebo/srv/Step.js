// Auto-generated. Do not edit!

// (in-package gym_gazebo.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

let nav_msgs = _finder('nav_msgs');

//-----------------------------------------------------------

class StepRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.seconds = null;
      this.command = null;
    }
    else {
      if (initObj.hasOwnProperty('seconds')) {
        this.seconds = initObj.seconds
      }
      else {
        this.seconds = 0.0;
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = new geometry_msgs.msg.Twist();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StepRequest
    // Serialize message field [seconds]
    bufferOffset = _serializer.float64(obj.seconds, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StepRequest
    let len;
    let data = new StepRequest(null);
    // Deserialize message field [seconds]
    data.seconds = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gym_gazebo/StepRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aadc2f96f453613fb246fa09fd3c2ada';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 seconds # simulation time
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
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StepRequest(null);
    if (msg.seconds !== undefined) {
      resolved.seconds = msg.seconds;
    }
    else {
      resolved.seconds = 0.0
    }

    if (msg.command !== undefined) {
      resolved.command = geometry_msgs.msg.Twist.Resolve(msg.command)
    }
    else {
      resolved.command = new geometry_msgs.msg.Twist()
    }

    return resolved;
    }
};

class StepResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.odometry = null;
    }
    else {
      if (initObj.hasOwnProperty('odometry')) {
        this.odometry = initObj.odometry
      }
      else {
        this.odometry = new nav_msgs.msg.Odometry();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StepResponse
    // Serialize message field [odometry]
    bufferOffset = nav_msgs.msg.Odometry.serialize(obj.odometry, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StepResponse
    let len;
    let data = new StepResponse(null);
    // Deserialize message field [odometry]
    data.odometry = nav_msgs.msg.Odometry.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += nav_msgs.msg.Odometry.getMessageSize(object.odometry);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gym_gazebo/StepResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '67c6ccaed736ca9da4a6f506779f56fb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StepResponse(null);
    if (msg.odometry !== undefined) {
      resolved.odometry = nav_msgs.msg.Odometry.Resolve(msg.odometry)
    }
    else {
      resolved.odometry = new nav_msgs.msg.Odometry()
    }

    return resolved;
    }
};

module.exports = {
  Request: StepRequest,
  Response: StepResponse,
  md5sum() { return '6aeb2d84ae696b706a75700e2f66e1e5'; },
  datatype() { return 'gym_gazebo/Step'; }
};
