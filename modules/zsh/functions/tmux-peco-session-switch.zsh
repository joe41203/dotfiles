function tmux-peco-session-switch() {
    local selected_session=$(tmux list-sessions -F "#{session_name}" | peco --query "$LBUFFER")
    if [ -n "$selected_session" ]; then
        if [ -n "$TMUX" ]; then
            BUFFER="tmux switch-client -t ${selected_session}"
        else
            BUFFER="tmux attach-session -t ${selected_session}"
        fi
        zle accept-line
    fi
    zle clear-screen
}
zle -N tmux-peco-session-switch
bindkey '^t' tmux-peco-session-switch
