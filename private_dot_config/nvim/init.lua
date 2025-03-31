local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({'git', 'clone', '--filter=blob:none', 'https://github.com/folke/lazy.nvim.git', '--branch=stable', lazypath})
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup 'plugins'

vim.opt.breakindent   = true
vim.opt.cursorline    = true
vim.opt.fileencodings = {'ucs-boms', 'utf-8', 'cp932', 'euc-jp'}
vim.opt.list          = true
vim.opt.number        = true
vim.opt.tabstop       = 4
vim.opt.wildmode      = {'longest:full', 'full'}

vim.keymap.set('n', '<M-Left>',  ':<C-u>tabprevious<CR>')
vim.keymap.set('n', '<M-Right>', ':<C-u>tabnext<CR>')
vim.keymap.set('n', '<M-j>',     ':<C-u>cnext<CR>')
vim.keymap.set('n', '<M-k>',     ':<C-u>cprevious<CR>')
vim.keymap.set('n', '<M-t>',     ':<C-u>tabnew<CR>')
vim.keymap.set('n', '<Space>%',  ':let @+ = expand("%")<CR>')
vim.keymap.set('n', '<Space>P',  '"0P');
vim.keymap.set('n', '<Space>h',  ':nohlsearch<CR>')
vim.keymap.set('n', '<Space>p',  '"0p');

vim.keymap.set('c', '<C-a>', '<Home>')
vim.keymap.set('c', '<C-x>', "<C-r>=expand('%:p:h')<CR>/")

vim.keymap.set('x', '<Space>s', ':sort<CR>')

if vim.fn.executable('rg') == 1 then
  vim.o.grepprg    = 'rg --vimgrep --hidden'
  vim.o.grepformat = '%f:%l:%c:%m'
end

vim.api.nvim_create_autocmd('QuickFixCmdPost', {
  pattern = {'vim', 'grep', 'make'},

  callback = function()
    if #vim.fn.getqflist() > 1 then
      vim.cmd 'cwindow'
    end
  end
})
