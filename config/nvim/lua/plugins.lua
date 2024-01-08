return {
  {
    'David-Kunz/treesitter-unit',
    config = function()
      vim.keymap.set('x', 'iu', ':lua require"treesitter-unit".select()<CR>')
      vim.keymap.set('x', 'au', ':lua require"treesitter-unit".select(true)<CR>')
      vim.keymap.set('o', 'iu', ':<C-u>lua require"treesitter-unit".select()<CR>')
      vim.keymap.set('o', 'au', ':<C-u>lua require"treesitter-unit".select(true)<CR>')
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
  'evanleck/vim-svelte',
  'famiu/bufdelete.nvim',
  {
    'folke/trouble.nvim',
    dependencies = 'kyazdani42/nvim-web-devicons',
    opts = {}
  },
  {
    'gabrielpoca/replacer.nvim',
    config = function()
      vim.keymap.set('n', '<Space>r', require('replacer').run, { silent = true })
    end
  },
  {
    'gbprod/substitute.nvim',
    opts = {},
    config = function()
      vim.keymap.set('n', 's',  require('substitute').operator)
      vim.keymap.set('n', 'ss', require('substitute').line)
      vim.keymap.set('n', 'S',  require('substitute').eol)
      vim.keymap.set('x', 's',  require('substitute').visual)

      vim.keymap.set('n', '<Space>s',  require('substitute.range').operator)
      vim.keymap.set('x', '<Space>s',  require('substitute.range').visual)
      vim.keymap.set('n', '<Space>ss', require('substitute.range').word)

      vim.keymap.set('n', 'sx',  require('substitute.exchange').operator)
      vim.keymap.set('n', 'sxx', require('substitute.exchange').line)
      vim.keymap.set('x', 'X',   require('substitute.exchange').visual)
      vim.keymap.set('n', 'sxc', require('substitute.exchange').cancel)
    end
  },
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
      vim.keymap.set({ 'n', 'x', 'o' }, '<Space>f',  '<Plug>(leap-forward-to)')
      vim.keymap.set({ 'n', 'x', 'o' }, '<Space>F',  '<Plug>(leap-forward-till)')
      vim.keymap.set({ 'n', 'x', 'o' }, '<Space>t',  '<Plug>(leap-backward-to)')
      vim.keymap.set({ 'n', 'x', 'o' }, '<Space>T',  '<Plug>(leap-badkward-till)')
      vim.keymap.set({ 'n', 'x', 'o' }, '<Space>w',  '<Plug>(leap-from-window)')
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
  'joukevandermaas/vim-ember-hbs',
  {
    'junegunn/vim-easy-align',
    config = function()
      vim.cmd 'cabbrev ea EasyAlign'
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
      vim.cmd 'cabbrev t Telescope'

      vim.keymap.set('n', '<Space><Space>',    require('telescope.builtin').oldfiles, {})
      vim.keymap.set({ 'n', 'x' }, '<Space>c', require('telescope.builtin').command_history, {})
    end
  },
  'mizlan/iswap.nvim',
  'rhysd/conflict-marker.vim',
  'rhysd/git-messenger.vim',
  {
    'stevearc/oil.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    opts = {}
  },
  'tpope/vim-commentary',
  'tpope/vim-eunuch',
  'tpope/vim-fugitive',
  'tpope/vim-rails',
  'tpope/vim-sleuth',
  'tpope/vim-unimpaired',
  'varnishcache-friends/vim-varnish',
  'vim-ruby/vim-ruby',
  -- {
  --   'windwp/nvim-autopairs',
  --   opts = {
  --     check_ts = true
  --   }
  -- },
  'windwp/nvim-ts-autotag',
  'wsdjeg/vim-fetch'
}
