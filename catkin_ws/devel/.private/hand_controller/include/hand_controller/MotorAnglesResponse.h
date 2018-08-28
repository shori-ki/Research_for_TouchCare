// Generated by gencpp from file hand_controller/MotorAnglesResponse.msg
// DO NOT EDIT!


#ifndef HAND_CONTROLLER_MESSAGE_MOTORANGLESRESPONSE_H
#define HAND_CONTROLLER_MESSAGE_MOTORANGLESRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace hand_controller
{
template <class ContainerAllocator>
struct MotorAnglesResponse_
{
  typedef MotorAnglesResponse_<ContainerAllocator> Type;

  MotorAnglesResponse_()
    : motorangle1(0)
    , motorangle2(0)  {
    }
  MotorAnglesResponse_(const ContainerAllocator& _alloc)
    : motorangle1(0)
    , motorangle2(0)  {
  (void)_alloc;
    }



   typedef int16_t _motorangle1_type;
  _motorangle1_type motorangle1;

   typedef int16_t _motorangle2_type;
  _motorangle2_type motorangle2;





  typedef boost::shared_ptr< ::hand_controller::MotorAnglesResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hand_controller::MotorAnglesResponse_<ContainerAllocator> const> ConstPtr;

}; // struct MotorAnglesResponse_

typedef ::hand_controller::MotorAnglesResponse_<std::allocator<void> > MotorAnglesResponse;

typedef boost::shared_ptr< ::hand_controller::MotorAnglesResponse > MotorAnglesResponsePtr;
typedef boost::shared_ptr< ::hand_controller::MotorAnglesResponse const> MotorAnglesResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hand_controller::MotorAnglesResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hand_controller::MotorAnglesResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace hand_controller

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'hand_controller': ['/root/catkin_ws/src/hand_controller/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::hand_controller::MotorAnglesResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hand_controller::MotorAnglesResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hand_controller::MotorAnglesResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hand_controller::MotorAnglesResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hand_controller::MotorAnglesResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hand_controller::MotorAnglesResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hand_controller::MotorAnglesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "985fd6b2c4a26cb7c36bfac8da43b577";
  }

  static const char* value(const ::hand_controller::MotorAnglesResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x985fd6b2c4a26cb7ULL;
  static const uint64_t static_value2 = 0xc36bfac8da43b577ULL;
};

template<class ContainerAllocator>
struct DataType< ::hand_controller::MotorAnglesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hand_controller/MotorAnglesResponse";
  }

  static const char* value(const ::hand_controller::MotorAnglesResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hand_controller::MotorAnglesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16 motorangle1\n\
int16 motorangle2\n\
\n\
";
  }

  static const char* value(const ::hand_controller::MotorAnglesResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hand_controller::MotorAnglesResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.motorangle1);
      stream.next(m.motorangle2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MotorAnglesResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hand_controller::MotorAnglesResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hand_controller::MotorAnglesResponse_<ContainerAllocator>& v)
  {
    s << indent << "motorangle1: ";
    Printer<int16_t>::stream(s, indent + "  ", v.motorangle1);
    s << indent << "motorangle2: ";
    Printer<int16_t>::stream(s, indent + "  ", v.motorangle2);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HAND_CONTROLLER_MESSAGE_MOTORANGLESRESPONSE_H
