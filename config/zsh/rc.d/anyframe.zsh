znap source mollifier/anyframe

zstyle ":anyframe:selector:" use fzf
zstyle ":anyframe:selector:fzf:" command 'fzf --exact --delimiter / --with-nth -3..'

bindkey '^g' anyframe-widget-cd-ghq-repository
