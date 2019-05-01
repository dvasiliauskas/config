#!/bin/bash


printf "============START: LINKING CONFIGURATION FILES=======================\n"
    ./_symlink_config.sh
printf "============DONE: LINKING CONFIGURATION FILES========================\n"


printf "\n============START: BREW SETUP======================================\n"
    ./_brew.sh
    brew bundle
printf "============DONE: BREW SETUP=========================================\n"


printf "============START: LAUNCHD SETUP=====================================\n"
    ./launchd/setup.sh
printf "============DONE: LAUNCHD SETUP======================================\n"


