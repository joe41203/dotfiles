function setup-rails() {
    local ruby_version=$(rbenv versions --bare | peco)
    if [ -n "$ruby_version" ]; then
        echo "$ruby_version" > .ruby-version
        bundle init
        bundle config set path 'vendor/bundle'
    else
        echo "No Ruby version selected. Exiting."
        return 1
    fi
}
