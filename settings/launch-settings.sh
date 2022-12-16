#!/bin/bash

## Files and cmd
FILE="$HOME/.config/eww/settings/touch"
CFG="$HOME/.config/eww/settings/"
EWW=`which eww`

## Open widgets 
run_eww() {
	${EWW} --config "$CFG" open settings
}

## Launch or close widgets accordingly
if [[ ! -f "$FILE" ]]; then
	touch "$FILE"
	run_eww
else
	${EWW} --config "$CFG" close settings
	rm "$FILE"
fi
