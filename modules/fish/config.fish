set GHQ_SELECTOR peco

source /usr/local/opt/asdf/libexec/asdf.fish

set -x GOPATH "$HOME/go"
set -x PATH "$HOME/go/bin" $PATH

set -x GEM_HOME "$HOME/.gem"
set -x PATH "$GEM_HOME/bin:$PATH"
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc
set -x PATH "$PATH":"$HOME/.pub-cache/bin"
set -x PATH "$PATH":"$HOME/fvm/default/bin"

status --is-interactive; and source (anyenv init -|psub)
