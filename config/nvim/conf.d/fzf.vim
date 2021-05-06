if empty(globpath(&rtp, 'autoload/fzf/vim.vim'))
  finish
endif

nnoremap <silent> <C-j><C-h> :<C-u>History:<CR>
nnoremap <silent> <C-j><C-j> :<C-u>Files<CR>
nnoremap <silent> <C-j><C-k> :<C-u>GFiles<CR>
nnoremap <silent> <C-j><C-l> :<C-u>GFiles?<CR>
