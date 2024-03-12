function git-branch-delete-all() {
    git branch | xargs git branch -D
}
