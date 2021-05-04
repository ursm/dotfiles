znap source gentoo/gentoo-zsh-completions

fpath+=(~[gentoo-zsh-completions]/src)

function eview {
  local f=$(fd --glob '*.ebuild' --color=always /var/db/repos | fzf --ansi --query="$*" --delimiter / --with-nth -4..)

  test -n "$f" && nvim $f
}
