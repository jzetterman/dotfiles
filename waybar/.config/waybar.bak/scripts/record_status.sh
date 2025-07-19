#!/bin/zsh
# ~/scripts/record_status.sh
if pgrep -x "wf-recorder" > /dev/null; then
    echo "REC"
else
    echo ""
fi
