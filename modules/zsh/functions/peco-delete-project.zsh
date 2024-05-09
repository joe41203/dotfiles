peco-delete-project() {
    local selected_dir=$(ghq list -p | peco --query "$*")
    if [ -n "$selected_dir" ]; then
        printf "Are you sure you want to delete %s? (y/n) " "${selected_dir}"
        read confirm
        case $confirm in
            [yY][eE][sS]|[yY])
                rm -rf "${selected_dir}"
                echo "Deleted ${selected_dir}"
                ;;
            *)
                echo "Deletion canceled"
                ;;
        esac
    fi
}
