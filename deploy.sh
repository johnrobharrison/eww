#!/bin/bash
echo 'Deploying'
killall eww
rm -rf ~/.config/eww/
rsync -av -R *  ~/.config/eww
python  ~/.config/eww/sway_eww.py -d 