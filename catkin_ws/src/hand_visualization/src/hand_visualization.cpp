#include "hand_visualization.h"

HandVisualization::HandVisualization()
{
  //publisher
  marker_array_pub = nh.advertise<visualization_msgs::MarkerArray>("marker_array", 100);

  // subscriber
  tempValue_sub_1 = nh.subscribe("/tempValue/pinky_1", 1000, &HandVisualization::tempValusesPinky_1Callback, this);
  tempValue_sub_2 = nh.subscribe("/tempValue/pinky_2", 1000, &HandVisualization::tempValusesPinky_2Callback, this);
  tempValue_sub_3 = nh.subscribe("/tempValue/ring_1", 1000, &HandVisualization::tempValusesRing_1Callback, this);
  tempValue_sub_4 = nh.subscribe("/tempValue/ring_2", 1000, &HandVisualization::tempValusesRing_2Callback, this);
  tempValue_sub_5 = nh.subscribe("/tempValue/middle_1", 1000, &HandVisualization::tempValusesMiddle_1Callback, this);
  tempValue_sub_6 = nh.subscribe("/tempValue/middle_2", 1000, &HandVisualization::tempValusesMiddle_2Callback, this);
  tempValue_sub_7 = nh.subscribe("/tempValue/index_1", 1000, &HandVisualization::tempValusesIndex_1Callback, this);
  tempValue_sub_8 = nh.subscribe("/tempValue/index_2", 1000, &HandVisualization::tempValusesIndex_2Callback, this);
  tempValue_sub_9 = nh.subscribe("/tempValue/thumb", 1000, &HandVisualization::tempValusesThumbCallback, this);
  tempValue_sub_10 = nh.subscribe("/tempValue/palm_1", 1000, &HandVisualization::tempValusesPalm_1Callback, this);
  tempValue_sub_11 = nh.subscribe("/tempValue/palm_2", 1000, &HandVisualization::tempValusesPalm_2Callback, this);
  tempValue_sub_12 = nh.subscribe("/tempValue/palm_3", 1000, &HandVisualization::tempValusesPalm_3Callback, this);
  tempValue_sub_13 = nh.subscribe("/tempValue/palm_4", 1000, &HandVisualization::tempValusesPalm_4Callback, this);
  tempValue_sub_14 = nh.subscribe("/tempValue/palm_5", 1000, &HandVisualization::tempValusesPalm_5Callback, this);
  tempValue_sub_15 = nh.subscribe("/tempValue/palm_6", 1000, &HandVisualization::tempValusesPalm_6Callback, this);
  
  // timer
  timer = nh.createTimer(ros::Duration(0.01), &HandVisualization::timerCallback, this);

  // maker initialization
  marker_array.markers.resize(15);

}

HandVisualization::~HandVisualization()
{

}

// void HandVisualization::Callback(const ros::MessageEvent<sensor_msgs::Temperature const>& event)
// {
//   const ros::M_string& header = event.getConnectionHeader();
//   std::string topic = header.at("topic");
//   ROS_INFO("[%s]", topic.c_str());
//   ROS_INFO_STREAM("Pinky_1: " << tempPinky_1);
//   ROS_INFO_STREAM("Pinky_2: " << tempPinky_2);
// }

double HandVisualization::sigmoid(double x, double gain, double offset_x)
{
  return ( ( tanh( ( ( x + offset_x ) * gain ) / 2.0 ) + 1.0 ) / 2.0);
}

double* HandVisualization::convert2RGB(double &x, double (&rgb)[3])
{
  double gain = 10.0;
  double offset_x = 0.2;
  double offset_green = 0.6;

  x = (x * 2.0) - 1.0;
  rgb[0] = sigmoid(x, gain, -1 * offset_x);
  rgb[2] = 1 - sigmoid(x, gain, offset_x);
  rgb[1] = sigmoid(x, gain, offset_green) + (1 - sigmoid(x, gain, -1 * offset_green));
  rgb[1] = rgb[1] - 1.0;

  return rgb;
}

// Callback for sensors
void HandVisualization::tempValusesPinky_1Callback(const sensor_msgs::Temperature::ConstPtr& data_1)
{
  tempPinky_1 = data_1->temperature;
}

void HandVisualization::tempValusesPinky_2Callback(const sensor_msgs::Temperature::ConstPtr& data_2)
{
  tempPinky_2 = data_2->temperature;
}

void HandVisualization::tempValusesRing_1Callback(const sensor_msgs::Temperature::ConstPtr& data_3)
{
  tempRing_1 = data_3->temperature;
}

void HandVisualization::tempValusesRing_2Callback(const sensor_msgs::Temperature::ConstPtr& data)
{
  tempRing_2 = data->temperature;
}

void HandVisualization::tempValusesMiddle_1Callback(const sensor_msgs::Temperature::ConstPtr& data)
{
  tempMiddle_1 = data->temperature;
}

void HandVisualization::tempValusesMiddle_2Callback(const sensor_msgs::Temperature::ConstPtr& data)
{
  tempMiddle_2 = data->temperature;
}

void HandVisualization::tempValusesIndex_1Callback(const sensor_msgs::Temperature::ConstPtr& data)
{
  tempIndex_1 = data->temperature;
}

void HandVisualization::tempValusesIndex_2Callback(const sensor_msgs::Temperature::ConstPtr& data)
{
  tempIndex_2 = data->temperature;
}

void HandVisualization::tempValusesThumbCallback(const sensor_msgs::Temperature::ConstPtr& data)
{
  tempThumb = data->temperature;
}

void HandVisualization::tempValusesPalm_1Callback(const sensor_msgs::Temperature::ConstPtr& data)
{
  tempPalm_1 = data->temperature;
}

