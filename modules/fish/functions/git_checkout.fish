function git_checkout
  git branch | peco | xargs git checkout
end
