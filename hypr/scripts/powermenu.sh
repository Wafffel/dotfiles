#!/bin/bash

DIR="$HOME/.config"
rofi_cmd="rofi -theme $DIR/rofi/themes/powermenu.rasi"

uptime=$(uptime -p | sed -e 's/up //g')

# Options
Shutdown=""
Reboot=""
Lock=""
Suspend=""
Logout=""

options="$Shutdown\n$Reboot\n$Lock\n$Suspend\n$Logout"


# Show menu
chosen="$(echo -e "$options" | $rofi_cmd -p "Uptime: $uptime" -dmenu)"

# Command for specific choices
case $chosen in
"$Shutdown")
	systemctl poweroff
;;
"$Reboot")
	systemctl reboot
;;
"$Suspend")
	systemctl suspend
;;
"$Lock")
  hyprlock
;;
"$Logout")
  hyprctl dispatch exit
;;
esac
