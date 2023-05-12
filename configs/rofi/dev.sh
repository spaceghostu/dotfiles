#!/bin/bash

selected_file=$(ls ~/dev | rofi -dmenu -p "Projects:" -theme "~/repos/dotfiles/configs/rofi/theme.rasi")
 
selected_path=~/dev/$selected_file

if [ "$selected_path" = "/home/calvin/dev/" ]; then
	exit
elif [[ -n $selected_path ]]; then
    code $selected_path
fi
