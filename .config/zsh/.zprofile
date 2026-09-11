if [[ -x /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

[[ -z ${(M)path:#$XDG_BIN_HOME} ]] && path=($XDG_BIN_HOME $path)
