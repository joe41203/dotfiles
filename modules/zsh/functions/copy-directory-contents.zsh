function copy-directory-contents() {
  local selected_dir
  selected_dir=$(find . -type d | fzf --preview 'ls -l {}' --bind 'ctrl-v:execute(less -f {})')
  if [[ -n $selected_dir ]]; then
    local file_contents
    file_contents=$(cd "$selected_dir" && find . -type f -name "*.*" -exec cat {} \;)
    echo "$file_contents" | pbcopy
    echo "${selected_dir} 以下の全てのコードがクリップボードにコピーされました。"
  fi
}
