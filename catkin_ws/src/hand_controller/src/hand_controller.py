#! /usr/bin/python
# -*- coding: utf-8 -*-

import rospy
import rosparam
from sensor_msgs.msg import Temperature
from std_srvs.srv import Empty

from time import sleep,time

import pigpio
import math
import PID

class handControllerNode():
    """
    Parameters which calculates the temperature from the voltage on the thermistor
    """
    PIN = rosparam.get_param("/PIN")

    def __init__(self):
        self.pi = pigpio.pi()

        rospy.loginfo('hand_controller node started.')

        # Initialize
        self.tempValusesThumb = []
        self.tempValusesIndex = []
        self.tempValusesMiddle = []
        self.tempValusesRing = []
        self.tempValusesPinky = []

        # Subscribers
        rospy.Subscriber('/tempValue/thumb', Temperature, self.tempValusesThumb_callback)
        rospy.Subscriber('/tempValue/index', Temperature, self.tempValusesIndex_callback)

        # Advertise services
        rospy.Service('control', Empty, self.control_callback)

        # set PWM parameters
        self.frequency = rosparam.get_param("/FREQUENCY")
        self.MAX_dutycycle = rosparam.get_param("/MAX_DUTYCYCLE")

    def setup_PID(self, P = 0.2, I = 0.0, D= 0.0):
        self.pid = PID.PID(P, I, D)

        self.pid.SetPoint = rosparam.get_param("/SET_POINT")
        self.pid.setSampleTime(rosparam.get_param("/SLEEP_TIME"))

    def setup_PWM(self, PIN, frequency, MAX_dutycycle):
        self.pi.set_PWM_frequency(PIN, frequency)
        self.pi.set_PWM_range(PIN, MAX_dutycycle)

    def lightingfull(self, PIN, dutycycle):
        self.pi.set_PWM_dutycycle(self.PIN, dutycycle)
        # rospy.sleep(sleepTime)

    def control(self):
        rospy.loginfo('Started to control the heater using PID')
        gains = rosparam.get_param("/GAINS")
        output_limit = rosparam.get_param("/OUTPUT_LIMIT")
        lower, upper = output_limit["LOWER"], output_limit["UPPER"]
        Kp, Ki, Kd = gains["Kp"], gains["Ki"], gains["Kd"]
        self.setup_PID(Kp, Ki, Kd)
        while not rospy.is_shutdown():
            self.pid.update(self.tempValusesThumb)
            if self.pid.output >= upper:
                self.pid.output = upper
            elif self.pid.output <= lower:
                self.pid.output = lower

            self.lightingfull(self.PIN, self.pid.output)
            # rospy.loginfo('Duty = %0.1f, Temp = %0.1f', self.pid.output, self.tempValusesThumb)

        self.pi.set_PWM_dutycycle(self.PIN, 0)

    ### Callback for services
    def control_callback(self, req):
        rospy.loginfo('control_callback was called')
        return self.control()

    ### Callback for subscribes
    def tempValusesThumb_callback(self, data):
        self.tempValusesThumb = data.temperature

    def tempValusesIndex_callback(self, data):
        self.tempValusesIndex = data.temperature

    ### Main loop
    def run(self):
        self.setup_PWM(self.PIN, self.frequency, self.MAX_dutycycle)
        # rospy.loginfo('run_hoge')
        rospy.spin()

if __name__ == '__main__':
    # anoymous: to avoid the same node of the name
    rospy.init_node("hand_controller", anonymous=True)
    try:
        node = handControllerNode()
    except Exception as e:
        rospy.logfatal("Caught exception: " + str(e))
    else:
        node.run()