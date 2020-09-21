// Generated by gencpp from file gazebo_msgs/GetModelStateResponse.msg
// DO NOT EDIT!


#ifndef GAZEBO_MSGS_MESSAGE_GETMODELSTATERESPONSE_H
#define GAZEBO_MSGS_MESSAGE_GETMODELSTATERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/Twist.h>

namespace gazebo_msgs
{
template <class ContainerAllocator>
struct GetModelStateResponse_
{
  typedef GetModelStateResponse_<ContainerAllocator> Type;

  GetModelStateResponse_()
    : header()
    , pose()
    , twist()
    , success(false)
    , status_message()  {
    }
  GetModelStateResponse_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , pose(_alloc)
    , twist(_alloc)
    , success(false)
    , status_message(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef  ::geometry_msgs::Twist_<ContainerAllocator>  _twist_type;
  _twist_type twist;

   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _status_message_type;
  _status_message_type status_message;





  typedef boost::shared_ptr< ::gazebo_msgs::GetModelStateResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gazebo_msgs::GetModelStateResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetModelStateResponse_

typedef ::gazebo_msgs::GetModelStateResponse_<std::allocator<void> > GetModelStateResponse;

typedef boost::shared_ptr< ::gazebo_msgs::GetModelStateResponse > GetModelStateResponsePtr;
typedef boost::shared_ptr< ::gazebo_msgs::GetModelStateResponse const> GetModelStateResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gazebo_msgs::GetModelStateResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gazebo_msgs::GetModelStateResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace gazebo_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'sensor_msgs': ['/opt/ros/melodic/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/melodic/share/trajectory_msgs/cmake/../msg'], 'gazebo_msgs': ['/home/studi/catkin_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::gazebo_msgs::GetModelStateResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gazebo_msgs::GetModelStateResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gazebo_msgs::GetModelStateResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gazebo_msgs::GetModelStateResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gazebo_msgs::GetModelStateResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gazebo_msgs::GetModelStateResponse_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gazebo_msgs::GetModelStateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ccd51739bb00f0141629e87b792e92b9";
  }

  static const char* value(const ::gazebo_msgs::GetModelStateResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xccd51739bb00f014ULL;
  static const uint64_t static_value2 = 0x1629e87b792e92b9ULL;
};

template<class ContainerAllocator>
struct DataType< ::gazebo_msgs::GetModelStateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gazebo_msgs/GetModelStateResponse";
  }

  static const char* value(const ::gazebo_msgs::GetModelStateResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gazebo_msgs::GetModelStateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"\n"
"\n"
"\n"
"geometry_msgs/Pose pose\n"
"geometry_msgs/Twist twist\n"
"bool success\n"
"string status_message\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Twist\n"
"# This expresses velocity in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::gazebo_msgs::GetModelStateResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gazebo_msgs::GetModelStateResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.pose);
      stream.next(m.twist);
      stream.next(m.success);
      stream.next(m.status_message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetModelStateResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gazebo_msgs::GetModelStateResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gazebo_msgs::GetModelStateResponse_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "twist: ";
    s << std::endl;
    Printer< ::geometry_msgs::Twist_<ContainerAllocator> >::stream(s, indent + "  ", v.twist);
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "status_message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.status_message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GAZEBO_MSGS_MESSAGE_GETMODELSTATERESPONSE_H
