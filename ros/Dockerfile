FROM ubuntu:16.04

RUN apt update
# System normal libraries
RUN apt-get install -y git wget apt-utils vim

# install ros
RUN apt-get update && apt-get install -y --no-install-recommends \
    dirmngr \
    gnupg2 \
    && rm -rf /var/lib/apt/lists/*
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116\
    && echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list\
    && apt-get update\
    && apt-get install -y ros-kinetic-desktop-full\
    && apt-get install -y python-pip python3-pip python3-yaml python3-tk\
    && pip3 install rospkg catkin_pkg matplotlib\
    && rosdep init\
    && rosdep update\
    && echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc\
    && echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc\
    && echo "alias s='source ~/catkin_ws/devel/setup.bash'" >> ~/.bashrc\
    && echo "export ROS_HOSTNAME=163.221.125.53" >> ~/.bashrc\
    && echo "export ROS_MASTER_URI=http://163.221.125.53:11311" >> ~/.bashrc\
    && apt-get install -y python-rosinstall python-rosinstall-generator python-wstool build-essential
WORKDIR /root

# install opencv-python
RUN apt-get install -y python-numpy
# python-opencv

# Install supporting software packages
RUN apt-get install -y python-catkin-tools

# install system tools
RUN apt-get install -y iputils-ping \
    net-tools 

# Expose ports.
EXPOSE 11311

WORKDIR /root/catkin_ws
ADD ./utils /root/utils
#ENTRYPOINT [ "/root/utils/entrypoint.sh" ]
#CMD [ "bash" ]

#create shared folder
CMD ["mkdir /shared-docker"]
#ADD keepRunning.sh /
RUN chmod a+x /root/utils/keepRunning.sh
ENTRYPOINT [ "/root/utils/keepRunning.sh" ]
#CMD ["/keepRunning.sh"]
