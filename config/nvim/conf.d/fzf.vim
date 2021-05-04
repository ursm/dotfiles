if empty(globpath(&rtp, 'autoload/fzf/vim.vim'))
  finish
endif

nmap <silent> <C-j><C-j> :<C-u>Files<CR>
