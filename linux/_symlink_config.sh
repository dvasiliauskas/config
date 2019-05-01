#! /bin/bash

cd .config/ || return

if [[ ! -d "$HOME/.config/" ]]
then
    mkdir "$HOME"/.config/
fi

for folder in */; do
    ln -s "$(pwd)"/"$folder" "$HOME"/.config/

done
