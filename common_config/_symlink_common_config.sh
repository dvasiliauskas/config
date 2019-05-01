#! /bin/bash

for folder in */; do
    ln -s "$(pwd)"/"$folder" ~/.config/

done
