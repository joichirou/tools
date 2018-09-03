#!/bin/sh

DEST_DIR="$HOME/.vimrc"

if [ -e $DEST_DIR ]; then
    cat $DEST_DIR
else
    echo "not exist file"
fi

