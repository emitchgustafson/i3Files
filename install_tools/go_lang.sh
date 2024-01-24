#!/bin/bash

cd /tmp
sudo wget https://go.dev/dl/go1.21.6.linux-amd64.tar.gz
sudo tar -xzf /tmp/go1.21.6.linux-amd64.tar.gz
cp /tmp/go/bin/go* /home/$USER/.local/bin

