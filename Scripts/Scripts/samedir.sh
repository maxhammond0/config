#!/bin/sh

# Open a terminal window in the same directory as the currently active window.

# Make a temporary file called ~/.cwd
PROMPT_COMMAND= pwd > $HOME/.cwd

cwd=$(cat $HOME/.cwd)

alacritty --working-directory $cwd
