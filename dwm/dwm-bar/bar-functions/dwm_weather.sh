#!/bin/sh

# A dwm_bar function to print the weather from wttr.in
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Dependencies: curl

# Change the value of LOCATION to match your city
dwm_weather() {
    LOCATION=Kathmandu

    printf "﨏%s" "$SEP1"
    if [ "$IDENTIFIER" = "" ]; then
        printf " %s" "$(curl -s wttr.in/$LOCATION?format=1)"
    else
        printf " %s" "$(curl -s wttr.in/$LOCATION?format=1 | grep -o ".[0-9].*")"
    fi
    printf "﨏%s\n" "$SEP2"
}

dwm_weather
