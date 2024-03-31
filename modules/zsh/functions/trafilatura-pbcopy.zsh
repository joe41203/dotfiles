function trafilatura-pbcopy() {
    if [[ -z "$1" ]]; then
        echo "Usage: trafilatura_pbcopy <url>"
        return 1
    fi

    trafilatura -u "$1" | pbcopy
}
