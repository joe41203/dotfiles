function peco-docker-shell() {
    local selected_container=$(docker ps | peco | cut -d " " -f 1)
    if [ -n "$selected_container" ]; then
        echo "Select shell:"
        local shells=("/bin/sh" "/bin/bash")
        local selected_shell=$(printf "%s\n" "${shells[@]}" | peco)

        if [ -n "$selected_shell" ]; then
            BUFFER="docker exec -it ${selected_container} ${selected_shell}"
            zle accept-line
        fi
    fi
    zle clear-screen
}
zle -N peco-docker-shell
bindkey '^B' peco-docker-shell
