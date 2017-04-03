#!/bin/sh
#Author: Clarence Chan, Otc 22th, 2016
#E-Mail: 947089399@qq.com

#keys, environment
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 0xB01FA116
sudo apt-get update
echo "Keys settled. Install ROS kinetic now!"

#ros-kinetic
sudo apt-get install ros-kinetic-desktop-full
sed -i '$a source /opt/ros/kinetic/setup.bash' ~/.bashrc
echo "Ros kinetic installed successfully. Install some accessories."

#archives
source /opt/ros/kinetic/setup.bash
sudo rosdep init
rosdep update
sudo apt-get install python-rosinstall
echo "Accessories installed successfully. Start building workspace."

#workspace
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
source /opt/ros/kinetic/setup.bash
catkin_init_workspace
cd ..
catkin_make
sed -i '$a source ~/catkin_ws/devel/setup.bash ' ~/.bashrc
echo "Finished! You can use catkin_make now."

