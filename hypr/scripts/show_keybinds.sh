#!/bin/bash

mainMod=$(cat "$HOME/.config/hypr/hyprland.conf" | grep "mainMod = " | sed -E 's/\$mainMod = //')

options=$(cat "$HOME/.config/hypr/hyprland.conf" | grep "bind = " | sed -E "s/bind =//; s/,//; s/ +//; s/,/ -/; s/,//; s/\\\$mainMod/$mainMod/")

chosen="$(echo -e "$options" | rofi -p "Keybinds:" -dmenu)"
