#!/bin/sh

## ==========Bootstrap script==========
## Creates folders, moves over configurations and readies the environment

printf "\n=====START: CONFIG SETUP===========================================\n"


KERNEL=$(uname -s)


if [ "$KERNEL" = "Darwin" ]
then
    cd mac/ && ./setup.sh
    cd - || return
fi

if [ "$KERNEL" = "Linux" ]
then
    cd linux/ && ./setup.sh
    cd - || return
fi

cd common_config/ && ./_symlink_common_config.sh
cd .. || return

cd dotfiles && ./link_dotfiles.sh
cd .. || return


printf "\n=====COMPLETE: CONFIG SETUP========================================\n"
