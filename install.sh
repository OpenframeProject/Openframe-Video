#!/bin/bash
#
# Be VERY Careful. This script may be executed with admin privileges.

echo "Openframe Video -- install.sh"

if ! [ -z "$TRAVIS" ]; then
    echo "TRAVIS env, don't install"
    exit 0
fi

# Some limited platform detection might be in order... though at present we're targeting the Pi
os=$(uname)
arq=$(uname -m)

if [ $os == "Linux" ]; then

    # on Debian Linux distributions

    # same for any debian disto (untested), including rpi (tested)
    sudo apt-get install -y omxplayer

    if [ $arq == "armv7l" ]; then
        # on RaspberryPi 2 or higher
        echo "armv7l"

        # ####
        #
        # FOR NOW, CODE GOES HERE since we're shooting for RPi support
        #
        # ####

    elif [ $arq == "armv6l" ]; then
        # on RaspberryPi 1 (A+, B+)
        echo "armv6l"

        # ####
        #
        # FOR NOW, CODE GOES HERE since we're shooting for RPi support
        #
        # ####

    else
        # Non-arm7 Debian...
        echo "non armv7l"
    fi

elif [ $os == "Darwin" ]; then
    # OSX
    echo "osx"
fi
