#!/usr/bin/env bash

# OBS Scene Switcher
# deps:
#   - obs-cli

CURRENT=""

while true; do

  # Get current focused i3wm window
  current_window_name=$(i3-msg -t get_workspaces | jq | rg -A7 \"focused\"\:\ true | tail -n1)

  if [[ "$CURRENT" == "$current_window_name" ]]; then
    sleep 0.1
  else
    CURRENT=$current_window_name
    case "$CURRENT" in
      *HDMI-A-0*)
        obs-cli --password "bakabakabaka" scene switch right && dunstify -u low -r 7979 "OBS SCENE SWITCHED" "Active scene: <b>RIGHT</b>"
        ;;
      *DVI-D-0*)
        obs-cli --password "bakabakabaka" scene switch left && dunstify -u low -r 7979 "OBS SCENE SWITCHED" "Active scene: <b>LEFT</b>"
        ;;
    esac
  fi

done
