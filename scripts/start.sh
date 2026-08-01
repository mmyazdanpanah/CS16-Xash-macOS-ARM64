#!/bin/bash

GAME_DIR="$HOME/Games/CS16-Xash"

cd "$GAME_DIR" || exit 1

exec ./xash3d -game cstrike
