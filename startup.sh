#!/bin/sh

# set profile to battery life
# sudo system76-power profile battery

# increase mouse accel in i3 to make mouse feel faster
xinput --set-prop 18 282 0.55

# set main output display to 60Hz and dpi 220
xrandr --output eDP1 --refresh 60.00 --dpi 220

pactl set-sink-mute 0 1 # mute sound
pactl set-source-mute 1 1 # mute mic

/home/nitsujtang/.fehbg

sleep 1 && xbacklight -set 20
