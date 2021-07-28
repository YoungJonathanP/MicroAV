# Micro-AV build Scripts

The scripts here are intended to build a working base environment compatible with the MicroAV Jetson Nano MuSHR car.
After following these instructions you will have a Jetson Nano installed with:
* JetPack 	4.5.1
* OpenCV 	4.5.2
* Pytorch 	1.8.1
* TorchVision 	0.9.1
* and more

## Installation

In order to use this you will need several tools. 

* Jetson Nano Developer Kit B02 (Should be compatible with more powerful Jetson platforms)
* 32GB Class 3 micro SD-Card (64+ GB recommended; 100mbps read, 90mbps write or greater)
* Pixhawk P4 2.4.8 with telemetry module and GPS
* Recommend: USB Mouse + Keyboard, HDMI monitor, CAT5 cable (to connect to network), DC5V barrel jack power adapter

To install:

* Download the base JetsonNano.zip [image](https://drive.google.com/file/d/1pAR5bnCtCfcO8XYbJbPB2-0DckblQhR7/view?usp=sharing)
* Follow the instructions for your system per the [Nvidia Developer](https://developer.nvidia.com/embedded/learn/get-started-jetson-nano-devkit#write) page.
	- Recommend using [balenaEtcher](https://www.balena.io/etcher/) to flash the SD card and mount the image.
* Plug the newly flashed micro SD card into the Jetson Nano and power on the device.
	- It is recommended to have a mouse/keyboard/monitor to discover the IP address the first login.
* Download the [microav_install_scripts.sh](https://github.com/YoungJonathanP/MicroAV/blob/main/microav_install_script.sh)
* Open the terminal and run the script with administrator privileges
```
$ sudo source microav_install_scripts.sh
```

	- The default password for the image is **jetson**
* Wait for the script to run. When it is complete it will let you know.

## Note

This installation has several tools that are specific to the MicroAV MuSHR platform. While it shares many similarities with the [MuSHR build](https://mushr.io/) it is not identical.
