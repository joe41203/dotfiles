function git_branch_delete
  git branch | peco | xargs git branch -D
end
