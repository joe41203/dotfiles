function git-checkout-peco() {
    local branch=$(git branch --all | grep -v HEAD | peco --query "$LBUFFER")
    if [ -n "$branch" ]; then
        git checkout $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
    fi
    zle clear-screen
}
zle -N git-checkout-peco
bindkey '^S' git-checkout-peco
