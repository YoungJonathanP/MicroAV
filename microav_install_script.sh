#!/bin/bash

#This script is intended for use with the Micro-AV MuSHR car. Written and maintained by Jonathan Young. Adapted from https://raw.githubusercontent.com/prl-mushr/mushr/master/mushr_utils/install_scripts/mushr_install.sh 

echo "This script will install all libraries necessary for the MuSHR racecar compatible with the Micro-AV equipment stack. It assumes that this SD card has freshly been flashed with the pre-built Micro-AV image, and that there is an internet connection"
read -p "Would you like to proceed with installation? [y/n]" -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi

# Install Yolov5
cd ~
wget https://raw.githubusercontent.com/YoungJonathanP/MicroAV/main/Support_Scripts/microav_yolov5_install.sh
source microav_install_yolov5.sh
cd ~
rm microav_install_yolov5.sh

# Install ROS
cd ~
wget https://raw.githubusercontent.com/YoungJonathanP/MicroAV/main/Support_Scripts/microav_ros_support.sh
source microav_ros_support.sh
cd ~
rm microav_ros_support.sh

# Install MAVROS packages for ardupilot
cd ~
wget https://raw.githubusercontent.com/YoungJonathanP/MicroAV/main/Support_Scripts/microav_mavros_install.sh
source microav_mavros_install.sh
cd ~
rm microav_mavros_install.sh


# Install MuSHR stack
cd ~
wget https://raw.githubusercontent.com/YoungJonathanP/MicroAV/main/Support_Scripts/microav_mushr_stack.sh
source microav_mushr_stack.sh
cd ~
rm mushr_install_stack.sh

# Install hardware drivers
cd ~
wget https://raw.githubusercontent.com/YoungJonathanP/MicroAV/main/Support_Scripts/microav_hw_drivers.sh
source mushr_install_hw_drivers.sh
cd ~
rm mushr_install_hw_drivers.sh

echo "Installation complete."
