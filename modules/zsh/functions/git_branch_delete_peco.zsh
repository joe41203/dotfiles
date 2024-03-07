function git_branch_delete_peco() {
    git branch | peco | xargs git branch -D
}
