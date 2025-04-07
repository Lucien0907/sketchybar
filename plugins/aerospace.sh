#!/usr/bin/env bash

# make sure it's executable with:
# chmod +x ~/.config/sketchybar/plugins/aerospace.sh

source ~/.config/sketchybar/plugins/icon_map.sh
label="$2"
while IFS= read -r app_name; do
  icon=$(get_icon "$app_name")
  label="$label $icon"
done < <(aerospace list-windows --workspace "$2" --format "%{app-name}")

if [ "$2" = "$(aerospace list-workspaces --focused)" ]; then
  sketchybar --set $NAME background.drawing=on background.color=0xfff5a97f label="$label" label.color=0xff000000 label.drawing=yes icon.drawing=on
else
  if [ "$2" = "$(aerospace list-workspaces --monitor "$1" --visible)" ]; then
    sketchybar --set $NAME background.drawing=off label="$label" label.color=0xfff5a97f label.drawing=yes icon.drawing=on
  else
    if [ "$(aerospace list-windows --workspace "$2" --count)" -gt 0 ]; then
      sketchybar --set $NAME background.drawing=off label.drawing=yes label="$label" label.color=0xffffffff icon.drawing=on
    else
      sketchybar --set $NAME background.drawing=off label.drawing=no label="$label" icon.drawing=off
    fi
  fi
fi
