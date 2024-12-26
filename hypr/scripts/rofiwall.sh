#!/bin/bash
wallpaper=$(grep 'wallpaper:' ~/.cache/hellwal/rofi-wall.rasi | sed 's/wallpaper://')
wallpaper=$(eval echo "$wallpaper")
echo "Hello $wallpaper"

wallpaperName=$(basename "$wallpaper" .png)
echo $wallpaperName
new_wallpaper="/home/$USER/wallpaper/rofi/${wallpaperName}.png"
echo $new_wallpaper
magick $wallpaper -resize 700x240\! $new_wallpaper

if grep -q 'wallpaper:' ~/.cache/wal/colors-rofi.rasi; then
    # If it exists, replace the line
    sed -i "s|wallpaper:.*|wallpaper: url(\"$new_wallpaper\");|" ~/.cache/hellwal/colors-rofi.rasi
else
    # If it does not exist, append it
    echo "wallpaper: url(\"$new_wallpaper\");" >> ~/.cache/hellwal/colors-rofi.rasi
fi
