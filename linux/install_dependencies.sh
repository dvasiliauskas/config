#!/bin/sh


echo "Determine Linux OS";

NAME="$(grep -ioP '^NAME=\K.+' /etc/os-release | tr -d '"')"

if [ "$NAME" = "Ubuntu" ]; then

    sudo apt-get update

    echo "Installing libraries and required packages"

    #install fzf,rg and other for vim...
    sudo apt-get install ripgrep
    sudo apt-get install build-essential
    sudo apt-get install git
    sudo apt-get install curl

    sudo apt-get install neovim

    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install


    sudo apt-get install python3-venv

    sudo apt-get install shellcheck


    echo "Creating a local python env in home dir, ~/"
    python3 -m venv ~/.local_env
fi
