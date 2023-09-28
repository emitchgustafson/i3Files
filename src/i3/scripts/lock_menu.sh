#!/bin/bash

MENU="$(rofi -sep "|" -dmenu -i -p 'System' <<< "Lock|Dark|Logout|Reboot|Shutdown")"
TMPBG=/tmp/screen.png


case "$MENU" in
    *Lock) ;;
    *Dark) i3lock -f -c 000000; exit 1;;
    *Logout) i3-msg exit; exit 1;;
    *Reboot) reboot; exit 1;;
    *Shutdown) poweroff; exit 1 ;;
	*) exit 1;;
esac

# do this down here so rofi isn't in the screen shot
scrot -d 1 /tmp/screen.png
convert $TMPBG -scale 10% -scale 1000% $TMPBG
i3lock -u -i $TMPBG
