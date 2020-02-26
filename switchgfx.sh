#!/bin/bash

# check if nvidia gfx disabled
if [ -f /etc/modprobe.d/set-nvidia ]; then
    echo "setting nvidia gfx..."
    mv /etc/modprobe.d/bbswitch.conf /etc/modprobe.d/set-intel
    mv /etc/modprobe.d/set-nvidia /etc/modprobe.d/bbswitch.conf

# check if intel gfx disabled
elif [ -f /etc/modprobe.d/set-intel ]; then
    echo "setting intel gfx..."
    mv /etc/modprobe.d/bbswitch.conf /etc/modprobe.d/set-nvidia
    mv /etc/modprobe.d/set-intel /etc/modprobe.d/bbswitch.conf

# otherwise something wrong happened
else
    echo "bbswitch files for intel/nvidia not found :-(("
    exit 1
fi

echo "done"
exit 0
