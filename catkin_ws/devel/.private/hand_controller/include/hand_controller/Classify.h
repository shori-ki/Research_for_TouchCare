// Generated by gencpp from file hand_controller/Classify.msg
// DO NOT EDIT!


#ifndef HAND_CONTROLLER_MESSAGE_CLASSIFY_H
#define HAND_CONTROLLER_MESSAGE_CLASSIFY_H

#include <ros/service_traits.h>


#include <hand_controller/ClassifyRequest.h>
#include <hand_controller/ClassifyResponse.h>


namespace hand_controller
{

struct Classify
{

typedef ClassifyRequest Request;
typedef ClassifyResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Classify
} // namespace hand_controller


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::hand_controller::Classify > {
  static const char* value()
  {
    return "a7d3514bb828bdf6301e6a471a1834ee";
  }

  static const char* value(const ::hand_controller::Classify&) { return value(); }
};

template<>
struct DataType< ::hand_controller::Classify > {
  static const char* value()
  {
    return "hand_controller/Classify";
  }

  static const char* value(const ::hand_controller::Classify&) { return value(); }
};


// service_traits::MD5Sum< ::hand_controller::ClassifyRequest> should match 
// service_traits::MD5Sum< ::hand_controller::Classify > 
template<>
struct MD5Sum< ::hand_controller::ClassifyRequest>
{
  static const char* value()
  {
    return MD5Sum< ::hand_controller::Classify >::value();
  }
  static const char* value(const ::hand_controller::ClassifyRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::hand_controller::ClassifyRequest> should match 
// service_traits::DataType< ::hand_controller::Classify > 
template<>
struct DataType< ::hand_controller::ClassifyRequest>
{
  static const char* value()
  {
    return DataType< ::hand_controller::Classify >::value();
  }
  static const char* value(const ::hand_controller::ClassifyRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::hand_controller::ClassifyResponse> should match 
// service_traits::MD5Sum< ::hand_controller::Classify > 
template<>
struct MD5Sum< ::hand_controller::ClassifyResponse>
{
  static const char* value()
  {
    return MD5Sum< ::hand_controller::Classify >::value();
  }
  static const char* value(const ::hand_controller::ClassifyResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::hand_controller::ClassifyResponse> should match 
// service_traits::DataType< ::hand_controller::Classify > 
template<>
struct DataType< ::hand_controller::ClassifyResponse>
{
  static const char* value()
  {
    return DataType< ::hand_controller::Classify >::value();
  }
  static const char* value(const ::hand_controller::ClassifyResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // HAND_CONTROLLER_MESSAGE_CLASSIFY_H
