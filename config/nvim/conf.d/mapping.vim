nnoremap <Space><Space> <C-^>

vnoremap <Space>s :sort<CR>
nnoremap <Space>s vip:sort<CR>

nnoremap <Space>p "0p
vnoremap <Space>p "0p
nnoremap <Space>P "+p
vnoremap <Space>P "+p

nnoremap <C-p> :<C-u>cp<CR>
nnoremap <C-n> :<C-u>cn<CR>

cnoremap <C-a> <Home>
cnoremap <C-x> <C-r>=expand('%:p:h')<CR>/
