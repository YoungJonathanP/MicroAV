#!/bin/bash

#This script is intended for use with the Micro-AV MuSHR car. Written and maintained by Jonathan Young.

# Install MAVROS and extras (https://github.com/mavlink/mavros/blob/master/mavros/README.md#binary-installation-deb) 
sudo apt-get install ros-melodic-mavros ros-melodic-mavros-extras

wget https://raw.githubusercontent.com/mavlink/mavros/master/mavros/scripts/install_geographiclib_datasets.sh

#	 for an executable:
# chmod +x install_geographiclib_datasets.sh
# 	or for manual install
# sudo bash install_geographiclib_datasets.sh
source install_geographiclib_datasets.sh

# install the python catkin package manager
sudo pip3 install python-catkin_pkg

# make catkin workspace directory and move into it
mkdir -p ~/catkin_ws/src && cd ~/catkin_ws/

# build the workspace
catkin_make -DPYTHON_EXECUTABLE=/usr/bin/python3

# source the workspace so that every bash profile can find it
echo “source ./devel/setup/bash” >> ~/.bashrc