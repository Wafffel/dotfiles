#!/bin/bash

pacman_updates=$(checkupdates 2>/dev/null | wc -l)
aur_updates=$(yay -Qua 2>/dev/null | wc -l)

total_updates=$((pacman_updates + aur_updates))

notify-send "You have $total_updates unupdated packages ($pacman_updates pacman, $aur_updates aur)"
