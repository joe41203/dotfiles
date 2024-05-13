export PATH="$HOME/.anyenv/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH=$PATH:/Users/kinjo/Library/Android/sdk/platform-tools

export TF_CLI_ARGS_plan="--parallelism=30"
export TF_CLI_ARGS_apply="--parallelism=30"

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

export GHQ_ROOT=$HOME/workspace

export HISTSIZE=1000
export SAVEHIST=100000
export HISTFILE=${HOME}/.zsh_history

export LIBRARY_PATH=$LIBRARY_PATH:$(brew --prefix zstd)/lib/

eval "$(anyenv init -)"
eval "$(rbenv init -)"
