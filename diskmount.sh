#!/bin/bash

sudo mkdir /run/media/janmejoy; sudo mkdir /run/media/janmejoy/data; sudo mount /dev/sda2 /run/media/janmejoy/data
sudo mkdir /run/media/janmejoy/backup; sudo mount /dev/sda3 /run/media/janmejoy/backup
notify-send "sda2 & sda3 mounted"
