#!/bin/bash

if makoctl mode | grep -q "do-not-disturb"; then
    notification="Notification mode: "
else
    notification="Notificaiton mode: "
fi

options="$notification"

chosen="$(echo -e "$options" | rofi -p "Info:" -dmenu)"
