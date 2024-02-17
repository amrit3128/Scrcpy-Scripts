#!/usr/bin/sh

# Connect to the phone at port 5555
adb connect ip.add.of.phone:5555

# Check weather the process is running or not
process_name="scrcpy"

if pgrep -x "$process_name" > /dev/null; then
  dunstify -u normal -i "" "Already connected to phone"
else
  scrcpy -e --no-video --audio-buffer=400
fi
