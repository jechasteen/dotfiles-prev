#!/usr/bin/env bash

function run {
	if ! pgrep $1 ;
	then
		$@&
	fi	
}

picom -b

TRACKPOINT_ID=$(xinput list | grep -i trackpoint | cut -f2 | sed 's/id=//')
xinput set-prop $TRACKPOINT_ID 275 -0.2
xset r rate 400 40

#run nm-applet &
run volumeicon &
#run cbatticon &
albert &
xrandr --output DVI-I-0 --off \
       --output DVI-I-1 --off \
       --output HDMI-0 --mode 1920x1080 --pos 1920x0 --rotate normal \
       --output DP-0 --off \
       --output DP-1 --off \
       --output DVI-D-0 --mode 1920x1080 --pos 0x0 --rotate normal
