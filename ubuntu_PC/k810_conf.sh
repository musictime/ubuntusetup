#!/bin/sh
file=k810_conf
gcc -o $file $file.c

#!/bin/bash

# 다음과 같이 명령을 내려야 한다. 
# hidraw1 을 찾는 방법
# /sys/class/hidraw/hidraw<n>/device/uevent
# 를 뒤지면 HID_NAME=Logitech K810 이 나온다.
# 그렇면 그 n 이 맞는 숫자다. 
# n 을 아래에 넣어주면 된다.
# sudo ./k810_conf -d /dev/hidraw<n> -f on

for f in /sys/class/hidraw/hidraw*/device/uevent
do
	#echo $f
	if grep 'K810' $f
	then
		echo 'found K810 at'
		echo "$f"
		echo 
		
		echo './k810_conf -d /dev/hidraw1 -f on'
		sudo ./k810_conf -d /dev/hidraw1 -f on
		echo "DONE"
		
	fi
done

