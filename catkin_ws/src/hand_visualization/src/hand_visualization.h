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
	std::vector<std::string> fingerName = {"Pinky_1", "Pinky_2", "Ring_1", "Ring_2", "Middle_1", "Middle_2", "Index_1", "Index_2", "Thumb", "Palm_1", "Palm_2", "Palm_3", "Palm_4", "Palm_5", "Palm_6"};
  	
  	// maker
  	visualization_msgs::MarkerArray marker_array;

  	double tempPinky_1, tempPinky_2, tempRing_1, tempRing_2, tempMiddle_1, tempMiddle_2, tempIndex_1, tempIndex_2, tempThumb, tempPalm_1, tempPalm_2, tempPalm_3, tempPalm_4, tempPalm_5, tempPalm_6;
	double rgb[3];


public:
	HandVisualization();
	~HandVisualization();
	double sigmoid(double x, double gain=1.0, double offset_x=0.0);
	double* convert2RGB(double &x, double (&rgb)[3]);
	void tempValusesPinky_1Callback(const sensor_msgs::Temperature::ConstPtr& data);
	/*
	void tempValusesPinky_2Callback(const sensor_msgs::Temperature::ConstPtr& data);
	void tempValusesRing_1Callback(const sensor_msgs::Temperature::ConstPtr& data);
	void tempValusesRing_2Callback(const sensor_msgs::Temperature::ConstPtr& data);
	void tempValusesMiddle_1Callback(const sensor_msgs::Temperature::ConstPtr& data);
	void tempValusesMiddle_2Callback(const sensor_msgs::Temperature::ConstPtr& data);
	void tempValusesIndex_1Callback(const sensor_msgs::Temperature::ConstPtr& data);
	void tempValusesIndex_2Callback(const sensor_msgs::Temperature::ConstPtr& data);
	void tempValusesThumbCallback(const sensor_msgs::Temperature::ConstPtr& data);
	void tempValusesPalm_1Callback(const sensor_msgs::Temperature::ConstPtr& data);
	void tempValusesPalm_2Callback(const sensor_msgs::Temperature::ConstPtr& data);
	void tempValusesPalm_3Callback(const sensor_msgs::Temperature::ConstPtr& data);
	void tempValusesPalm_4Callback(const sensor_msgs::Temperature::ConstPtr& data);
	void tempValusesPalm_5Callback(const sensor_msgs::Temperature::ConstPtr& data);
	void tempValusesPalm_6Callback(const sensor_msgs::Temperature::ConstPtr& data);
	*/
	void timerCallback(const ros::TimerEvent&);
	void visualizeImages(int n, std::string name);
	ros::NodeHandle nh;
  	ros::Publisher marker_array_pub;
	ros::Subscriber tempValue_sub;
	ros::Timer timer;
};

#endif