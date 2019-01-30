#!/bin/bash
mkdir /tmp/config
cp -r ~/.config/i3 /tmp/config/
cp src/fonts/*.otf ~/.local/share/fonts/
cp -r src/i3 ~/.config/
cp -r src/ranger ~/.config
cp src/bashrc ~/.bashrc
