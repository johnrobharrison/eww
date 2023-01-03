#!/bin/bash
echo 'Deploying'
rsync -r ~/.config/eww .

killall eww
python  ~/.config/eww/sway_eww.py -d &