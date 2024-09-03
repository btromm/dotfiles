#!/bin/bash

STATE="$(echo "$INFO" | jq -r '.state')"
if [ "$STATE" = "playing" ]; then
  MEDIA="$(echo "$INFO" | jq -r '.title + " - " + .artist')"
  sketchybar --animate quadratic 15 --set $NAME label="$MEDIA" drawing=on
else
  sketchybar --set $NAME drawing=off
fi