export PATH="$HOME/.anyenv/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

export TF_CLI_ARGS_plan="--parallelism=30"
export TF_CLI_ARGS_apply="--parallelism=30"

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

export GHQ_ROOT=$HOME/workspace

export HISTSIZE=1000
export SAVEHIST=100000
export HISTFILE=${HOME}/.zsh_history

eval "$(anyenv init -)"
eval "$(rbenv init -)"
