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
sudo apt-get install keepass2

# redshift
sudoa apt-get install redshift

# Nautilius is breaking on 16.04 so installing this file explorer
sudo apt-get install thunar -y
# Install icons required for thunar-if changing icons anyway you don't need this
sudo apt-get install gnome-icon-theme-full -y

# Ranger
sudo apt-get install ranger caca-utils highlight atool w3m poppler-utils mediainfoi -y

# lets autoremove as a last command to clean things up
sudo apt-get autoremove

#load included config files
./load.sh