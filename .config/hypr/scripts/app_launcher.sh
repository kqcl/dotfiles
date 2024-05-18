#!/bin/bash

BIN_DIRS="/usr/local/bin /usr/bin /bin /opt /usr/local/sbin /usr/sbin /sbin"

selected=$(find $BIN_DIRS -maxdepth 1 \( -type f -o -type l \) -executable | fzf)

if [ -n "$selected" ]; then
    hyprctl dispatch exec $selected
    kill -TERM $(ps -o ppid= -p $$)
    exit
fi

kill -9 $PPID
