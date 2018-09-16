#!/usr/bin/env bash

set -e

output=/tmp/pscircle.png

while true
do
	pscircle --output=$output \
		--max-children=60 \
		--output-width=1920 \
		--output-height=1080 \
		--tree-radius-increment=110 \
		--dot-radius=3 \
		--link-width=1.3 \
		--tree-font-size=16 \
		--tree-font-face="Roboto" \
		--toplists-font-size=16 \
		--toplists-font-face="Roboto" \
		--toplists-bar-width=30 \
		--toplists-row-height=20 \
		--toplists-bar-height=3 \
		--cpulist-center=600.0:-80.0 \
		--memlist-center=600.0:80.0

	if command -v feh >/dev/null; then
		feh --bg-scale $output
		rm $output
	fi

	sleep 30
done
