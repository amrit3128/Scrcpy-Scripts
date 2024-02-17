#!/usr/bin/sh

# Define the process name to search for
process_name="scrcpy"

notification() {
  dunstify -u normal -i "" "Killing Process"
}

# Check if the process is running
if pgrep -x "$process_name" >/dev/null; then
    # If the process is running, kill it
    echo "Process $process_name is running. Killing..."
    pkill -x "$process_name"
    notification "$process_name"
else
    echo "Process $process_name is not running."
fi
