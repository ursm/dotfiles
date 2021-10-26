source /etc/profile.d/vte-*.sh

znap source ohmyzsh/ohmyzsh lib/termsupport.zsh
znap source zsh-users/zsh-completions
znap source zsh-users/zsh-syntax-highlighting

znap eval direnv 'direnv hook zsh'
znap eval github-cli 'gh completion --shell zsh'

export GST_VAAPI_ALL_DRIVERS=1
export PGUSER=postgres
export RCRC=$XDG_CONFIG_HOME/rcm/rcrc
export UNZIP='-O cp932'

autoload -U zmv

hash -d github=$HOME/Repositories/github.com
