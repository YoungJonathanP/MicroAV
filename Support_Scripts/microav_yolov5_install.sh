#!/bin/bash

#This script is intended for use with the Micro-AV MuSHR car. Written and maintained by Jonathan Young.

# Install Yolov5 dependencies for Python3.6
pip3 install matplotlib==3.3.4 PyYAML==5.4.1 scipy==1.5.4

# Move to base directory
cd ~

# Clone ultralytics yolov5 repo
echo “Cloning YoloV5 from https://github.com/ultralytics/yolov5”
git clone https://github.com/ultralytics/yolov5.git
