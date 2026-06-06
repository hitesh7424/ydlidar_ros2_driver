#!/bin/bash
echo 'SUBSYSTEM=="tty", ATTRS{idVendor}=="10c4", ATTRS{idProduct}=="ea60", KERNELS=="2-1", MODE:="0666", GROUP:="dialout", SYMLINK+="ydlidar"' > /etc/udev/rules.d/ydlidarx2.rules

service udev reload
sleep 2
service udev restart

