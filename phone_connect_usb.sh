#!/usr/bin/sh

# Check weather the process is already running or not
process_name="scrcpy"

# Connect to the phone
if pgrep -x "$process_name" > /dev/null; then
  dunstify -u normal -i "" "Already connected to phone"
else
  scrcpy -d
fi
