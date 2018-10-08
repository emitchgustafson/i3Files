#!/bin/bash
if [[ $(ps aux | grep "[o]penvpn") ]]; then
    echo '<span foreground="#00FF00">VPN Connected</span>'
else
    echo '<span foreground="#FF0000">VPN Not Connected</span>'
fi
