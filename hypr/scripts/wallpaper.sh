#!/bin/bash
# Path to the config.ini file
CONFIG_FILE="/home/$USER/.config/waypaper/config.ini"

# wallpaper=$(grep -oP '(?<=^wallpaper = ).*' <(grep -A 50 "\[Settings\]" "$CONFIG_FILE"))
wallpaper=$(grep '^wallpaper =' ~/.config/waypaper/config.ini | sed 's/^wallpaper = //')

# Expand the `~` in the path
wallpaper=$(eval echo "$wallpaper")

# Use the wallpaper value
echo "Set wallpaper to $wallpaper"

killall waybar

hellwal -i $wallpaper
echo "Applied hellwal with $wallpaper"
wal --cols16 -i $wallpaper
echo "Applied wal with $wallpaper"

# cp ~/.cache/hellwal/colors.json ~/.cache/wal/
# cp ~/.cache/hellwal/settings-vscode.json .config/Code\ -\ OSS/User/settings.json 
# cp ~/.cache/hellwal/colors-vscode.json ~/.cache/wal/

# -- Make image for rofi
/home/$USER/Projects/myDotFiles/hypr/scripts/rofiwall.sh

dunstify "Wallpaper Chnaged"
pywalfox update
spicetify apply
waybar

fi

