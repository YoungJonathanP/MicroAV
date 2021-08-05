#!/bin/bash

# This script is intended for use with the Micro-AV MuSHR car. Written and maintained by Jonathan Young. Adapted from https://raw.githubusercontent.com/prl-mushr/mushr/master/mushr_utils/install_scripts/mushr_install.sh 
# Please see https://github.com/YoungJonathanP/MicroAV for readme and script structure

echo "This script will install all libraries necessary for the MuSHR racecar compatible with the Micro-AV equipment stack. It assumes that this SD card has freshly been flashed with the pre-built Micro-AV image, and that there is an internet connection"
read -p "Would you like to proceed with installation? [y/n]" -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi

# Install ROS
echo "Installing ROS"
cd ~
wget https://raw.githubusercontent.com/YoungJonathanP/MicroAV/main/Support_Scripts/microav_ros_support.sh
source microav_ros_support.sh
cd ~
rm microav_ros_support.sh

# Install MuSHR stack
echo "Installing MuSHR stack"
cd ~
wget https://raw.githubusercontent.com/YoungJonathanP/MicroAV/main/Support_Scripts/microav_mushr_stack.sh
source microav_mushr_stack.sh
cd ~
rm microav_mushr_stack.sh

# Install hardware drivers
echo "Installing Hardware Drivers"
cd ~
wget https://raw.githubusercontent.com/YoungJonathanP/MicroAV/main/Support_Scripts/microav_hw_drivers.sh
source microav_hw_drivers.sh
cd ~
rm microav_hw_drivers.sh

# Install Yolov5
echo "Installing Yolov5"
cd ~
wget https://raw.githubusercontent.com/YoungJonathanP/MicroAV/main/Support_Scripts/microav_yolov5_install.sh
source microav_yolov5_install.sh
cd ~
rm microav_yolov5_install.sh

# Install MAVROS packages for ardupilot
echo "Installing MAVROS"
cd ~
wget https://raw.githubusercontent.com/YoungJonathanP/MicroAV/main/Support_Scripts/microav_mavros_install.sh
source microav_mavros_install.sh
cd ~
rm microav_mavros_install.sh

echo "Installation complete."
