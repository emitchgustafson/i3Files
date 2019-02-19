#!/bin/bash
#fonts
cp ~/.local/share/fonts/*.otf src/fonts/
#i3 config
#includes backfgrounds, scrips, compton, i3blocks, and anyuthing eles in this folder
cp -r ~/.config/i3 src/
#ranger config
cp -r ~/.config/ranger src/
#xfce4
cp -r ~/.config/xfce4 src/
#polybar
cp -r ~/.config/polybar src/
#bashrc
cp ~/.bashrc src/bashrc
