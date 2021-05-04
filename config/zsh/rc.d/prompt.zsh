znap source ohmyzsh/ohmyzsh lib/{git,theme-and-appearance}.zsh themes/gentoo.zsh-theme

autoload -Uz promptinit && promptinit

# break a line before the prompt symbol ($, #)
PROMPT=${PROMPT:s/%(!.#.$)/$prompt_newline%(!.#.$)}
