#!/bin/bash

## Files and cmd
FILE="$HOME/.config/eww/settings/touch"

## Launch or close widgets accordingly
if [[ ! -f "$FILE" ]]; then
	touch "$FILE"
	eww --config ~/.config/eww/settings open settings 
else
	eww --config ~/.config/eww/settings close settings 
	rm "$FILE"
fi
