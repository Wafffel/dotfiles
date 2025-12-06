#!/usr/bin/env bash

if pgrep -x "wf-recorder" > /dev/null
then
  pkill -SIGINT wf-recorder
  notify-send "Screen recording stopped"
else
  CORDINATES=$(slurp)
  if [ -n "$CORDINATES" ]; then
    DIRECTORY="$HOME/Videos/Recordings"
    FILENAME="recording_$(date +'%Y-%m-%d_%H-%M-%S').mp4"
    mkdir -p "$DIRECTORY"

    wf-recorder -g "$CORDINATES" -f "$DIRECTORY/$FILENAME" &

    notify-send "Screen recording started" "Saving to $DIRECTORY/$FILENAME"
  fi
fi
