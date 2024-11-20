#!/bin/bash
used_wallpaper=$wallpaper
echo ":: Setting wallpaper with source image $wallpaper"
tmpwallpaper=$wallpaper
wallpaperfilename=$(basename $wallpaper)
echo ":: Wallpaper Filename: $wallpaperfilename"
echo ":: Execute pywal with $used_wallpaper"
wal -i $used_wallpaper --cols16
source "$HOME/.cache/wal/colors.sh"
