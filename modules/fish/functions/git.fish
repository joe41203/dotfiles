function git-branch-delete-peco
  git branch | egrep -v "main|master|develop|release" | peco | xargs git branch -D
end

function git-checkout
  git branch | peco | xargs git checkout
end
