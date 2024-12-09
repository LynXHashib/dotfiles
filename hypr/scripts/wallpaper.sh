#!/bin/bash
# Path to the config.ini file
CONFIG_FILE="/home/hashib/.config/waypaper/config.ini"

# wallpaper=$(grep -oP '(?<=^wallpaper = ).*' <(grep -A 50 "\[Settings\]" "$CONFIG_FILE"))
wallpaper=$(grep '^wallpaper =' ~/.config/waypaper/config.ini | sed 's/^wallpaper = //')

# Expand the `~` in the path
wallpaper=$(eval echo "$wallpaper")

# Use the wallpaper value
echo "Set wallpaper to $wallpaper"

killall waybar

hellwal -i $wallpaper

echo "Applied hellwal with $wallpaper"

dunstify "Wallpaper Chnaged"


waybar
# pywalfox upadte
gi