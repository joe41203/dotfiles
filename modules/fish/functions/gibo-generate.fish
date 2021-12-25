function gibo-generate
  gibo list | peco | xargs gibo dump >> .gitignore
end
