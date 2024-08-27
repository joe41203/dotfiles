function git-grep-all-branches() {
    if [[ $# -eq 0 ]]; then
        echo "Usage: git-grep-all-branches <keyword>"
        return 1
    fi

    local keyword="$1"
    git grep "$keyword" $(git branch -a --format='%(objectname) %(refname:short)' | sort | uniq -w 40 | cut -c 42-)
}
