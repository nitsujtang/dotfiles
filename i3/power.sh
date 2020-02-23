#!/bin/sh

# Simple script to handle different start menu procs, like sleep, lock, etc.

# if the string "lock" is passed in, then just lock and exit script
if [ "$#" -eq 1 ] && [ "$1" = "lock" ]; then
    i3lock --color 475263
    exit 0
fi
chosen=$(echo -e "sleep\nreboot\nlogout\nshutdown" | rofi -dmenu -no-custom)

case "$chosen" in
    lock)
        i3lock --color 475263
        ;;
    logout)
        i3-msg exit
        ;;
    sleep)
        i3lock --color 475263 && sleep 1 && systemctl suspend
        ;;
    reboot)
        reboot
        ;;
    shutdown)
        shutdown now
        ;;
    *)
        echo "this should not have happened :0"
        exit 1
esac

exit 0
