#!/bin/bash

xrandr --auto --output eDP1 --left-of DP1
xrandr --output eDP1 --mode 1920x1080 --rate 60 --output DP1 --mode 2560x1440 --rate 144
