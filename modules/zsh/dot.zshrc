# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSHHOME="$HOME/.zsh"

# Set name of the theme to load
ZSH_THEME="garyblessington"

# Which plugins would you like to load?
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Load custom configurations
source $ZSHHOME/aliases.zsh
source $ZSHHOME/env.zsh
source $ZSHHOME/plugins.zsh

# Load custom functions
fpath=($ZSHHOME/functions $fpath)
autoload -U $ZSHHOME/functions/*(:t)

unset MAILCHECK
