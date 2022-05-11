#!/bin/sh

DIR=$(dirname "$0")
PARASYTE="/mnt/SDCARD/.system/paks/Parasyte.pak/rootfs"

export HOME=$DIR
export PATH=$DIR:$PARASYTE/usr/local/sbin:$PARASYTE/usr/local/bin:$PARASYTE/usr/sbin:$PARASYTE/usr/bin:$PARASYTE/sbin:$PARASYTE/bin:$PATH
export LD_LIBRARY_PATH=$DIR/lib:$PARASYTE/lib:$PARASYTE/usr/lib:$LD_LIBRARY_PATH
export SDL_VIDEODRIVER=mmiyoo
export SDL_AUDIODRIVER=mmiyoo
export EGL_VIDEODRIVER=mmiyoo
echo performance > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor

cd "$DIR" || exit

# Launch a menu, explaining to the user that the game won't be auto-saved
if [ ! -f ./initial-warning-done ]; then
  show okay.png
  say "SM64p is a standalone app,"$'\n'" IT WILL NOT BE AUTO-SAVED"$'\n'"when powering off!"$'\n'
  confirm only
  touch ./initial-warning-done
fi

swapon ./ram.img
./sm64.us.f3dex2e > "$LOGS_PATH"/SM64p.txt 2>&1
swapoff ./ram.img
