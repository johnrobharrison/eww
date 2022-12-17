#!/bin/bash

## Files and cmd
FILE="$HOME/.config/eww/temps/touch"

## Launch or close widgets accordingly
if [[ ! -f "$FILE" ]]; then
	touch "$FILE"
	eww --config ~/.config/eww/temps open temps 
else
	eww --config ~/.config/eww/temps close temps 
	rm "$FILE"
fi
