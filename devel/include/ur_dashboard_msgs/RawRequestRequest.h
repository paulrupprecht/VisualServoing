// Generated by gencpp from file ur_dashboard_msgs/RawRequestRequest.msg
// DO NOT EDIT!


#ifndef UR_DASHBOARD_MSGS_MESSAGE_RAWREQUESTREQUEST_H
#define UR_DASHBOARD_MSGS_MESSAGE_RAWREQUESTREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ur_dashboard_msgs
{
template <class ContainerAllocator>
struct RawRequestRequest_
{
  typedef RawRequestRequest_<ContainerAllocator> Type;

  RawRequestRequest_()
    : query()  {
    }
  RawRequestRequest_(const ContainerAllocator& _alloc)
    : query(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _query_type;
  _query_type query;





  typedef boost::shared_ptr< ::ur_dashboard_msgs::RawRequestRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ur_dashboard_msgs::RawRequestRequest_<ContainerAllocator> const> ConstPtr;

}; // struct RawRequestRequest_

typedef ::ur_dashboard_msgs::RawRequestRequest_<std::allocator<void> > RawRequestRequest;

typedef boost::shared_ptr< ::ur_dashboard_msgs::RawRequestRequest > RawRequestRequestPtr;
typedef boost::shared_ptr< ::ur_dashboard_msgs::RawRequestRequest const> RawRequestRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ur_dashboard_msgs::RawRequestRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ur_dashboard_msgs::RawRequestRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ur_dashboard_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/melodic/share/actionlib_msgs/cmake/../msg'], 'ur_dashboard_msgs': ['/home/studi/catkin_ws/src/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg', '/home/studi/catkin_ws/devel/share/ur_dashboard_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ur_dashboard_msgs::RawRequestRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ur_dashboard_msgs::RawRequestRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ur_dashboard_msgs::RawRequestRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ur_dashboard_msgs::RawRequestRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur_dashboard_msgs::RawRequestRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur_dashboard_msgs::RawRequestRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ur_dashboard_msgs::RawRequestRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6490a46152f373285fe18f491ed93702";
  }

  static const char* value(const ::ur_dashboard_msgs::RawRequestRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6490a46152f37328ULL;
  static const uint64_t static_value2 = 0x5fe18f491ed93702ULL;
};

template<class ContainerAllocator>
struct DataType< ::ur_dashboard_msgs::RawRequestRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ur_dashboard_msgs/RawRequestRequest";
  }

  static const char* value(const ::ur_dashboard_msgs::RawRequestRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ur_dashboard_msgs::RawRequestRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"string query\n"
;
  }

  static const char* value(const ::ur_dashboard_msgs::RawRequestRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ur_dashboard_msgs::RawRequestRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.query);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RawRequestRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ur_dashboard_msgs::RawRequestRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ur_dashboard_msgs::RawRequestRequest_<ContainerAllocator>& v)
  {
    s << indent << "query: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.query);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UR_DASHBOARD_MSGS_MESSAGE_RAWREQUESTREQUEST_H
