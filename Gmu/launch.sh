#!/bin/sh
cd $(dirname "$0")
./cpufreq.sh
HOME=/mnt/SDCARD/Tools/Gmu.pak
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:./lib
export LD_PRELOAD=./lib/libSDL-1.2.so.0
SDL_NOMOUSE=1 ./gmu.bin -c gmu.miyoo.conf &> "$LOGS_PATH"/Gmu.txt
unset LD_PRELOAD
