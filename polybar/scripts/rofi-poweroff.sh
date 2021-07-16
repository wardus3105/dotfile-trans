#!/bin/bash

chosen=$($HOME/.config/polybar/scripts/rofi-poweroff-theme.sh)

if [[ $chosen = "Logout" ]]; then
    notify-send "Logout"
    #bspc quit
elif [[ $chosen = "Shutdown" ]]; then
	sudo shutdown -P now
elif [[ $chosen = "Reboot" ]]; then
	shutdown -r now
fi
