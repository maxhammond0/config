#!/bin/sh
CPU_USAGE=$(mpstat 1 1 | awk '/Average:/ {printf("%s\n", $(NF-9))}')
echo " CPU: $CPU_USAGE% "
