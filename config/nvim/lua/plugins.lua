return {
  {
    'David-Kunz/treesitter-unit',
    config = function()
      vim.keymap.set('x', 'iu', ':lua require"treesitter-unit".select()<CR>')
      vim.keymap.set('x', 'au', ':lua require"treesitter-unit".select(true)<CR>')
      vim.keymap.set('o', 'iu', ':<c-u>lua require"treesitter-unit".select()<CR>')
      vim.keymap.set('o', 'au', ':<c-u>lua require"treesitter-unit".select(true)<CR>')
    end
  },
  {
    'EdenEast/nightfox.nvim',
    config = function()
      vim.cmd 'colorscheme nightfox'
    end
  },
  'RRethy/nvim-treesitter-endwise',
  {
    'Wansmer/treesj',
    opts = {}
  },
  'andersevenrud/nvim_context_vt',
  'andymass/vim-matchup',
  'dhruvasagar/vim-table-mode',
  'editorconfig/editorconfig-vim',
  'famiu/bufdelete.nvim',
  {
    'folke/trouble.nvim',
    dependencies = 'kyazdani42/nvim-web-devicons',
    opts = {}
  },
  'gabrielpoca/replacer.nvim',
  'gbprod/substitute.nvim',
  {
    'iamcco/markdown-preview.nvim',
    ft = { 'markdown' },
    build = function()
      vim.fn['mkdp#util#install']()
    end
  },
  {
    'ggandor/leap.nvim',
    config = function()
      require('leap').add_default_mappings()
    end
  },
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-nvim-lsp-signature-help',
  'hrsh7th/cmp-path',
  'hrsh7th/nvim-cmp',
  'hrsh7th/vim-vsnip',
  'jghauser/mkdir.nvim',
  {
    'junegunn/vim-easy-align',
    config = function()
      vim.keymap.set('x', '<Leader> ',  ':EasyAlign<CR> <CR>')
      vim.keymap.set('x', '<Leader>* ', ':EasyAlign<CR>* <CR>')
      vim.keymap.set('x', '<Leader>*,', ':EasyAlign<CR>*,<CR>')
      vim.keymap.set('x', '<Leader>,',  ':EasyAlign ,<CR>')
      vim.keymap.set('x', '<Leader>:',  ':EasyAlign :<CR>')
      vim.keymap.set('x', '<Leader>=',  ':EasyAlign =<CR>')

      vim.cmd 'cabbrev a EasyAlign'
    end
  },
  {
    'kylechui/nvim-surround',
    opts = {}
  },
  {
    'kevinhwang91/nvim-hlslens',
    opts = {}
  },
  'machakann/vim-swap',
  'michaeljsmith/vim-indent-object',
  {
    'nvim-telescope/telescope.nvim',
    dependencies = 'nvim-lua/plenary.nvim',
    config = function()
      local builtin = require('telescope.builtin')

      vim.keymap.set('n', '<Leader><Leader>',  builtin.oldfiles, {})
      vim.keymap.set('n', '<Leader>fb',        builtin.buffers, {})
      vim.keymap.set('n', '<Leader>ff',        builtin.find_files, {})
      vim.keymap.set('n', '<Leader>fg',        builtin.live_grep, {})
      vim.keymap.set('n', '<Leader>fm',        builtin.marks, {})
      vim.keymap.set('n', '<Leader>fr',        builtin.resume, {})
      vim.keymap.set('n', '<Leader>ft',        builtin.treesitter, {})
      vim.keymap.set({'n', 'x'}, '<Leader>fc', builtin.command_history, {})

      vim.cmd 'cabbrev t Telescope'
    end
  },
  'mizlan/iswap.nvim',
  'rhysd/conflict-marker.vim',
  'rhysd/git-messenger.vim',
  'tpope/vim-commentary',
  'tpope/vim-eunuch',
  'tpope/vim-fugitive',
  'tpope/vim-rails',
  'tpope/vim-sleuth',
  'tpope/vim-unimpaired',
  'vim-ruby/vim-ruby',
  {
    'windwp/nvim-autopairs',
    opts = {
      check_ts = true
    }
  },
  'windwp/nvim-ts-autotag',
  'wsdjeg/vim-fetch'
}
