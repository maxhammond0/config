#!/bin/bash
# get output from amixer
AMIXER=$(amixer get Master | tail -n 1) # get last line of amixer output

# show either volume or mute
if [[ $AMIXER =~ "[on]" ]]; then # check if channel is muted by checking if line contains the word "on"
    IFS=' ' read -ra args <<< "$AMIXER" # split string

    VOL="${args[4]:1:-1}" # get 4th argument (the volume) from the string we just split and remove the first and last argument (square brackets)
    
    echo " 🔊 $VOL "
else
    echo " 🔇  0% "
fi
