#! /bin/bash

# chown default install directory, usr/homebrew or /opt/homebrew and install there
# installs will quicker as pre-built binaries will be used.

# Alternativery install in the home directory, but remember that all packages will need to be compiled on install.
# https://docs.brew.sh/Installation#untar-anywhere <- Explains why /opt/homebrew location is better.

mkdir ~/homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C ~/homebrew
export PATH="$HOME/homebrew/bin:$HOME/homebrew/sbin:$PATH"
