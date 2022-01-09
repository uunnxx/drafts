#!/usr/bin/env bash

function get_brightness {
  xrandr --verbose | grep Brightness | grep -m1 -o '[0-9].*'
}

function send_notification {
  brightness=$(get_brightness)
  bar=$(seq -s "░" 0 $(echo "1 / 0.035" | bc ) | sed 's/[0-9]//g')
  dunstify -r 99999 -u low "    $bar"
}


case $1 in
  up)
    send_notification
    ;;
esac
