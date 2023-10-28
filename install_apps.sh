#!/bin/bash

# binwalk deps: jefferson


sudo apt-get install -y \
7zip \
adb \
arandr \
baobab \
binwalk \
build-essential \
bzip2 \
cifs-utils \
gimp \
gzip \
hexedit \
hfsprogs \
imagemagick \
liblzma-dev \
liblzo2-dev \
libvirt-dev \
make \
net-tools \
nfs-common \
nmap \
openjdk-18-jdk \
python3-pip \
python3 \
qemu-system \
qemu-utils \
squashfs-tools \
socat \
tree \
vim \
virt-manager \
virt-viewer \
vlc \
zsh-autosuggestions \
zlib1g-dev \

# sudo apt-get install -y \
# libqt4-opengl \
# python3-opengl \
# python3-numpy \
# python3-scipy

# # Install standard extraction utilities
# sudo apt-get install -y \
# mtd-utils \
# tar \
# arj \
# lhasa \
# p7zip \
# p7zip-full \
# cabextract \
# cramfsswap \
# sleuthkit \
# default-jdk \
# lzop \
# srecord


pip3 install \
capstone \
cstruct \
pycryptodome \
pyqtgraph \
ubi_reader \
pwntools


# sudo pip3 install \
# capstone \
# cstruct \
# pycryptodome \
# pyqtgraph \
# ubi_reader

# git clone https://github.com/RobertLarsen/sasquatch.git
# (cd sasquatch && ./build.sh)

# git clone https://github.com/sviehb/jefferson
# (cd jefferson && sudo python3 setup.py install)

# git clone https://github.com/devttys0/yaffshiv
# (cd yaffshiv && sudo python3 setup.py install)