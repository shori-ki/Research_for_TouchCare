// Generated by gencpp from file hand_controller/MotorStepsResponse.msg
// DO NOT EDIT!


#ifndef HAND_CONTROLLER_MESSAGE_MOTORSTEPSRESPONSE_H
#define HAND_CONTROLLER_MESSAGE_MOTORSTEPSRESPONSE_H


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
struct MotorStepsResponse_
{
  typedef MotorStepsResponse_<ContainerAllocator> Type;

  MotorStepsResponse_()
    : motorstep1(0)
    , motorstep2(0)  {
    }
  MotorStepsResponse_(const ContainerAllocator& _alloc)
    : motorstep1(0)
    , motorstep2(0)  {
  (void)_alloc;
    }



   typedef int16_t _motorstep1_type;
  _motorstep1_type motorstep1;

   typedef int16_t _motorstep2_type;
  _motorstep2_type motorstep2;





  typedef boost::shared_ptr< ::hand_controller::MotorStepsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hand_controller::MotorStepsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct MotorStepsResponse_

typedef ::hand_controller::MotorStepsResponse_<std::allocator<void> > MotorStepsResponse;

typedef boost::shared_ptr< ::hand_controller::MotorStepsResponse > MotorStepsResponsePtr;
typedef boost::shared_ptr< ::hand_controller::MotorStepsResponse const> MotorStepsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hand_controller::MotorStepsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hand_controller::MotorStepsResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::hand_controller::MotorStepsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hand_controller::MotorStepsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hand_controller::MotorStepsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hand_controller::MotorStepsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hand_controller::MotorStepsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hand_controller::MotorStepsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hand_controller::MotorStepsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5df53fa0fa1b84c4a7ebce9f68720f63";
  }

  static const char* value(const ::hand_controller::MotorStepsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5df53fa0fa1b84c4ULL;
  static const uint64_t static_value2 = 0xa7ebce9f68720f63ULL;
};

template<class ContainerAllocator>
struct DataType< ::hand_controller::MotorStepsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hand_controller/MotorStepsResponse";
  }

  static const char* value(const ::hand_controller::MotorStepsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hand_controller::MotorStepsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16 motorstep1\n\
int16 motorstep2\n\
\n\
";
  }

  static const char* value(const ::hand_controller::MotorStepsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hand_controller::MotorStepsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.motorstep1);
      stream.next(m.motorstep2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MotorStepsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hand_controller::MotorStepsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hand_controller::MotorStepsResponse_<ContainerAllocator>& v)
  {
    s << indent << "motorstep1: ";
    Printer<int16_t>::stream(s, indent + "  ", v.motorstep1);
    s << indent << "motorstep2: ";
    Printer<int16_t>::stream(s, indent + "  ", v.motorstep2);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HAND_CONTROLLER_MESSAGE_MOTORSTEPSRESPONSE_H
