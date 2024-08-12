function copy-directory-contents() {
  local selected_dir
  selected_dir=$(find . -type d \
    -not -path '*/\.*' \
    -not -path '*/__pycache__*' \
    -not -path '*/node_modules*' \
    -not -path '*/.git*' \
    -not -path '*/.venv*' \
    | fzf --preview 'ls -l {}' --bind 'ctrl-v:execute(less -f {})')

  if [[ -n $selected_dir ]]; then
    local file_contents
    file_contents=$(cd "$selected_dir" && find . -type f \
      -not -path '*/\.*' \
      -not -path '*/__pycache__*' \
      -not -path '*/node_modules*' \
      -not -path '*/.git*' \
      -not -path '*/.venv*' \
      -exec cat {} +)
    echo "$file_contents" | pbcopy
    echo "${selected_dir} 以下の全てのコードがクリップボードにコピーされました。"
  fi
}
