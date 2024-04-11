function git-diff-peco() {
	local base_branch=$(git branch | peco --query "$LBUFFER" | tr -d '[:space:]' | tr -d '*')
	local compare_branch=$(git branch | peco --query "$LBUFFER" | tr -d '[:space:]' | tr -d '*')

	if [ -n "$base_branch" ] && [ -n "$compare_branch" ]; then
		git diff $base_branch $compare_branch | pbcopy
		echo "Git diff between $base_branch and $compare_branch has been copied to clipboard."
	else
		echo "Branch selection cancelled."
	fi
}
