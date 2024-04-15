#!/bin/bash

STATE=$(cat /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode)
echo $STATE
if [[ $STATE -eq 0 ]]
then
	echo "1" | sudo tee /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode
	notify-send "Conservation mode ENABLED"
else
	echo "0" | sudo tee /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode
	notify-send "Conservation mode DISABLED"
fi
