#!/bin/sh

SCREEPS_ROOT="/screeps"
SCREEPS_CONFIG="$SCREEPS_ROOT/.screepsrc"

if [ ! -s "$SCREEPS_CONFIG" ]; then
    if [ -z "$STEAM_KEY" ]; then
        echo "ERROR: Missing Steam API key. Get it here: https://steamcommunity.com/dev/apikey"
        exit 1
    else
        echo "Initialising screeps..."

        echo "${STEAM_KEY}" | $SCREEPS init "${SCREEPS_ROOT}"
    fi
fi

eval exec "$SCREEPS ${@}"

