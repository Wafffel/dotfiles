#!/usr/bin/env bash

DIRECTORY="$HOME/Videos/Recordings"
FILENAME="recording_$(date +'%Y-%m-%d_%H-%M-%S').mp4"
mkdir -p "$DIRECTORY"

if pgrep -x "wf-recorder" >/dev/null; then
  pkill -SIGINT wf-recorder
  notify-send "Screen recording stopped" "Saving to $DIRECTORY/$FILENAME"
else
  CORDINATES=$(slurp)
  if [ -n "$CORDINATES" ]; then
    wf-recorder -g "$CORDINATES" -f "$DIRECTORY/$FILENAME" &
  fi
fi
