#!/usr/bin/bash

if [ -z "$1" ] then
  echo "replace YOUR_USERNAME by your username"
  echo "./ste1.sh YOUR_USERNAME"
  exit 1
fi

su -
apt update && apt upgrade
apt install sudo git -y
usermod -aG sudo $1
echo "reboot and launch step2.sh"
sleep 2
reboot
