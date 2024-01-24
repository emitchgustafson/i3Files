#!/usr/bin/env bash
## Define some variables to make it less typing
install='sudo apt install -y'

user=$USER

#Update and Upgrade
echo "Updating and Upgrading"
sudo apt update && sudo apt upgrade -y

# Install helpers
$install vim arandr

# the config is updated during load step

#Install i3wm
echo "Installing i3wm & config"
$install i3 i3status dmenu i3lock xbacklight feh conky rofi polybar xfce4-terminal 
$install arandr i3blocks scrot jq imagemagick mate-polkit
sleep 2
$install compton unclutter
#hides mouse when not in use.
#customize and theme
$install lxappearance menulibre
sleep 2
mkdir -p /home/$user/.config/i3
sleep 2

# Ranger
$install ranger caca-utils highlight atool w3m poppler-utils mediainfo

# lets autoremove as a last command to clean things up
sudo apt-get -y autoremove

#load included config files
./load.sh
