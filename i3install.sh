#!/usr/bin/env bash
## Define some variables to make it less typing
install='sudo apt install -y'
user=$USER

#Update and Upgrade
echo "Updating and Upgrading"
sudo apt update && sudo apt upgrade -y

#install lightdm for ubuntu 18.04
#$install lightdm

#Install i3wm
echo "Installing i3wm & config"
$install i3 i3status dmenu i3lock xbacklight feh conky rofi polybar xfce4-terminal
$install arandr i3blocks scrot jq; true
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

# Polybar
# $install \
#   cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev \
#   libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev \
#   libxcb-util0-dev libxcb-xkb-dev pkg-config python3-xcbgen \
#   xcb-proto libxcb-xrm-dev i3-wm libasound2-dev libmpdclient-dev \
#   libiw-dev libcurl4-openssl-dev libpulse-dev \
#   libxcb-composite0-dev xcb libxcb-ewmh2
# pushd polybar && git checkout 3.4.3 && ./build.sh --all-features -g --auto && popd

#load included config files
./load.sh
