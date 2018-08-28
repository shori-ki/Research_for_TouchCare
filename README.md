# Touch-care-robot research

This project has 2 files as follows.
1. Docker image
2. ROS packages

## Description
### Requirement
- Raspberry pi 3 Model B
- Electronic circuit to control heater

### Docker image
#### Installation
You can make docker image on your PC to command as follows
```
# on top of the directory
$ docker-compose build
```
#### Usage
To work in the ros container, access the container, execute:
```
$ ./enterContainer.sh
```

### ROS packages
There are 3 packages in this project.
1. temperature_sensor: This node publishes data (temperature values and time stamp) got from sensor to hand_controller and plot_graph node.
2. hand_controller: This node controls the heater using PID controller.
3. plot_graph: This node visualizes data on graph in real time.

#### Usage
Execute:
```
$ roslaunch hand_controller hand_controller.launch
```
To see the graph, excute:
```
$ roslaunch plot_graph plot_graph
```
Also, you can revise the set point or PID gains and so on in handcontroller.launch.
### Demo
![PWM_200Hz_0.5](https://akita.naist.jp/yuki-ki/research-for-touch-care/tree/imeges/images/200Hz-0.5.png)

### References
- [A/D converter](https://learn.adafruit.com/raspberry-pi-analog-to-digital-converters/mcp3008)
- [Electronic circuit](http://workpiles.com/2017/11/raspberrypi-iot-hydroponics/)
- [PID controller](https://github.com/hackhitchin/piwars3/blob/master/PID.py)