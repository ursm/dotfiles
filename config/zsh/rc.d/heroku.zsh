path+=($XDG_DATA_HOME/heroku/bin)

# https://github.com/heroku/cli/issues/1686
znap eval heroku "sed /compinit/d $XDG_CACHE_HOME/heroku/autocomplete/zsh_setup"
