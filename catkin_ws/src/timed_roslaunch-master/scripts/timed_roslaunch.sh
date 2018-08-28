#!/bin/bash          

# BSD 3-Clause License
# https://opensource.org/licenses/BSD-3-Clause
#
# Copyright (c) 2016, Masaru Morita
# All rights reserved.

# --------------------------------------------------------------------
# Script to delay the launch of a roslaunch file
#
# Usage: sh timed_roslaunch.sh [number of seconds to delay] [rospkg] [roslaunch file]
# --------------------------------------------------------------------

showHelp() {
    echo 
    echo "This script can delay the launch of a roslaunch file"
    echo "Make sure that the file is executable (chmod +x timed_roslaunch.sh)"
}

if [ $# -lt 2 -o "$1" = "-h" ]; then
    showHelp
else 
    echo "start wait for $1 seconds"
    sleep $1
    echo "end wait for $1 seconds"

    shift # The sleep time is droped
        echo "now running 'roslaunch $@'"
        rosservice call $@
fi
