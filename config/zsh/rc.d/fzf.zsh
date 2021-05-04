source /usr/share/fzf/key-bindings.zsh

export FZF_DEFAULT_COMMAND='fd --type file --hidden --follow'
export FZF_DEFAULT_OPTS='--exact'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
export FZF_ALT_C_COMMAND='fd --type directory --hidden --follow'
