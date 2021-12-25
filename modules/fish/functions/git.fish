function git-branch-delete
  git branch | peco | xargs git branch -D
end

function git-checkout
  git branch | peco | xargs git checkout
end
