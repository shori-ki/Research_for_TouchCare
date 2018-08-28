// Generated by gencpp from file hand_controller/Angles.msg
// DO NOT EDIT!


#ifndef HAND_CONTROLLER_MESSAGE_ANGLES_H
#define HAND_CONTROLLER_MESSAGE_ANGLES_H


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
struct Angles_
{
  typedef Angles_<ContainerAllocator> Type;

  Angles_()
    : data_1(0)
    , data_2(0)  {
    }
  Angles_(const ContainerAllocator& _alloc)
    : data_1(0)
    , data_2(0)  {
  (void)_alloc;
    }



   typedef uint8_t _data_1_type;
  _data_1_type data_1;

   typedef uint8_t _data_2_type;
  _data_2_type data_2;





  typedef boost::shared_ptr< ::hand_controller::Angles_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hand_controller::Angles_<ContainerAllocator> const> ConstPtr;

}; // struct Angles_

typedef ::hand_controller::Angles_<std::allocator<void> > Angles;

typedef boost::shared_ptr< ::hand_controller::Angles > AnglesPtr;
typedef boost::shared_ptr< ::hand_controller::Angles const> AnglesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hand_controller::Angles_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hand_controller::Angles_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::hand_controller::Angles_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hand_controller::Angles_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hand_controller::Angles_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hand_controller::Angles_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hand_controller::Angles_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hand_controller::Angles_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hand_controller::Angles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9cd7eb3205b83a9787c9effbd8c528ae";
  }

  static const char* value(const ::hand_controller::Angles_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9cd7eb3205b83a97ULL;
  static const uint64_t static_value2 = 0x87c9effbd8c528aeULL;
};

template<class ContainerAllocator>
struct DataType< ::hand_controller::Angles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hand_controller/Angles";
  }

  static const char* value(const ::hand_controller::Angles_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hand_controller::Angles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 data_1\n\
uint8 data_2\n\
";
  }

  static const char* value(const ::hand_controller::Angles_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hand_controller::Angles_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.data_1);
      stream.next(m.data_2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Angles_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hand_controller::Angles_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hand_controller::Angles_<ContainerAllocator>& v)
  {
    s << indent << "data_1: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.data_1);
    s << indent << "data_2: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.data_2);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HAND_CONTROLLER_MESSAGE_ANGLES_H
