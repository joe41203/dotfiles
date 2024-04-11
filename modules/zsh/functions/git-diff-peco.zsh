function git-diff-peco() {
  local base_branch=$(git branch | peco --query "$LBUFFER" | tr -d '[:space:]' | tr -d '*')
  local compare_branch=$(git branch | peco --query "$LBUFFER" | tr -d '[:space:]' | tr -d '*')

  if [ -n "$base_branch" ] && [ -n "$compare_branch" ]; then
    git diff $base_branch $compare_branch --output=diff.txt | echo "Diff output saved to diff.txt"
  else
    echo "Branch selection cancelled."
  fi
}
