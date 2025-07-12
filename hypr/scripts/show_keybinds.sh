#!/bin/bash

mainMod=$(cat "$HOME/.config/hypr/hyprland.conf" 2>/dev/null | grep "mainMod = " 2>/dev/null | sed -E 's/\$mainMod = //' 2>/dev/null)

options=$(cat "$HOME/.config/hypr/hyprland.conf" 2>/dev/null | grep "bind = " 2>/dev/null | sed -E "s/bind =//; s/,//; s/ +//; s/,/ -/; s/,//; s/\\\$mainMod/$mainMod/" 2>/dev/null)

chosen="$(echo -e "$options" | rofi -p "Keybinds:" -dmenu)"
