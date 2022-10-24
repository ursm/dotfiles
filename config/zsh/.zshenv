if [ -f /etc/zsh/zprofile ]; then
  source /etc/zsh/zprofile
fi

export XDG_BIN_HOME=$HOME/.local/bin
export XDG_CACHE_HOME=$HOME/.cache
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share

path+=($XDG_BIN_HOME)
