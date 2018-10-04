#!/bin/bash
sudo apt-get update -y
sudo apt-get upgrade -y

# spotify
# need keepass2
sudo apt-get install keepass2

# redshift
sudoa apt-get install redshift

# actual i3 stuff
sudo apt-get install i3 -y
sudo apt-get install feh -y
sudo apt-get install compton -y
sudo apt-get install arandr -y
sudo apt-get install i3blocks -y

sudo apt-get install lxappearance -y
# Nautilius is breaking on 16.04 so installing this file explorer
sudo apt-get install thunar -y
# sudo apt-get remove nautilius
# INstall icons required for thunar-if changing icons anyway you dont need this
sudo apt-get install gnome-icon-theme-full -y
sudo apt-get install scrot

#other folders to copy
#~/.local/share/fonts/

