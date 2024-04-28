#!/usr/bin/env bash

HYPR_DIR=$HOME/.config/hyprpaper/hyprpaper.conf

NEW_WALL=$(find $HOME/Pictures/Wallpapers -type f | shuf -n 1)

# Muy manual pero ya buscaré una manera mas sofisticada

echo '' > $(echo $HYPR_DIR)

echo "preload = $NEW_WALL" >> $(echo $HYPR_DIR)
echo "wallpaper =,$NEW_WALL" >> $(echo $HYPR_DIR)
echo "spash = true" >> $(echo $HYPR_DIR)

