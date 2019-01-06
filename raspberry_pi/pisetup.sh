#!/bin/bash

#set -o errexit #need to test

# 1. connect the same wifi

# 2. ssh enable: this will be the first thing we need to go
sudo systemctl enable ssh
sudo service ssh restart

#display to 1280 x 720
#sed -i 's/#disable_overscan/disable_overscan/g' /boot/config.txt
#sed -i 's/#framebuffer_width=/framebuffer_width=1280  # /g' /boot/config.txt
#sed -i 's/#framebuffer_height=/framebuffer_height=720  # /g' /boot/config.txt


#wget https://www.realvnc.com/download/file/vnc.files/VNC-Server-6.3.2-Linux-ARM.deb && dpkg -i ./VNC-Server-6.3.2-Linux-ARM.deb && systemctl enable vncserver-x11-serviced.service #systemd 


#wget https://raw.githubusercontent.com/ROBOTIS-GIT/robotis_tools/master/install_ros_kinetic_rp3.sh && chmod 755 ./install_ros_kinetic_rp3.sh && bash ./install_ros_kinetic_rp3.sh


# VS code on raspberry pi
#https://pimylifeup.com/raspberry-pi-visual-studio-code/
wget https://packagecloud.io/headmelted/codebuilds/gpgkey -O - | sudo apt-key add -
curl -L https://code.headmelted.com/installers/apt.sh | sudo bash


