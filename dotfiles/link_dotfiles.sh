#!/bin/sh


printf "\n====================START: LINKING DOTFILES========================\n"

DOTFILE_DIR=$(pwd -P)
# dotfile file selector, matches filenames chars [a-z] exclude ./ and ../ 
DOTFILES_ONLY=".[A-Za-z]*"

printf "\n\tFiles symlinked to home directory:\n"
ls $DOTFILES_ONLY

cd ~/
ln -s $DOTFILE_DIR/$DOTFILES_ONLY .

printf "\n====================COMPLETE: LINKING DOTFILES=====================\n"


