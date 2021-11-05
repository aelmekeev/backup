export PATH=$HOME/homebrew/bin:$PATH
eval "$(starship init zsh)"

# asdf
. ~/homebrew/opt/asdf/libexec/asdf.sh
. ~/.asdf/plugins/java/set-java-home.zsh

# aliases
alias t='terraform'