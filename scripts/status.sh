#!/bin/bash

while true; do
	bat=$(cat /sys/class/power_supply/BAT0/capacity)
	wifi=$(iwgetid -r)
	time=$(date +"%T")
	disk=$(df -h /dev/sda3 | tail -1 | awk '{print $4}')
	mem=$(free -m | grep 'Mem' | awk '{print $3}')
	xsetroot -name " ^c#fabd28^Bat: ${bat}%^c#ffffff^ << ^c#fe8019^Wifi: ${wifi}^c#ffffff^ << ^c#fabd28^Root: ${disk}^c#ffffff^ << ^c#fe8019^Mem: ${mem}M^c#ffffff^ << ^c#fabd28^${time} "
	sleep 1
done

