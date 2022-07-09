#!/bin/bash

# terminate already running bar instances
killall -q polybar

# If bars have ipc enabled, also use
# polybar-msg cmd quit

# launch polybar, using default config location
polybar 2>&1 | tee -a /tmp/polybar.log & disown
