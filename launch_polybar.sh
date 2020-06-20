#!/usr/bin/env sh

killall -q polybar

while pgrep -u $UID polybar >/dev/null; do sleep 1; done

polybar example
