#!/bin/bash

export PATH="${PATH}:${HOME}/.local/bin/"
# if [ -e "${HOME}/.cache/wal/colors" ]; then
#     # wal -R --cols16

#     # echo "Cached colors exist. Using existing colors."
# else
#     DIR=$HOME/wallpapers
#     PICS=($(ls ${DIR}))

#     RANDOMPICS=${PICS[ $RANDOM % ${#PICS[@]} ]}

#     waypaper ${DIR}/${RANDOMPICS} --transition-type grow --transition-fps 60 --transition-duration 1.0 --transition-pos 0.810,0.972 --transition-bezier 0.65,0,0.35,1 --transition-step 255
#     wal -i ${DIR}/${RANDOMPICS} --cols16

#     echo "Successfully set a new wallpaper and generated colors from it."
# fi
swww-daemon --format xrgb
DIR=$HOME/wallpaper
    PICS=($(ls ${DIR}))

    RANDOMPICS=${PICS[ $RANDOM % ${#PICS[@]} ]}

    swww img ${DIR}/${RANDOMPICS} --transition-type outer --transition-fps 60 --transition-duration 1.0 --transition-pos 0.810,0.972 --transition-bezier 0.65,0,0.35,1 --transition-step 100
    wal -i ${DIR}/${RANDOMPICS} --cols16

    echo "Successfully set a new wallpaper and generated colors from it."
    killall waybar
    waybar
    echo "Waybar initialized"
# pywalfox update
# pywal-discord -t default
wal-telegram --wal

# . $HOME/.config/mako/update-colors.sh
# . $HOME/.config/spicetify/Themes/Pywal/update-colors.sh
# . $HOME/.config/cava/scripts/update-colors.