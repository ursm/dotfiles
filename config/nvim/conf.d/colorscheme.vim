if empty(globpath(&rtp, 'autoload/gruvbox.vim'))
  finish
endif

let g:gruvbox_italic = 1

colorscheme gruvbox
