#!/bin/bash
 
 #Updates, Upgrades, Distro Upgrade, and autoremoves all irrelevant packages
 
if [[ $(lsb_release -rs) > 16 ]]; then #This runs if the version of 
  sudo apt update -y
  sudo apt upgrade -y
  sudo apt dist-upgrade -y
  sudo apt autoremove -y
else 
  sudo apt-get update -y
  sudo apt-get upgrade -y
  sudo apt-get dist-upgrade -y
  sudo apt-get autoremove -y
fi
