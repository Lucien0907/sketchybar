#!/bin/bash
# icon_map.sh

DEFAULT_ICON=" "
get_icon() {
  local app_name="$1"
  case "$app_name" in
  "Arc") echo "󰞍" ;;
  "Code") echo "󰨞" ;;
  "Calendar") echo "" ;;
  "App Store") echo "" ;;
  "Discord") echo "" ;;
  "FaceTime") echo "" ;;
  "Finder") echo "󰀶" ;;
  "System Settings") echo "" ;;
  "Google Chrome") echo "" ;;
  "Messages") echo "" ;;
  "Preview") echo "" ;;
  "Spotify") echo "" ;;
  "Steam Helper") echo "" ;;
  "TextEdit") echo "" ;;
  "WeChat") echo "" ;;
  "Ghostty") echo "" ;;
  "Slack") echo "" ;;
  "Microsoft Teams") echo "" ;;
  *) echo "$DEFAULT_ICON" ;;
  esac
}
