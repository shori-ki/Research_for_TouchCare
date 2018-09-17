#ifndef __HAND_VISUALIZATIOM_H
#define __HAND_VISUALIZATIOM_H

#include <ros/ros.h>
#include <math.h>
#include <visualization_msgs/MarkerArray.h>
#include <string>
#include <sensor_msgs/Temperature.h>
#include <vector>

#define MAX_temp 45.0
#define MIN_temp 25.0

class HandVisualization
{
private:
	double inputTemp;
	double rgb[3];
	std::vector<std::string> fingerName = {"Pinky_1", "Pinky_2", "Ring_1", "Ring_2", "Middle_1", "Middle_2", "Index_1", "Index_2", "Thumb", "Palm_1", "Palm_2", "Palm_3", "Palm_4", "Palm_5", "Palm_6"};

  	// maker
  	visualization_msgs::MarkerArray marker_array;


public:
	HandVisualization();
	~HandVisualization();
	double sigmoid(double x, double gain=1.0, double offset_x=0.0);
	double* convert2RGB(double &x, double (&rgb)[3]);
	void tempValusesThumbCallback(const sensor_msgs::Temperature::ConstPtr& data);
	void timerCallback(const ros::TimerEvent&);
	void visualizeImages(int n, std::string name);
	ros::NodeHandle nh;
  	ros::Publisher marker_array_pub;
	ros::Subscriber tempValue_sub;
	ros::Timer timer;
};

#endif