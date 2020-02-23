#!/bin/sh

# set profile to battery life
system76-power profile battery

# increase mouse accel in i3 to make mouse feel faster
xinput --set-prop 18 281 0.55

# set main output display to 60Hz and dpi 220
xrandr --output eDP1 --refresh 60.00 --dpi 220

pactl set-sink-mute 0 1 # mute sound
pactl set-source-mute 1 1 # mute mic

sleep 1 && xbacklight -set 12

xwrits typetime=30 breaktime=:30 canceltime=1 +multiply +mouse &