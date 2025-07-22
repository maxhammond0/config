#!/bin/bash

# Get the default audio source name
DEFAULT_SOURCE=$(pactl info | grep "Default Source" | awk '{print $3}')

# Get the mute status of the default source
MUTE_STATUS=$(pactl list sources | grep -A 10 "$DEFAULT_SOURCE" | grep "Mute:" | awk '{print $2}')

if [ "$MUTE_STATUS" == "yes" ]; then
    echo " MIC: MUTED "
elif [ "$MUTE_STATUS" == "no" ]; then
    echo " MIC: UNMUTED "
else
    echo " MIC: UNKNOWN"
fi
