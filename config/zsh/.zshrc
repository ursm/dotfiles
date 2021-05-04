source $XDG_DATA_HOME/znap/zsh-snap/znap.zsh

bindkey -e

for f in $ZDOTDIR/rc.d/*.zsh; do
  source $f
done
