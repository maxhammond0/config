#!/bin/bash

# Check for updates using pacman and yay (if installed)
updates_pacman=$(yay -Qua 2>/dev/null | wc -l)
updates_aur=""
if command -v yay &> /dev/null; then
  updates_aur=$(yay -Qua 2>/dev/null | wc -l)
fi

# Check if either command failed
if [[ $? -ne 0 ]]; then
  echo " Error checking updates "
  exit 1
fi

# Calculate total updates
total_updates=$((updates_pacman + updates_aur))

# Output the number of updates
if [[ $total_updates -gt 0 ]]; then
  echo " System Updates: $total_updates "
  echo " System Updates: $total_updates "  # Full text for click action
else
  echo " System up to date "
  echo " System up to date "  # Full text for click action
fi
