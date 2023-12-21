#!/bin/bash
echo '##################### Installing Docker #####################'

sudo apt install -y docker.io
sudo usermod -aG docker $USER

sudo docker pull ubuntu:18.04
sudo docker pull ubuntu:20.04
sudo docker pull ubuntu:22.04
