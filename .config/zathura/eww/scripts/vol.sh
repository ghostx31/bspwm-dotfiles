#!/bin/sh

sink="$(pactl get-default-sink)"

volume="$(pactl get-sink-volume $sink | grep % | head -n 1 | cut -d '/' -f 2 | cut -d "%" -f 1)"

echo $volume
