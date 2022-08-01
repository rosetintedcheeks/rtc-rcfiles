#!/usr/bin/sh


i3status | while :
do
        read line
        scratch=$(python ~/.config/i3/scripts/scratchpad.py)
        echo "$scratch | $line" || exit 1
done
