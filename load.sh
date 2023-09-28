#!/bin/bash
echo "Loading Configs..."
#put config backup in temp incase this is an accident
mkdir -p /tmp/configbak
cp -r ~/.config/i3 /tmp/configbak/
#fonts
mkdir ~/.local/share/fonts/ 2> /dev/null 
cp src/fonts/*.otf ~/.local/share/fonts/
#i3 config
#includes backfgrounds, scrips, i3blocks, and anyuthing eles in this folder
cp -r src/i3 ~/.config/
#ranger config
cp -r src/ranger ~/.config/
#xfce4
cp -r src/xfce4 ~/.config/
#polybar
cp -r src/polybar ~/.config/
#Rofi
cp -r src/rofi ~/.config
#bashrc
cp src/bashrc ~/.bashrc
#zshrc
cp src/zshrc ~/.zshrc
#powerlevel10k
cp src/p10k.zsh ~/.p10k.zsh
#rofi config
cp -r src/rofi ~/.config/
