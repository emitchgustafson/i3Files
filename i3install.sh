#!/usr/bin/env bash
## Define some variables to make it less typing
install='sudo apt install -y'
update='sudo apt update;sudo apt upgrade -y'
user=$USER

#Update and Upgrade
echo "Updating and Upgrading"
$update

#install lightdm for ubuntu 18.04
$install lightdm

#Install i3wm
echo "Installing i3wm & config"
$install i3 i3status dmenu i3lock xbacklight feh conky
$install arandr i3blocks scrot
#Use XFCE panel instead of default i3 and xfce plugins
$install xfwm4 xfce4-statusnotifier-plugin xfce4-statusnotifier-plugin
$install xfce4-pulseaudio-plugin xfce4-sensors-plugin xfce4-battery-plugin
$install xfce4-panel xfce4-clipman-plugin xfce4-session xfce4-whiskermenu-plugin
$install xfce4-mount-plugin xfce4-kbdleds-plugin
# Installs compton to prevent screen tearing
sleep 2
$install compton unclutter
#hides mouse when not in use.
#customize and theme
$install lxappearance menulibre
sleep 2
mkdir /home/$user/.config/i3
sleep 2

# other programs
# spotify
# need keepass2
$install keepass2

# redshift
$install redshift

# Nautilius is breaking on 16.04 so installing this file explorer
$install thunar
# Install icons required for thunar-if changing icons anyway you don't need this
$install gnome-icon-theme-full

# Ranger
$install ranger caca-utils highlight atool w3m poppler-utils mediainfoi -y

# lets autoremove as a last command to clean things up
sudo apt-get autoremove

# Polybar
$install cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev 
$install libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config 
$install python-xcbgen xcb-proto libxcb-xrm-dev i3-wm libasound2-dev libmpdclient-dev 
$install libiw-dev libcurl4-openssl-dev libpulse-dev libxcb-composite0-dev xcb libxcb-ewmh2
cd polybar && ./build.sh

#load included config files
./load.sh