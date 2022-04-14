set GHQ_SELECTOR peco

source /usr/local/opt/asdf/libexec/asdf.fish

if type -q tmux && test -z $TMUX && status --is-login
    tmux_attach_session_if_needed
end

set -x GOPATH "$HOME/go"
set -x PATH "$HOME/go/bin" $PATH

set -x GEM_HOME "$HOME/.gem"
set -x PATH "$GEM_HOME/bin:$PATH"
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc
set -x PATH "$PATH":"$HOME/.pub-cache/bin"
set -x PATH "$PATH":"$HOME/fvm/default/bin"
