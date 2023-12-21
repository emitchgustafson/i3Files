#!/bin/bash

echo '##################### Installing Unblob #####################'


# for unar tzdata
export DEBIAN_FRONTEND=noninteractive

# unblob
pip3 install unblob

# 7z
sudo apt install -y p7zip-full p7zip-rar

# debugfs
sudo apt install -y e2fsprogs

# lz4
sudo apt install -y lz4

# lziprecover
sudo apt install -y lziprecover

# lzop
sudo apt install -y lzop

# img2simg
sudo apt install -y img2simg

# unar
sudo apt install -y unar

# sasquatch
cd /tmp && wget https://github.com/onekey-sec/sasquatch/releases/download/sasquatch-v4.5.1-4/sasquatch_1.0_amd64.deb && sudo dpkg -i sasquatch_1.0_amd64.deb

# jefferson
# comes with unblob

# ubireader
# comes with unblob

# binwalk (because why not at this point)
sudo apt install -y binwalk
