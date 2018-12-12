#!/bin/bash

set -o errexit

#korean setting
#!/usr/bin/env bash

if [[ $(id -u) -ne 0 ]] ; then echo "Plase run as sudo." ; exit 1 ; fi
#root실행을 위함

echo "Ubuntu의 한국어 설정을 위한 스크립트를 시작합니다."
echo "한국어 폰트를 설치합니다."
apt-get -y install fonts-nanum fonts-nanum-extra fonts-nanum-coding ttf-wqy-zenhei fonts-noto-cjk

echo "한글언어팩을 설치합니다."
apt-get -y install `check-language-support -l ko`

echo "한글입력기 fcitx를 설치합니다."
apt-get -y install fcitx fcitx-hangul fcitx-keyboard fcitx-config-gtk im-config zenity

echo "한글키보드 설정을 합니다."
echo -e  "XKBMODEL=\"pc105\"\nXKBLAYOUT=\"kr\"\nXKBVARIANT=\"kr104\"\nXKBOPTIONS=\"\"\nBACKSPACE=\"guess\"" > /etc/default/keyboard

echo "한국어 입력기(fcitx)설정을 합니다."
echo -e "run_im fcitx" > ~/.xinputrc

echo "완료되었습니다!"


#sudo apt-get update -y
#sudo apt-get upgrade -y

#wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
#sudo sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
#sudo apt-get install google-chrome-stable
#sudo apt-get install terminator
#sudo apt install vlc
#sudo add-apt-repository ppa:webupd8team/atom
#sudo apt install atom

#install ROS
#wget https://raw.githubusercontent.com/oroca/oroca-ros-pkg/kinetic/ros_install.sh && chmod 755 ./ros_install.sh && bash ./ros_install.sh catkin_ws kinetic

#Visutal Studio Code : Manual download

#mouse speed setting up
echo -e "[Desktop Entry]\nName=Decrease mouse sensitivity\nExec=xset m 1/2 8\nType=Application\nComment=Use xset to set mouse params" > ~/.config/autostart/mouse.desktop
xset m 1/2 8
