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
There are 4 packages in this project.
1. temperature_sensor: This node publishes data (temperature values and time stamp) got from sensor to hand_controller and plot_graph node.
2. hand_controller: This node controls the heater using PID controller.
3. plot_graph: This node visualizes data on graph in real time.
4. hand_visualization: This node visualizes temperature values on rviz in real time.

#### Usage
Execute:
```
$ roslaunch hand_controller hand_controller.launch
```
To see the graph, excute:
```
$ roslaunch plot_graph plot_graph.launch
```
To see the image of temperature values, excute:
```
$ roslaunch hand_visualization hand_visualization.launch
```
Also, you can revise the set point or PID gains and so on in handcontroller.launch.
### Demo
![精度検証](https://github.com/yuki-ki/Research_for_TouchCare/edit/master/images/Verification.png)
![温度センサ可視化](https://github.com/yuki-ki/Research_for_TouchCare/edit/master/movies/sensor_on_rviz.gif)

### References
- [A/D converter 1/2](https://learn.adafruit.com/raspberry-pi-analog-to-digital-converters/mcp3008)
- [A/D converter 2/2](https://qiita.com/no_clock/items/ee13a72c86348209e7ca)
- [Electronic circuit](http://workpiles.com/2017/11/raspberrypi-iot-hydroponics/)
- [PID controller](https://github.com/hackhitchin/piwars3/blob/master/PID.py)

おっぱい
