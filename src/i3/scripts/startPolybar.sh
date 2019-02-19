#!/bin/bash

killall polybar &> /dev/null

export MONITOR=VGA-1
polybar mainbar &
polybar topbar &
export MONITOR=VGA-2
polybar mainbar &
polybar topbar &
