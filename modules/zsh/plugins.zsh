export ZPLUG_HOME=$(brew --prefix)/opt/zplug

source $ZPLUG_HOME/init.zsh
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/dotenv", from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/web-search", from:oh-my-zsh
zplug "zsh-users/zsh-completions"
zplug "plugins/aliases", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/history", from:oh-my-zsh
zplug "plugins/extract", from:oh-my-zsh
zplug "plugins/z", from:oh-my-zsh
zplug "plugins/fzf", from:oh-my-zsh
zplug "plugins/gh", from:oh-my-zsh

# Docker
zplug "plugins/docker", from:oh-my-zsh
zplug "plugins/docker-compose", from:oh-my-zsh

# Ruby
zplug "plugins/rbenv", from:oh-my-zsh
zplug "plugins/ruby", from:oh-my-zsh
zplug "plugins/bundler", from:oh-my-zsh

# Terraform
zplug "plugins/terraform", from:oh-my-zsh

# Python
zplug "plugins/python", from:oh-my-zsh
zplug "plugins/pip", from:oh-my-zsh
zplug "plugins/virtualenv", from:oh-my-zsh
zplug "darvid/zsh-poetry", from:oh-my-zsh

# Node.js
zplug "plugins/node", from:oh-my-zsh
zplug "plugins/npm", from:oh-my-zsh
zplug "plugins/yarn", from:oh-my-zsh

# JavaScript
zplug "plugins/nvm", from:oh-my-zsh
zplug "plugins/ng", from:oh-my-zsh


if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load
