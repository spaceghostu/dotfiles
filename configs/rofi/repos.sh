#!/bin/bash

selected_file=$(ls ~/repos | rofi -dmenu -p "Projects:" -theme "~/repos/dotfiles/configs/rofi/theme.rasi")
 
selected_path=~/repos/$selected_file

if [ "$selected_path" = "/home/calvin/repos/" ]; then
	exit
elif [[ -n $selected_path ]]; then
    code $selected_path
fi
