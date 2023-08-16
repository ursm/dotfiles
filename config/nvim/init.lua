require 'plugins'

vim.api.nvim_create_autocmd('BufWritePost', {
  pattern = {'plugins.lua'},

  callback = function()
    require 'plugins'

    vim.cmd 'PackerCompile'
  end
})

vim.opt.breakindent = true
vim.opt.cursorline  = true
vim.opt.number      = true
vim.opt.wildmode    = {'longest:full', 'full'}

vim.cmd 'colorscheme nightfox'

vim.g.mapleader = ' '

local telescope_builtin = require('telescope.builtin')
local telescope_ext     = require('telescope').extensions

vim.keymap.set('c', '<C-a>', '<Home>')
vim.keymap.set('c', '<C-x>', "<C-r>=expand('%:p:h')<CR>/")

vim.keymap.set('n', '<Leader>e', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<Leader>i', function() return ':IncRename ' .. vim.fn.expand('<cword>') end, {expr = true})
vim.keymap.set('n', '<Leader>j', require('trevj').format_at_cursor)
vim.keymap.set('n', '<Leader>l', ':nohlsearch<CR>')
vim.keymap.set('n', '<Leader>r', require('replacer').run)
vim.keymap.set('n', '<Leader>t', ':tabnew<CR>')
vim.keymap.set('n', '<M-j>',     ':<C-u>cnext<CR>')
vim.keymap.set('n', '<M-k>',     ':<C-u>cprevious<CR>')

vim.keymap.set('x', '<Leader> ',  ':EasyAlign<CR> <CR>')
vim.keymap.set('x', '<Leader>* ', ':EasyAlign<CR>* <CR>')
vim.keymap.set('x', '<Leader>*,', ':EasyAlign<CR>*,<CR>')
vim.keymap.set('x', '<Leader>,',  ':EasyAlign ,<CR>')
vim.keymap.set('x', '<Leader>:',  ':EasyAlign :<CR>')
vim.keymap.set('x', '<Leader>=',  ':EasyAlign =<CR>')
vim.keymap.set('x', '<Leader>s',  ':sort<CR>')

vim.keymap.set('n', '<Leader><Leader>', telescope_builtin.oldfiles, {})
vim.keymap.set('n', '<Leader>fb',       telescope_builtin.buffers, {})
vim.keymap.set('n', '<Leader>fe',       telescope_ext.frecency.frecency, {})
vim.keymap.set('n', '<Leader>ff',       telescope_builtin.git_files, {})
vim.keymap.set('n', '<Leader>fg',       telescope_ext.live_grep_args.live_grep_args, {})
vim.keymap.set('n', '<Leader>fm',       telescope_builtin.marks, {})
vim.keymap.set('n', '<Leader>fr',       telescope_builtin.resume, {})
vim.keymap.set('n', '<Leader>ft',       telescope_builtin.treesitter, {})

vim.keymap.set({'n', 'x'}, '<Leader>fc', telescope_builtin.command_history, {})

vim.cmd 'cabbrev a EasyAlign'
vim.cmd 'cabbrev t Telescope'

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
