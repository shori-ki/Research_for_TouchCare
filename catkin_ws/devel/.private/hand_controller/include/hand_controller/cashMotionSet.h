// Generated by gencpp from file hand_controller/cashMotionSet.msg
// DO NOT EDIT!


#ifndef HAND_CONTROLLER_MESSAGE_CASHMOTIONSET_H
#define HAND_CONTROLLER_MESSAGE_CASHMOTIONSET_H

#include <ros/service_traits.h>


#include <hand_controller/cashMotionSetRequest.h>
#include <hand_controller/cashMotionSetResponse.h>


namespace hand_controller
{

struct cashMotionSet
{

typedef cashMotionSetRequest Request;
typedef cashMotionSetResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct cashMotionSet
} // namespace hand_controller


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::hand_controller::cashMotionSet > {
  static const char* value()
  {
    return "109cc6351a2b407de68db394282f6650";
  }

  static const char* value(const ::hand_controller::cashMotionSet&) { return value(); }
};

template<>
struct DataType< ::hand_controller::cashMotionSet > {
  static const char* value()
  {
    return "hand_controller/cashMotionSet";
  }

  static const char* value(const ::hand_controller::cashMotionSet&) { return value(); }
};


// service_traits::MD5Sum< ::hand_controller::cashMotionSetRequest> should match 
// service_traits::MD5Sum< ::hand_controller::cashMotionSet > 
template<>
struct MD5Sum< ::hand_controller::cashMotionSetRequest>
{
  static const char* value()
  {
    return MD5Sum< ::hand_controller::cashMotionSet >::value();
  }
  static const char* value(const ::hand_controller::cashMotionSetRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::hand_controller::cashMotionSetRequest> should match 
// service_traits::DataType< ::hand_controller::cashMotionSet > 
template<>
struct DataType< ::hand_controller::cashMotionSetRequest>
{
  static const char* value()
  {
    return DataType< ::hand_controller::cashMotionSet >::value();
  }
  static const char* value(const ::hand_controller::cashMotionSetRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::hand_controller::cashMotionSetResponse> should match 
// service_traits::MD5Sum< ::hand_controller::cashMotionSet > 
template<>
struct MD5Sum< ::hand_controller::cashMotionSetResponse>
{
  static const char* value()
  {
    return MD5Sum< ::hand_controller::cashMotionSet >::value();
  }
  static const char* value(const ::hand_controller::cashMotionSetResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::hand_controller::cashMotionSetResponse> should match 
// service_traits::DataType< ::hand_controller::cashMotionSet > 
template<>
struct DataType< ::hand_controller::cashMotionSetResponse>
{
  static const char* value()
  {
    return DataType< ::hand_controller::cashMotionSet >::value();
  }
  static const char* value(const ::hand_controller::cashMotionSetResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // HAND_CONTROLLER_MESSAGE_CASHMOTIONSET_H