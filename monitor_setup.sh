#!/bin/bash

# Tharindu Patabandi
# tharindu at protonmail dot com
#
#	[1]
#
#	or 
#
#	[2]
#	[1]
#
#	or
# 	
#   [2]    [3]
# 	[1]
 
fallback() {
    echo "Defaulting to eDP1"
    xrandr --output eDP1 --auto
}

if [[ $# == 1 ]]; then
    # try to use all displays

    if [[ $1 == 1 ]]; then
        echo "# Displays = 1"
        xrandr --output eDP1 --auto
    elif [[ $1 == 2 ]]; then
        echo "# Displays = 2"
        xrandr --output eDP1 --auto \
        --output DP3-1 --auto --above eDP1
    elif [[ $1 == 3 ]]; then
        echo "# Displays = 3"
        xrandr --output eDP1 --auto \
        --output DP3-1 --auto --above eDP1 \
        --output DP3-2 --auto --right-of DP3-1

    else
        fallback
    fi

elif [[ $# == 2 && $2 == "external" ]]; then
    # 'external' only use external
    if [[ $1 == 1 ]]; then
        echo "# Displays = 1 (External)"
        echo "   [1]    "
        xrandr --output eDP1 --off \
        --output DP3-1 --auto --above eDP1 \
        --output DP3-2 --off

    elif [[ $1 == 2 ]]; then
        echo "# Displays = 2 (External)"
        echo "   [1] [2]    "
        xrandr --output eDP1 --off \
        --output DP3-1 --auto --above eDP1 \
        --output DP3-2 --auto --right-of DP3-1
    else
        fallback
    fi
else 
    fallback
fi

