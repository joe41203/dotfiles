function generate-gitignore() {
  local selected
  selected=$(gibo list | peco --query "$*" | tr ' ' '\n')
  if [ -n "$selected" ]; then
    gibo dump $selected > .gitignore
  fi
}
