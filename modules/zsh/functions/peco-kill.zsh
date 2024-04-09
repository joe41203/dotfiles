function peco-kill() {
    for pid in `ps aux | peco | awk '{ print $2 }'`
    do
        kill -9 $pid
        echo "Killed ${pid}"
    done
}
