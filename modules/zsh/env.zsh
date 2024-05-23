export PATH="$HOME/.anyenv/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$ANDROID_HOME/platform-tools:$PATH

export TF_CLI_ARGS_plan="--parallelism=30"
export TF_CLI_ARGS_apply="--parallelism=30"

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

export GHQ_ROOT=$HOME/workspace

export HISTSIZE=1000
export SAVEHIST=100000
export HISTFILE=${HOME}/.zsh_history

export LIBRARY_PATH=$LIBRARY_PATH:$(brew --prefix zstd)/lib/

export OP_ACCOUNT="my.1password.com"

eval "$(anyenv init -)"
eval "$(rbenv init -)"
