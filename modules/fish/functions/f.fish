function f
  set dir (fd -t d -d 3 | fzf --height 40%)
  if test $dir
    cd $dir
  end
end
