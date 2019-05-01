#! /bin/bash

cd .config/

for folder in */; do
    ln -s `pwd`/"$folder" ~/.config/

done
