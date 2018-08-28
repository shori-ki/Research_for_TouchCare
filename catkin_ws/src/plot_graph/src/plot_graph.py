#! /usr/bin/python3
# coding: UTF-8
# from ros import rosrecord
import rospy
from sensor_msgs.msg import Temperature
from std_srvs.srv import Empty

from matplotlib import pyplot as plt
import warnings;warnings.filterwarnings('ignore')
import concurrent.futures


class plotGraphNode():

    def __init__(self):
        rospy.loginfo("plot_graph noded started.")

        # Initialize for ROS
        self.tempValuesThumb = 0
        self.tempValuesTime = 0
        rospy.Subscriber('/tempValue/thumb', Temperature, self.tempValuesThumb_callback)
        rospy.Service('plot', Empty, self.plot_callback)

        # Initialize data which shows plot in graph
        self.times = [0 for i in range(100)]
        self.temps = [0 for i in range(100)]
        self.setPoint = [36.5 for i in range(100)]
        self.time = 0
        self.temp = 0

        # Initialize matplotlib
        plt.ion()
        plt.figure() # To make a white slide which show data
        self.time_temp, = plt.plot(self.times, self.temps, label='/tempValues/thumb')
        self.time_setPoint, = plt.plot(self.times, self.setPoint, ls=":")
        plt.legend() # To use a label in graph
        plt.ylim(0,45)
        plt.xlabel("Time [s]")
        plt.ylabel("Temperature [C]")
        plt.title("Temperature real time plot")

    def plot(self):
        while not rospy.is_shutdown():

            # self.time = self.tempValuesTime
            self.time = self.tempValuesTime
            self.temp = self.tempValuesThumb

            self.times.append(self.time)
            self.times.pop(0)
            self.temps.append(self.temp)
            self.temps.pop(0)

            # rospy.loginfo('plot = %0.6f',self.time)

            self.time_temp.set_xdata(self.times)
            self.time_temp.set_ydata(self.temps)

            self.time_setPoint.set_xdata(self.times)
            self.time_setPoint.set_ydata(self.setPoint)

            plt.xlim(min(self.times), max(self.times))
            plt.draw()
            plt.pause(0.01)

    ### Callback for services
    def plot_callback(self, req):
        rospy.loginfo('plot_callbacl was called.')
        return self.plot()

    ### Callback for subscribes
    def tempValuesThumb_callback(self, data):
        self.tempValuesThumb = data.temperature
        self.tempValuesTime = float(data.header.stamp.to_nsec()) / pow(10, 9)
        # rospy.loginfo('callback = %0.6f', self.tempValuesTime)

    def run(self):
        executor = concurrent.futures.ProcessPoolExecutor(max_workers=2)
        executor.submit(self.plot())
        executor.submit(rospy.spin())

if __name__ == '__main__':
    rospy.init_node("plot_graph", anonymous=True)
    try:
        node = plotGraphNode()
    except Exception as e:
        rospy.logfatal("Caught exception: " + str(e))
    else:
        node.run()