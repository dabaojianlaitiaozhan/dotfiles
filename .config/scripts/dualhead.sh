#!/usr/bin/env bash

set -e

intern=eDP1
extern=DP1

if xrandr | grep "$extern disconnected"; then
	xrandr --output "$extern" --off --output "$intern" --auto --dpi 120
else
	xrandr --output "$intern" --auto --output "$extern" --auto --left-of "$intern"
fi
