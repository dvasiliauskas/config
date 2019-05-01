#! /bin/bash


printf "\n====================START: LINUX SPECIFIC SETUP====================\n"


printf "\n====================START: LINKING CONFIGURATION FILES=============\n"
    ./_symlink_config.sh
printf "\n====================COMPLETE: LINKING CONFIGURATION FILES==========\n"


printf "\n====================START: PACKAGES SETUP==========================\n"
    ./install_dependencies.sh
printf "\n====================COMPLETE: PACKAGES SETUP=======================\n"


printf "\n====================COMPLETE: LINUX SPECIFIC SETUP=================\n"


