#!/bin/bash

STATE=$(cat /sys/devices/system/cpu/intel_pstate/no_turbo)
echo $STATE
if [[ $STATE -eq 0 ]]
then
	echo "1" | sudo tee /sys/devices/system/cpu/intel_pstate/no_turbo
	notify-send "Turbo DISABLED"
else
	echo "0" | sudo tee /sys/devices/system/cpu/intel_pstate/no_turbo
	notify-send "Turbo ENABLED"
fi
