export RBENV_ROOT=$XDG_DATA_HOME/rbenv-root

path+=($XDG_DATA_HOME/rbenv/bin)

znap eval rbenv 'rbenv init - zsh'
