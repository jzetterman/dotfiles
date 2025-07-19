#!/bin/zsh

OUTPUT=/tmp/screenshot_$(date +%F_%H%M%S).png
grimblast save area $OUTPUT
swappy -f $OUTPUT

