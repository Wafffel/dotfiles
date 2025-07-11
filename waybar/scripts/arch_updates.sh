#!/bin/bash

pacman_updates=$(checkupdates 2>/dev/null | wc -l)
aur_updates=$(yay -Qua 2>/dev/null | wc -l)

total_updates=$((pacman_updates + aur_updates))

echo "<span size='120%' rise='-1500'>𜱭</span><span size='20%'> </span>$total_updates"
