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

# git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
# ln -s /home/bart/.zprezto/runcoms/zshrc $HOME/.zshrc.prozto
# ln -s /home/bart/.zprezto/runcoms/zpreztorc $HOME/.zpreztorc
