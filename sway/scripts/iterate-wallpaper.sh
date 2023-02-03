#!/bin/bash
wallpaper_dir="$HOME/Pictures/Wallpapers"
wallpapers=($(ls -1 $wallpaper_dir))
next_wall=$((1 + $RANDOM % ${#wallpapers[@]}))
swaymsg output "*" bg "$wallpaper_dir/${wallpapers[$next_wall]}" fill
