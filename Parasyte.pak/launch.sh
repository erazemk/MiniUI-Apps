#!/bin/sh

DIR=$(dirname "$0")
PARASYTE="/mnt/SDCARD/.system/paks/Parasyte.pak/rootfs"

export HOME=$DIR
export PATH=$PARASYTE/usr/local/sbin:$PARASYTE/usr/local/bin:$PARASYTE/usr/sbin:$PARASYTE/usr/bin:$PARASYTE/sbin:$PARASYTE/bin:$PATH
export LD_LIBRARY_PATH=$PARASYTE/lib:$PARASYTE/usr/lib:$LD_LIBRARY_PATH
