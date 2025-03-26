#!/usr/bin/env bash

# make sure it's executable with:
# chmod +x ~/.config/sketchybar/plugins/aerospace.sh

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
  sketchybar --set $NAME background.drawing=on label.color=0xff000000 label.drawing=yes icon.drawing=on
else
  if [ "$(aerospace list-windows --workspace "$1" --count)" = 0 ]; then
    sketchybar --set $NAME background.drawing=off label.drawing=no icon.drawing=off
  else
    sketchybar --set $NAME background.drawing=off label.drawing=yes label.color=0xffffffff icon.drawing=on
  fi
fi