void HandVisualization::tempValusesPalm_2Callback(const sensor_msgs::Temperature::ConstPtr& data)
{
  tempPalm_2 = data->temperature;
}

void HandVisualization::tempValusesPalm_3Callback(const sensor_msgs::Temperature::ConstPtr& data)
{
  tempPalm_3 = data->temperature;
}

void HandVisualization::tempValusesPalm_4Callback(const sensor_msgs::Temperature::ConstPtr& data)
{
  tempPalm_4 = data->temperature;
}

void HandVisualization::tempValusesPalm_5Callback(const sensor_msgs::Temperature::ConstPtr& data)
{
  tempPalm_5 = data->temperature;
}

void HandVisualization::tempValusesPalm_6Callback(const sensor_msgs::Temperature::ConstPtr& data)
{
  tempPalm_6 = data->temperature;
}

void HandVisualization::visualizeImages(int n, std::string name)
{
  std::string meshPath = "package://hand_visualization/meshes/";
  std::string extension = ".stl";
  std::string meshNamePath = meshPath + name + extension;


  marker_array.markers[n].header.frame_id = "/hand";
  // marker_array.markers[n].header.stamp = ros::Time::now();
  marker_array.markers[n].ns = name;
  marker_array.markers[n].id = n;

  marker_array.markers[n].type = visualization_msgs::Marker::MESH_RESOURCE;
  marker_array.markers[n].mesh_resource = meshNamePath;
  marker_array.markers[n].action = visualization_msgs::Marker::ADD;
  // marker_array.markers[0].lifetime = ros::Duration();

  marker_array.markers[n].scale.x = 1.0;
  marker_array.markers[n].scale.y = 1.0;
  marker_array.markers[n].scale.z = 1.0;
  marker_array.markers[n].pose.position.x=0.0;
  marker_array.markers[n].pose.position.y=1.0;
  marker_array.markers[n].pose.position.z=0.0;
  marker_array.markers[n].pose.orientation.x=0;
  marker_array.markers[n].pose.orientation.y=0;
  marker_array.markers[n].pose.orientation.z=0;
  marker_array.markers[n].pose.orientation.w=1;
  marker_array.markers[n].color.r = rgb[0];
  marker_array.markers[n].color.g = rgb[1];
  marker_array.markers[n].color.b = rgb[2];
  marker_array.markers[n].color.a = 1.0f;
}


void HandVisualization::timerCallback(const ros::TimerEvent&)
{
  // std::cout << rgb[0] << std::endl;
  // std::cout << rgb[1] << std::endl;
  // std::cout << rgb[2] << std::endl;
  // std::cout << norm << std::endl;

  double norm = (tempPinky_1 - MIN_temp) / (MAX_temp - MIN_temp);
  convert2RGB(norm, rgb);
  visualizeImages(0, fingerName[0]);

  norm = (tempPinky_2 - MIN_temp) / (MAX_temp - MIN_temp);
  convert2RGB(norm, rgb);
  visualizeImages(1, fingerName[1]);

  norm = (tempRing_1 - MIN_temp) / (MAX_temp - MIN_temp);
  convert2RGB(norm, rgb);
  visualizeImages(2, fingerName[2]);

  norm = (tempRing_2 - MIN_temp) / (MAX_temp - MIN_temp);
  convert2RGB(norm, rgb);
  visualizeImages(3, fingerName[3]);

  norm = (tempMiddle_1 - MIN_temp) / (MAX_temp - MIN_temp);
  convert2RGB(norm, rgb);
  visualizeImages(4, fingerName[4]);

  norm = (tempMiddle_2 - MIN_temp) / (MAX_temp - MIN_temp);
  convert2RGB(norm, rgb);
  visualizeImages(5, fingerName[5]);

  norm = (tempIndex_1 - MIN_temp) / (MAX_temp - MIN_temp);
  convert2RGB(norm, rgb);
  visualizeImages(6, fingerName[6]);

  norm = (tempIndex_2 - MIN_temp) / (MAX_temp - MIN_temp);
  convert2RGB(norm, rgb);
  visualizeImages(7, fingerName[7]);

  norm = (tempThumb - MIN_temp) / (MAX_temp - MIN_temp);
  convert2RGB(norm, rgb);
  visualizeImages(8, fingerName[8]);

  norm = (tempPalm_1 - MIN_temp) / (MAX_temp - MIN_temp);
  convert2RGB(norm, rgb);
  visualizeImages(9, fingerName[9]);

  norm = (tempPalm_2 - MIN_temp) / (MAX_temp - MIN_temp);
  convert2RGB(norm, rgb);
  visualizeImages(10, fingerName[10]);

  norm = (tempPalm_3 - MIN_temp) / (MAX_temp - MIN_temp);
  convert2RGB(norm, rgb);
  visualizeImages(11, fingerName[11]);

  norm = (tempPalm_4 - MIN_temp) / (MAX_temp - MIN_temp);
  convert2RGB(norm, rgb);
  visualizeImages(12, fingerName[12]);

  norm = (tempPalm_5 - MIN_temp) / (MAX_temp - MIN_temp);
  convert2RGB(norm, rgb);
  visualizeImages(13, fingerName[13]);

  norm = (tempPalm_6 - MIN_temp) / (MAX_temp - MIN_temp);
  convert2RGB(norm, rgb);
  visualizeImages(14, fingerName[14]);

  marker_array_pub.publish(marker_array);

}

int main(int argc, char **argv){
  ros::init(argc, argv, "vis_marker_publisher1");
  HandVisualization hv;
  
  ros::spin();
  return 0;
}