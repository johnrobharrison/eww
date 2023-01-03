#!/bin/bash
echo 'Deploying'
rsync -av -R *  ~/.config/eww

killall eww
python  ~/.config/eww/sway_eww.py -d &