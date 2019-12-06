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
