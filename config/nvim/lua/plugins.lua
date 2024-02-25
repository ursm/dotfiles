return {
  {
    'EdenEast/nightfox.nvim',
    config = function()
      vim.cmd 'colorscheme nightfox'
    end
  },
  {
    'Wansmer/treesj',
    opts = {}
  },
  'andymass/vim-matchup',
  'dhruvasagar/vim-table-mode',
  'editorconfig/editorconfig-vim',
  'famiu/bufdelete.nvim',
  {
    'gabrielpoca/replacer.nvim',
    config = function()
      vim.keymap.set('n', '<Space>r', require('replacer').run)
    end
  },
  'github/copilot.vim',
  {
    'iamcco/markdown-preview.nvim',
    build = function()
      vim.fn['mkdp#util#install']()
    end
  },
  'jghauser/mkdir.nvim',
  {
    'junegunn/vim-easy-align',
    config = function()
      vim.cmd 'cabbrev ea EasyAlign'

      vim.keymap.set('x', '<Space>:', ':EasyAlign :<CR>')
      vim.keymap.set('x', '<Space>=', ':EasyAlign =<CR>')
    end
  },
  {
    'kana/vim-textobj-indent',
    dependencies = 'kana/vim-textobj-user'
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
  {
    'nvim-telescope/telescope.nvim',
    dependencies = 'nvim-lua/plenary.nvim',
    config = function()
      vim.cmd 'cabbrev t Telescope'

      local builtin = require('telescope.builtin')

      vim.keymap.set('n', '<Space>fb', builtin.buffers)
      vim.keymap.set('n', '<Space>ff', builtin.find_files)
      vim.keymap.set('n', '<Space>fm', builtin.marks)
      vim.keymap.set('n', '<Space>fo', builtin.oldfiles)
      vim.keymap.set('n', '<Space>fr', builtin.resume)
      vim.keymap.set('n', '<Space>ft', builtin.treesitter)
      vim.keymap.set({ 'n', 'x' }, '<Space>fc', require('telescope.builtin').command_history)
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
  'rlue/vim-barbaric',
  'slim-template/vim-slim',
  'tpope/vim-commentary',
  'tpope/vim-eunuch',
  'tpope/vim-fugitive',
  'tpope/vim-rails',
  'tpope/vim-sleuth',
  'tpope/vim-unimpaired',
  'varnishcache-friends/vim-varnish',
  'windwp/nvim-ts-autotag',
  'wsdjeg/vim-fetch'
}
