// Generated by gencpp from file hand_controller/checkGrasp.msg
// DO NOT EDIT!


#ifndef HAND_CONTROLLER_MESSAGE_CHECKGRASP_H
#define HAND_CONTROLLER_MESSAGE_CHECKGRASP_H

#include <ros/service_traits.h>


#include <hand_controller/checkGraspRequest.h>
#include <hand_controller/checkGraspResponse.h>


namespace hand_controller
{

struct checkGrasp
{

typedef checkGraspRequest Request;
typedef checkGraspResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct checkGrasp
} // namespace hand_controller


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::hand_controller::checkGrasp > {
  static const char* value()
  {
    return "a87fef5f943ec854fec992ab903ef3aa";
  }

  static const char* value(const ::hand_controller::checkGrasp&) { return value(); }
};

template<>
struct DataType< ::hand_controller::checkGrasp > {
  static const char* value()
  {
    return "hand_controller/checkGrasp";
  }

  static const char* value(const ::hand_controller::checkGrasp&) { return value(); }
};


// service_traits::MD5Sum< ::hand_controller::checkGraspRequest> should match 
// service_traits::MD5Sum< ::hand_controller::checkGrasp > 
template<>
struct MD5Sum< ::hand_controller::checkGraspRequest>
{
  static const char* value()
  {
    return MD5Sum< ::hand_controller::checkGrasp >::value();
  }
  static const char* value(const ::hand_controller::checkGraspRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::hand_controller::checkGraspRequest> should match 
// service_traits::DataType< ::hand_controller::checkGrasp > 
template<>
struct DataType< ::hand_controller::checkGraspRequest>
{
  static const char* value()
  {
    return DataType< ::hand_controller::checkGrasp >::value();
  }
  static const char* value(const ::hand_controller::checkGraspRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::hand_controller::checkGraspResponse> should match 
// service_traits::MD5Sum< ::hand_controller::checkGrasp > 
template<>
struct MD5Sum< ::hand_controller::checkGraspResponse>
{
  static const char* value()
  {
    return MD5Sum< ::hand_controller::checkGrasp >::value();
  }
  static const char* value(const ::hand_controller::checkGraspResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::hand_controller::checkGraspResponse> should match 
// service_traits::DataType< ::hand_controller::checkGrasp > 
template<>
struct DataType< ::hand_controller::checkGraspResponse>
{
  static const char* value()
  {
    return DataType< ::hand_controller::checkGrasp >::value();
  }
  static const char* value(const ::hand_controller::checkGraspResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // HAND_CONTROLLER_MESSAGE_CHECKGRASP_H