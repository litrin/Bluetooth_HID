#!/bin/bash

printf "\nStarting The Raspberry Pi Initial Setup.\n\n"

# Update and upgrade raspberry pi

printf "\nUpdating and upgrading the Raspberry Pi\n\n"

sudo apt update -y
sudo apt updgrade -y

# Install necessary packages

printf "\nInstalling the necessary packages\n\n"

sudo apt install python-gobject -y
sudo apt install pi-bluetooth bluez bluez-tools bluez-firmware -y

printf "\nInstalling evdev for reading/writing input events from the keyboard/mouse\n\n"

sudo apt install python3-evdev python3-bluez python3-dev python3-pip -y

# DBUS Configuration

printf "\nConfiguring the DBus service\n\n"

sudo cp org.upwork.hidbluetooth.conf /etc/dbus-1/system.d

print "\nRestarting the DBus service\n\n"

sudo service dbus restart

printf "\nFinished The Raspberry Pi Initial Setup.\n\n"