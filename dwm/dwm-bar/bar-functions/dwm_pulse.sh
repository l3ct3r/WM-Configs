#!/bin/sh

# A dwm_bar function to show the master volume of PulseAudio
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Dependencies: pamixer

dwm_pulse () {
    VOL=$(pamixer --get-volume)
    
    printf "%s" "$SEP1"
    if [ "$IDENTIFIER" = "" ]; then
        if [ "$VOL" = "muted" ] || [ "$VOL" -eq 0 ]; then
            printf "婢 "
        elif [ "$VOL" -gt 0 ] && [ "$VOL" -le 33 ]; then
            printf " %s%%" "$VOL"
        elif [ "$VOL" -gt 33 ] && [ "$VOL" -le 66 ]; then
            printf " %s%%" "$VOL"
        else
            printf " %s%%" "$VOL"
        fi
    else
        if [ "$VOL" = "muted" ] || [ "$VOL" -eq 0 ]; then
            printf "婢"
        elif [ "$VOL" -gt 0 ] && [ "$VOL" -le 33 ]; then
            printf " %s%%" "$VOL"
        elif [ "$VOL" -gt 33 ] && [ "$VOL" -le 66 ]; then
            printf " %s%%" "$VOL"
        else
            printf " %s%%" "$VOL"
        fi
    fi
    printf "%s\n" "$SEP2"
}

dwm_pulse
