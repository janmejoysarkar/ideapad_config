#!/bin/bash

var="$(cat /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode)"

if [[ $var -eq 0 ]]
then
	notify-send 'Conservation Mode DISABLED'
elif [[ $var -eq 1 ]]
then
	notify-send 'Conservation Mode ENABLED'
fi

:'
Before toggling Conservation mode, run-
sudo su
Otherwise permission denied will come up.

enable Conservation mode:
echo 1 > /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode

disable conservation mode:
echo 0 > /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode

Source: https://www.youtube.com/watch?v=d1l2Fg1Nx4E
'

