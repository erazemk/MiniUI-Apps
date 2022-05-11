#!/bin/sh

DIR=$(dirname "$0")
PARASYTE="/mnt/SDCARD/.system/paks/Parasyte.pak/rootfs"

export HOME=$DIR
export PYTHONPATH=$DIR/libs/python2.7:$DIR/libs/python2.7/site-packages:$DIR/libs/python2.7/lib-dynload
export PYTHONHOME=$DIR/libs/python2.7:$DIR/libs/python2.7/site-packages:$DIR/libs/python2.7/lib-dynload
export PATH=$DIR/bin:$PARASYTE/usr/local/sbin:$PARASYTE/usr/local/bin:$PARASYTE/usr/sbin:$PARASYTE/usr/bin:$PARASYTE/sbin:$PARASYTE/bin:$PATH
export LD_LIBRARY_PATH=$DIR/libs:$DIR/libs/python2.7/:$DIR/libs/python2.7/lib-dynload:$PARASYTE/lib:$PARASYTE/usr/lib:$LD_LIBRARY_PATH

cd "$DIR" || exit

# Launch a menu, explaining to the user that the game won't be auto-saved
if [ ! -f ./initial-warning-done ]; then
  show okay.png
  say "2048 is a standalone app,"$'\n'" IT WILL NOT BE AUTO-SAVED"$'\n'"when powering off!"$'\n'
  confirm only
  touch ./initial-warning-done
fi

python2 ./2048.py > "$LOGS_PATH"/2048.txt 2>&1
