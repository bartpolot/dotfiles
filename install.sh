#!/bin/sh
pwd=`pwd`
for f in .??*; do
    if [ "$f" == ".git" ]; then
	continue;
    fi
    if [ -e "$HOME/$f" ]; then
	echo $f exists in $HOME, skipping!
	continue;
    fi
    ln -s "$pwd/$f" "$HOME/$f"
done
