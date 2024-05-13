#!/bin/bash

echo 'Do you want to start Hyprland? (Y/n): '

read -r reaction

if [[ $reaction == 'Y' || $reaction == 'y' || $reaction == '' ]]; then
    Hyprland
fi
