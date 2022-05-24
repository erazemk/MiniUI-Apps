#!/bin/sh

DIR=$(dirname "$0")
cd "$DIR" || exit
HOME=$DIR

if [ "$(pgrep -f audioserver)" = "" ]; then
  export LD_LIBRARY_PATH=$DIR:$LD_LIBRARY_PATH
fi

# Launch a menu, explaining to the user that the game won't be auto-saved
if [ ! -f ./initial-warning-done ]; then
  show okay.png
  say "This is a standalone game,"$'\n'" It will not be auto-saved"$'\n'"when powering off!"$'\n'
  confirm only
  touch ./initial-warning-done
fi

./voidsw > "$LOGS_PATH"/voidsw.txt 2>&1