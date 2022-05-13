if executable('rg')
  let &grepprg = 'rg --vimgrep --no-heading --hidden --follow'
  set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

augroup _grep
  autocmd!
  autocmd QuickFixCmdPost *grep* if len(getqflist()) > 0 | cwindow | endif
augroup END
