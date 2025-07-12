#!/bin/bash

options=$(ls "$HOME/.config/hypr/scripts" 2>/dev/null)

chosen="$(echo -e "$options" | rofi -p "Scripts:" -dmenu)"

if [[ -n "$chosen" ]]; then
    bash "$HOME/.config/hypr/scripts/$chosen"
fi
