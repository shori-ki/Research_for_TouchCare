#include "hand_visualization.h"

HandVisualization::HandVisualization()
{
  //publisher
  marker_array_pub = nh.advertise<visualization_msgs::MarkerArray>("marker_array", 100);

  // subscriber
  tempValue_sub = nh.subscribe("/tempValue/thumb", 1000, &HandVisualization::tempValusesThumbCallback, this);

  // timer
  timer = nh.createTimer(ros::Duration(0.1), &HandVisualization::timerCallback, this);

  // maker initialization
  marker_array.markers.resize(15);

}

HandVisualization::~HandVisualization()
{

}

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

void HandVisualization::tempValusesThumbCallback(const sensor_msgs::Temperature::ConstPtr& data)
{
  inputTemp = data->temperature;
  // ROS_INFO_STREAM(inputTemp);
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

  double norm = (inputTemp - MIN_temp) / (MAX_temp - MIN_temp);
  convert2RGB(norm, rgb);
  // std::cout << rgb[0] << std::endl;
  // std::cout << rgb[1] << std::endl;
  // std::cout << rgb[2] << std::endl;
  // std::cout << norm << std::endl;
  // ROS_INFO_STREAM(inputTemp);
  visualizeImages(0, fingerName[0]);
  visualizeImages(1, fingerName[1]);
  visualizeImages(2, fingerName[2]);
  visualizeImages(3, fingerName[3]);
  visualizeImages(4, fingerName[4]);
  visualizeImages(5, fingerName[5]);
  visualizeImages(6, fingerName[6]);
  visualizeImages(7, fingerName[7]);
  visualizeImages(8, fingerName[8]);
  visualizeImages(9, fingerName[9]);
  visualizeImages(10, fingerName[10]);
  visualizeImages(11, fingerName[11]);
  visualizeImages(12, fingerName[12]);
  visualizeImages(13, fingerName[13]);
  visualizeImages(14, fingerName[14]);

  marker_array_pub.publish(marker_array);

}

int main(int argc, char **argv){
  ros::init(argc, argv, "vis_marker_publisher1");
  HandVisualization hv;
  
  ros::spin();
  return 0;
}