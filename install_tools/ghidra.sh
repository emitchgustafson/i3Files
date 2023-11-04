#!/bin/bash

echo '##################### Installing Ghidra #####################'

sudo apt install -y openjdk-19-jdk

cd /opt
sudo wget https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_10.4_build/ghidra_10.4_PUBLIC_20230928.zip
sudo unzip ghidra_10.4_PUBLIC_20230928.zip

sudo ln -s /opt/ghidra_10.4_PUBLIC /opt/ghidra

mkdir -p /home/vagrant/.local/share/applications/

cat << EOF > /home/vagrant/.local/share/applications/ghidra.desktop
[Desktop Entry]
Name=Ghidra
Exec=/opt/ghidra/ghidraRun
Terminal=false
Type=Application
Icon=/opt/ghidra/docs/GhidraClass/AdvancedDevelopment/Images/GhidraLogo64.png
EOF
