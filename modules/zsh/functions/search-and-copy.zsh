function search-and-copy() {
  local selected_dir
  selected_dir=$(find . -type d | fzf --preview 'ls -l {}' --bind 'ctrl-v:execute(less -f {})')
  if [[ -n $selected_dir ]]; then
    local file_contents
    file_contents=$(cd "$selected_dir" && tail -n+1 *)
    echo "$file_contents" | pbcopy
    echo "${selected_dir} has been copied to clipboard."
  fi
}
