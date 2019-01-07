#!/usr/bin/env bash

# kill running instances
killall -q polybar

# wait for process shutdown
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# launch bar(s)
polybar bottom &

echo "Bar(s) launched..."
