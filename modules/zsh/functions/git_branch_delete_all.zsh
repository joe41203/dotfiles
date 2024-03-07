function git_branch_delete_all() {
    git branch | xargs git branch -D
}
