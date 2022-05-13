if empty(globpath(&rtp, 'autoload/fzf/vim.vim'))
  finish
endif

nnoremap <silent> <M-j><M-h> :<C-u>History:<CR>
nnoremap <silent> <M-j><M-j> :<C-u>History<CR>
nnoremap <silent> <M-j><M-k> :<C-u>Files<CR>
nnoremap <silent> <M-j><M-l> :<C-u>GFiles<CR>
nnoremap <silent> <M-j><M-;> :<C-u>GFiles?<CR>
