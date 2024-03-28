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
for func in $ZSHHOME/functions/*.zsh; do
    source $func
done

unset MAILCHECK

setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_verify
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt hist_no_store
setopt hist_expand
setopt inc_append_history
