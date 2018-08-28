// Generated by gencpp from file hand_controller/RubbingMotionRequest.msg
// DO NOT EDIT!


#ifndef HAND_CONTROLLER_MESSAGE_RUBBINGMOTIONREQUEST_H
#define HAND_CONTROLLER_MESSAGE_RUBBINGMOTIONREQUEST_H


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
struct RubbingMotionRequest_
{
  typedef RubbingMotionRequest_<ContainerAllocator> Type;

  RubbingMotionRequest_()
    : rubbingmotionrepetitions(0)  {
    }
  RubbingMotionRequest_(const ContainerAllocator& _alloc)
    : rubbingmotionrepetitions(0)  {
  (void)_alloc;
    }



   typedef uint16_t _rubbingmotionrepetitions_type;
  _rubbingmotionrepetitions_type rubbingmotionrepetitions;





  typedef boost::shared_ptr< ::hand_controller::RubbingMotionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hand_controller::RubbingMotionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct RubbingMotionRequest_

typedef ::hand_controller::RubbingMotionRequest_<std::allocator<void> > RubbingMotionRequest;

typedef boost::shared_ptr< ::hand_controller::RubbingMotionRequest > RubbingMotionRequestPtr;
typedef boost::shared_ptr< ::hand_controller::RubbingMotionRequest const> RubbingMotionRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hand_controller::RubbingMotionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hand_controller::RubbingMotionRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::hand_controller::RubbingMotionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hand_controller::RubbingMotionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hand_controller::RubbingMotionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hand_controller::RubbingMotionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hand_controller::RubbingMotionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hand_controller::RubbingMotionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hand_controller::RubbingMotionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "558b361be41d47909cd85fcfff79812b";
  }

  static const char* value(const ::hand_controller::RubbingMotionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x558b361be41d4790ULL;
  static const uint64_t static_value2 = 0x9cd85fcfff79812bULL;
};

template<class ContainerAllocator>
struct DataType< ::hand_controller::RubbingMotionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hand_controller/RubbingMotionRequest";
  }

  static const char* value(const ::hand_controller::RubbingMotionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hand_controller::RubbingMotionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint16 rubbingmotionrepetitions\n\
";
  }

  static const char* value(const ::hand_controller::RubbingMotionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hand_controller::RubbingMotionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.rubbingmotionrepetitions);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RubbingMotionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hand_controller::RubbingMotionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hand_controller::RubbingMotionRequest_<ContainerAllocator>& v)
  {
    s << indent << "rubbingmotionrepetitions: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.rubbingmotionrepetitions);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HAND_CONTROLLER_MESSAGE_RUBBINGMOTIONREQUEST_H
