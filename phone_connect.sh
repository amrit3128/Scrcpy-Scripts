#!/usr/bin/sh
adb connect 192.168.105.149:5555

process_name="scrcpy"

if pgrep -x "$process_name" > /dev/null; then
  dunstify -u normal -i "" "Already connected to phone $@"
else
  scrcpy -e --no-video --audio-buffer=400
fi
