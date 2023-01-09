#!/bin/bash

## Files and cmd
FILE="$HOME/.config/eww/vms/touch"

## Launch or close widgets accordingly
if [[ ! -f "$FILE" ]]; then
	touch "$FILE"
	eww --config ~/.config/eww/vms open vms 
else
	eww --config ~/.config/eww/vms close vms 
	rm "$FILE"
fi
