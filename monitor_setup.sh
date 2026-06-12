#!/bin/bash

# Tharindu Patabandi
# tharindu at protonmail dot com
#
#	1
#
#	or 
#
#	2
#	1
#
#	or
# 	
#       2       3
# 	1

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
    echo "Monitor configuration not defined. Defaulting to eDP1"
    xrandr --output eDP1 --auto
fi

