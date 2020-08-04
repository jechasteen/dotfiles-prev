#!/usr/bin/env bash

function run {
	if ! pgrep $1 ;
	then
		$@&
	fi	
}

### TRACKPOINT
TRACKPOINT_ID=$(xinput list | grep -i trackpoint | cut -f2 | sed 's/id=//')
echo "Set trackpoint sensitivity"
xinput set-prop $TRACKPOINT_ID 293 -0.2
echo "Disable middle mouse paste"
xinput set-button-map $TRACKPOINT_ID 1 0 3

### KEYBOARD
# repeat    ms  repeats/sec
echo "Set keyboard repeat rate"
xset r rate 400 40

### APPS
picom -b
run nm-applet &
run volumeicon &
run cbatticon &
albert &
urxvtd -q -f
