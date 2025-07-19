#!/bin/zsh
OUTPUT=~/Videos/recording_$(date +%F_%H%M%S).mp4
wf-recorder -g "$(slurp)" -f $OUTPUT
