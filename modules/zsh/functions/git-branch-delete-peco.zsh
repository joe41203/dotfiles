function git-branch-delete-peco() {
    git branch | peco | xargs git branch -D
}
