#!/bin/bash

# Path to the config.ini file
CONFIG_FILE="~/.config/waypaper/config.ini"

# Extract the 'wallpaper' value from the 'Settings' section
wallpaper=$(grep -oP '(?<=^wallpaper = ).*' <(grep -A 50 "\[Settings\]" "$CONFIG_FILE"))

# Expand the `~` in the path
wallpaper=$(eval echo "$wallpaper")