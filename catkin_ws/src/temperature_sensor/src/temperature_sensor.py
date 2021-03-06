#! /usr/bin/python
# -*- coding: utf-8 -*-

import rospy
import rosparam
from sensor_msgs.msg import Temperature

from time import sleep
import math

# Import SPI library (for hardware SPI) and MCP3008 library.
import Adafruit_GPIO.SPI as SPI
import Adafruit_MCP3008

class temparatureSensorNode():
    """
    Parameters which calculates the temperature from the voltage on the thermistor
    """
    MCP3002_RESOLUTION = rosparam.get_param("/RESOLUTION")
    CONST_B = rosparam.get_param("/B_CONSTANT")
    CONST_T = rosparam.get_param("/TEMPERATURE")
    CONST_R = rosparam.get_param("/RESISTANCE")
    CONST_V = rosparam.get_param("/VOLTAGE")
    CONST_K = rosparam.get_param("/KELVIN")

    topic_basename = '/tempValue'
    topic_fingers_name = ['pinky_1', 'pinky_2', 'ring_1', 'ring_2', 'middle_1', 'middle_2', 'index_1', 'index_2', 'thumb', 
                          'palm_1', 'palm_2', 'palm_3', 'palm_4', 'palm_5', 'palm_6']

    def __init__(self):
        # Print nice channel column headers.
        rospy.loginfo('temperature_sensor node started.')
        rospy.loginfo('Reading temperature of thermistor, press Ctrl-C to quit...')
        rospy.loginfo('| {0:>4} | {1:>4} | {2:>4} | {3:>4} | {4:>4} | {5:>4} | {6:>4} | {7:>4} | {8:>4} | {9:>4} | {10:>4} | {11:>4} | {12:>4} | {13:>4} | {14:>4} | {15:>4} |'.format(*range(16)))
        rospy.loginfo('-' * 114)

        # Hardware SPI0 configuration:
        self.SPI_PORT_0   = 0
        self.SPI_DEVICE_0 = 0
        self.mcp_0 = Adafruit_MCP3008.MCP3008(spi=SPI.SpiDev(self.SPI_PORT_0, self.SPI_DEVICE_0))

        # Hardware SPI1 configuration:
        self.SPI_PORT_1   = 1
        self.SPI_DEVICE_1 = 2
        self.mcp_1 = Adafruit_MCP3008.MCP3008(spi=SPI.SpiDev(self.SPI_PORT_1, self.SPI_DEVICE_1))

        # Create and advertise publishers for each connected sensor
        self.publishers = []
        self.tempValues = []

        for topic_fingers_names in self.topic_fingers_name:
            tempValue = Temperature()
            tempValue.header.frame_id = self.topic_basename + '/' + topic_fingers_names
            self.tempValues.append(tempValue)
            self.publishers.append(rospy.Publisher(self.topic_basename + '/' + topic_fingers_names, Temperature, queue_size=100))

    """
    Calculate the temperature from the voltage on the thermistor
    @values: all the ADC channel values. (CH0 ~ CH7)
    """
    def calcTemp(self, values):
        THERMISTORS_V = (float(values) / self.MCP3002_RESOLUTION) * self.CONST_V
        THERMISTORS_R = (self.CONST_R * THERMISTORS_V) / (self.CONST_V - THERMISTORS_V)
        THERMISTORS_T = 1 / ((math.log(THERMISTORS_R / self.CONST_R) / self.CONST_B) + (float(1) / (self.CONST_T + self.CONST_K))) - self.CONST_K
        return round(THERMISTORS_T, 1)
        #rospy.loginfo(THERMISTORS_T)

    def run(self):
        self.rate = rospy.Rate(10)
        start = rospy.Time.now()
        while not rospy.is_shutdown():
            values_0 = [self.mcp_0.read_adc(i) for i in range(8)]
            values_1 = [self.mcp_1.read_adc(i) for i in range(8)]
            values = values_0 + values_1
            THERMISTORS_T = map(self.calcTemp, values)
            for i in range(len(self.topic_fingers_name)):
                # temperature on each thermistor
                self.tempValues[i].temperature = THERMISTORS_T[i]

                # variance on each thermistor (0 is interpreted as variance unknown)
                self.tempValues[i].variance = 0

                # we publish values about each thermistor
                self.publishers[i].publish(self.tempValues[i])

                rospy.loginfo('| {0:>4} | {1:>4} | {2:>4} | {3:>4} | {4:>4} | {5:>4} | {6:>4} | {7:>4} | {8:>4} | {9:>4} | {10:>4} | {11:>4} | {12:>4} | {13:>4} | {14:>4} | {15:>4} |'.format(
                    THERMISTORS_T[0], THERMISTORS_T[1], THERMISTORS_T[2], THERMISTORS_T[3], THERMISTORS_T[4], THERMISTORS_T[5], THERMISTORS_T[6], THERMISTORS_T[7], 
                    THERMISTORS_T[8], THERMISTORS_T[9], THERMISTORS_T[10], THERMISTORS_T[11], THERMISTORS_T[12], THERMISTORS_T[13], THERMISTORS_T[14], THERMISTORS_T[15]))

                # timestamp on each thermistor
                self.tempValues[i].header.stamp = rospy.Time.now() - start
            self.rate.sleep()

if __name__ == '__main__':
    # anoymous: to avoid the same node of the name
    rospy.init_node("temparature_sensor", anonymous=True)
    try:
        node = temparatureSensorNode()
    except Exception as e:
        rospy.logfatal("Caught exception: " + str(e))
    else:
        node.run()