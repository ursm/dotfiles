bindkey -e

export PNPM_HOME="$XDG_DATA_HOME/pnpm"

path=(
  $XDG_BIN_HOME
  $HOME/.cargo/bin
  $HOME/.dotnet/tools
  $PNPM_HOME
  $path
)

HISTFILE=$XDG_DATA_HOME/zsh/history
fpath+=($ZDOTDIR/functions)

export ASDF_DATA_DIR=$XDG_DATA_HOME/asdf/data

eval "$(sheldon source)"

autoload -Uz compinit && compinit
autoload -Uz promptinit && promptinit
autoload -Uz zmv

PROMPT=${PROMPT:s/%(!.#.$)/$prompt_newline%(!.#.$)} # break a line before the prompt symbol ($, #)
RUBIES+=($XDG_DATA_HOME/rubies/*)

export ASDF_GEM_DEFAULT_PACKAGES_FILE=$XDG_CONFIG_HOME/asdf/default-gems
export ASDF_NPM_DEFAULT_PACKAGES_FILE=$XDG_CONFIG_HOME/asdf/default-npm-packages
export FZF_ALT_C_COMMAND='fd --type directory --hidden --follow'
export FZF_CTRL_R_OPTS='--no-sort'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
export FZF_DEFAULT_COMMAND='fd --type file --hidden --follow'
export FZF_DEFAULT_OPTS='--exact'
export GST_VAAPI_ALL_DRIVERS=1
export LESS="$LESS --quit-if-one-screen --RAW-CONTROL-CHARS"
export LESSHISTFILE=$XDG_CACHE_HOME/less/history
export PGUSER=postgres
export RCRC=$XDG_CONFIG_HOME/rcm/rcrc
export UNZIP='-O cp932'

zstyle ':anyframe:selector:' use fzf
zstyle ':anyframe:selector:fzf:' command 'fzf --exact --delimiter / --with-nth -3..'

bindkey '^g' anyframe-widget-cd-ghq-repository

hash -d github=$HOME/Repositories/github.com

eval "$(direnv hook zsh)"
