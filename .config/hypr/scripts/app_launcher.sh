#!/bin/bash

# Define the directories to search for executables
BIN_DIRS="/usr/local/bin /usr/bin /bin /opt /usr/local/sbin /usr/sbin /sbin"

# Use find to locate all executable files and symbolic links in the specified directories
# Pipe the output to fzf for fuzzy searching and selection
selected=$(find $BIN_DIRS -maxdepth 1 \( -type f -o -type l \) -executable | fzf)

# If a selection is made, execute the selected command
if [ -n "$selected" ]; then
    hyprctl dispatch exec $selected
    kill -TERM $(ps -o ppid= -p $$)
    exit
fi

kill -9 $PPID
