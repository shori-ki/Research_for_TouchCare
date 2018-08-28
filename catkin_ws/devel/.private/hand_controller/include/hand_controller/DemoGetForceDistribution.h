// Generated by gencpp from file hand_controller/DemoGetForceDistribution.msg
// DO NOT EDIT!


#ifndef HAND_CONTROLLER_MESSAGE_DEMOGETFORCEDISTRIBUTION_H
#define HAND_CONTROLLER_MESSAGE_DEMOGETFORCEDISTRIBUTION_H

#include <ros/service_traits.h>


#include <hand_controller/DemoGetForceDistributionRequest.h>
#include <hand_controller/DemoGetForceDistributionResponse.h>


namespace hand_controller
{

struct DemoGetForceDistribution
{

typedef DemoGetForceDistributionRequest Request;
typedef DemoGetForceDistributionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct DemoGetForceDistribution
} // namespace hand_controller


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::hand_controller::DemoGetForceDistribution > {
  static const char* value()
  {
    return "bab83eaafe63f283402717a090950e23";
  }

  static const char* value(const ::hand_controller::DemoGetForceDistribution&) { return value(); }
};

template<>
struct DataType< ::hand_controller::DemoGetForceDistribution > {
  static const char* value()
  {
    return "hand_controller/DemoGetForceDistribution";
  }

  static const char* value(const ::hand_controller::DemoGetForceDistribution&) { return value(); }
};


// service_traits::MD5Sum< ::hand_controller::DemoGetForceDistributionRequest> should match 
// service_traits::MD5Sum< ::hand_controller::DemoGetForceDistribution > 
template<>
struct MD5Sum< ::hand_controller::DemoGetForceDistributionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::hand_controller::DemoGetForceDistribution >::value();
  }
  static const char* value(const ::hand_controller::DemoGetForceDistributionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::hand_controller::DemoGetForceDistributionRequest> should match 
// service_traits::DataType< ::hand_controller::DemoGetForceDistribution > 
template<>
struct DataType< ::hand_controller::DemoGetForceDistributionRequest>
{
  static const char* value()
  {
    return DataType< ::hand_controller::DemoGetForceDistribution >::value();
  }
  static const char* value(const ::hand_controller::DemoGetForceDistributionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::hand_controller::DemoGetForceDistributionResponse> should match 
// service_traits::MD5Sum< ::hand_controller::DemoGetForceDistribution > 
template<>
struct MD5Sum< ::hand_controller::DemoGetForceDistributionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::hand_controller::DemoGetForceDistribution >::value();
  }
  static const char* value(const ::hand_controller::DemoGetForceDistributionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::hand_controller::DemoGetForceDistributionResponse> should match 
// service_traits::DataType< ::hand_controller::DemoGetForceDistribution > 
template<>
struct DataType< ::hand_controller::DemoGetForceDistributionResponse>
{
  static const char* value()
  {
    return DataType< ::hand_controller::DemoGetForceDistribution >::value();
  }
  static const char* value(const ::hand_controller::DemoGetForceDistributionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // HAND_CONTROLLER_MESSAGE_DEMOGETFORCEDISTRIBUTION_H
