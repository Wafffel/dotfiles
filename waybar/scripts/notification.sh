#!/bin/bash

SILENT_FILE="/run/user/$(id -u)/mako/silent"

if makoctl mode | grep -q "do-not-disturb"; then
    ICON=""
    TEXT="Silent"
else
    ICON=""
    TEXT="Active"
fi

echo "$ICON"
