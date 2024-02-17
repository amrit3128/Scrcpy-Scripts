#!/usr/bin/sh

process_name="scrcpy"

if pgrep -x "$process_name" > /dev/null; then
  dunstify -u normal -i "" "Already connected to phone $@"
else
  scrcpy -d
fi
