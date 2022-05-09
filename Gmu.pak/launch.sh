#!/bin/sh

DIR=$(dirname "$0")
cd "$DIR" || exit
HOME=$DIR
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:./lib

./cpufreq.sh

export LD_PRELOAD=./lib/libSDL-1.2.so.0
SDL_NOMOUSE=1 ./gmu.bin -c gmu.miyoo.conf > "$LOGS_PATH"/Gmu.txt 2>&1
unset LD_PRELOAD
