##
# Prompt setup
##
PROMPT='%F{208}%n%f in %F{226}%~%f -> '



KERNEL=`uname -s`
ARCH=`uname -m`

if [[ $KERNEL = "Darwin" ]]
then
    #This can be sourced to a common script
    export M_OS="$(sw_vers -productName)"
    export M_OS_VERSION="$(sw_vers -productVersion)"
    export M_KERNEL="$(uname -s)"
    export M_KERNEL_VERSION="$(uname -r)"
    export M_ARCH="$(machine)"
    export M_HOSTNAME="$(hostname)"
    alias mu="brew update --force-bottle && brew upgrade --force-bottle"
fi

if [[ $KERNEL = "Linux" ]]
then
    #This can be sourced to a common script
    export M_OS="$(grep -ioP '^NAME=\K.+' /etc/os-release | tr -d '"')"
    export M_OS_VERSION="$(grep -ioP '^VERSION=\K.+' /etc/os-release | tr -d '"')"
    export M_KERNEL="$(uname -s)"
    export M_KERNEL_VERSION="$(uname -r)"
    export M_ARCH="$(uname -m)"
    export M_HOSTNAME="$(hostname)"

fi

#Initialize autocomplete
autoload -Uz compinit; compinit

source $HOME/.aliases

export PATH="$HOME/homebrew/bin:$HOME/homebrew/sbin:$PATH"

#todo add color, maybe oh-my-zsh ?
export PATH="/Users/$USER/homebrew/opt/node@16/bin:$PATH"
export PATH="/Users/$USER/homebrew/opt/node@16/bin:$PATH"
export PATH="/Users/$USER/homebrew/opt/node@16/bin:$PATH"


export PATH="/Users/$USER/homebrew/opt/java/bin:$PATH"
export PATH="/Users/$USER/Workspace/jdt-language-server-1.29.0-202310022015/bin:$PATH"
export NVIM_BIN=/Users/$USER/homebrew/bin/nvim

#Colors


#TODO add linux colors
export CLICOLOR=1
export LS_COLORS=
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd



export PATH="/Users/$USER/homebrew/opt/mysql-client/bin:$PATH"
