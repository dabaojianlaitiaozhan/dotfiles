#!/usr/bin/env bash

tmpbg="/tmp/screen.png"

scrot -z $tmpbg
convert $tmpbg -scale 10% -scale 1000% $tmpbg
i3lock -u -i $tmpbg

rm $tmpbg
