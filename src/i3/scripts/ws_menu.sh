#!/bin/bash

MENU="$(rofi  -dmenu -i -p 'Workspace' -location 2 -yoffset 40 -width 15 -hide-scrollbar -line-padding 4 -padding 20 -lines 5 -font "Fantasque Sans Mono 10" -color-normal "#29366a,#86f2ff,#29366a,#86f2ff,#29366a" -color-window "#29366a,#29366a,#29366a" <<< $(i3-msg -t get_workspaces | jq -r '.[].name'))"



i3-msg "workspace $MENU
