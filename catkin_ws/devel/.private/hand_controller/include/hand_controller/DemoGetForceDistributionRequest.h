// Generated by gencpp from file hand_controller/DemoGetForceDistributionRequest.msg
// DO NOT EDIT!


#ifndef HAND_CONTROLLER_MESSAGE_DEMOGETFORCEDISTRIBUTIONREQUEST_H
#define HAND_CONTROLLER_MESSAGE_DEMOGETFORCEDISTRIBUTIONREQUEST_H


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
struct DemoGetForceDistributionRequest_
{
  typedef DemoGetForceDistributionRequest_<ContainerAllocator> Type;

  DemoGetForceDistributionRequest_()
    : iStart(0)
    , iEnd(0)  {
    }
  DemoGetForceDistributionRequest_(const ContainerAllocator& _alloc)
    : iStart(0)
    , iEnd(0)  {
  (void)_alloc;
    }



   typedef int16_t _iStart_type;
  _iStart_type iStart;

   typedef int16_t _iEnd_type;
  _iEnd_type iEnd;





  typedef boost::shared_ptr< ::hand_controller::DemoGetForceDistributionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hand_controller::DemoGetForceDistributionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct DemoGetForceDistributionRequest_

typedef ::hand_controller::DemoGetForceDistributionRequest_<std::allocator<void> > DemoGetForceDistributionRequest;

typedef boost::shared_ptr< ::hand_controller::DemoGetForceDistributionRequest > DemoGetForceDistributionRequestPtr;
typedef boost::shared_ptr< ::hand_controller::DemoGetForceDistributionRequest const> DemoGetForceDistributionRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hand_controller::DemoGetForceDistributionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hand_controller::DemoGetForceDistributionRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::hand_controller::DemoGetForceDistributionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hand_controller::DemoGetForceDistributionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hand_controller::DemoGetForceDistributionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hand_controller::DemoGetForceDistributionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hand_controller::DemoGetForceDistributionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hand_controller::DemoGetForceDistributionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hand_controller::DemoGetForceDistributionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bab83eaafe63f283402717a090950e23";
  }

  static const char* value(const ::hand_controller::DemoGetForceDistributionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbab83eaafe63f283ULL;
  static const uint64_t static_value2 = 0x402717a090950e23ULL;
};

template<class ContainerAllocator>
struct DataType< ::hand_controller::DemoGetForceDistributionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hand_controller/DemoGetForceDistributionRequest";
  }

  static const char* value(const ::hand_controller::DemoGetForceDistributionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hand_controller::DemoGetForceDistributionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16 iStart\n\
int16 iEnd\n\
";
  }

  static const char* value(const ::hand_controller::DemoGetForceDistributionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hand_controller::DemoGetForceDistributionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.iStart);
      stream.next(m.iEnd);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DemoGetForceDistributionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hand_controller::DemoGetForceDistributionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hand_controller::DemoGetForceDistributionRequest_<ContainerAllocator>& v)
  {
    s << indent << "iStart: ";
    Printer<int16_t>::stream(s, indent + "  ", v.iStart);
    s << indent << "iEnd: ";
    Printer<int16_t>::stream(s, indent + "  ", v.iEnd);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HAND_CONTROLLER_MESSAGE_DEMOGETFORCEDISTRIBUTIONREQUEST_H