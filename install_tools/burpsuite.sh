#!/bin/bash

echo '##################### Installing Burp #####################'


sudo apt install -y openjdk-19-jre curl

cd /tmp
curl 'https://portswigger-cdn.net/burp/releases/download?product=community&version=2023.10.2.4&type=Linux' -o burp.sh
chmod +x burp.sh
./burp.sh -q
