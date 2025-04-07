#!/usr/bin/env zsh

ICON_PADDING_RIGHT=6
ICON_PADDING_LEFT=7

case $INFO in
"Arc")
    ICON=󰞍
    ;;
"Code")
    ICON_PADDING_RIGHT=5
    ICON=󰨞
    ;;
"Calendar")
    ICON=
    ;;
"App Store")
    ICON=
    ;;
"Discord")
    ICON_PADDING_RIGHT=3
    ICON_PADDING_LEFT=5
    ICON=
    ;;
"FaceTime")
    ICON_PADDING_RIGHT=4
    ICON=
    ;;
"Finder")
    ICON=󰀶
    ;;
"System Settings")
    ICON=
    ICON_PADDING_LEFT=6
    ;;
"Google Chrome")
    ICON=
    ICON_PADDING_RIGHT=5
    ICON_PADDING_LEFT=6
    ;;
"Messages")
    ICON_PADDING_RIGHT=5
    ICON_PADDING_LEFT=6
    ICON=
    ;;
"Preview")
    ICON_PADDING_RIGHT=5
    ICON_PADDING_LEFT=6
    ICON=
    ;;
"Spotify")
    ICON_PADDING_LEFT=6
    ICON=
    ;;
"Steam Helper")
    ICON=
    ICON_PADDING_LEFT=6
    ;;
"TextEdit")
    ICON_PADDING_RIGHT=7
    ICON_PADDING_LEFT=8
    ICON=
    ;;
"WeChat")
    ICON=
    ICON_PADDING_RIGHT=5
    ICON_PADDING_LEFT=5
    ;;
"Ghostty")
    ICON_PADDING_RIGHT=7
    ICON_PADDING_LEFT=8
    ICON=
    ;;
"Slack")
    ICON=
    ;;
"Microsoft Teams")
    ICON=
    ;;
*)
    ICON_PADDING_RIGHT=5
    ICON_PADDING_LEFT=5
    ICON=
    ;;
esac

sketchybar --set $NAME icon=$ICON \
  icon.padding_right=$ICON_PADDING_RIGHT \
  icon.padding_left=$ICON_PADDING_LEFT \

sketchybar --set $NAME.name label="$INFO"
