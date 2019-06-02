#!/bin/bash

killall polybar &> /dev/null

DISPS=$(xrandr | grep " connected" | cut -d ' ' -f1)

for DISP in $DISPS
do
  echo "$DISP"
  export MONITOR=$DISP
  polybar mainbar &
  polybar topbar &
done

