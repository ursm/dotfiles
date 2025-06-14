return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" },
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    opts = {
    }
  },
  {
    'Wansmer/treesj',
    opts = {
      use_default_keymaps = true
    }
  },
  {
    'alker0/chezmoi.vim',
    lazy = false,
    init = function()
      vim.g['chezmoi#use_tmp_buffer']  = true
      vim.g['chezmoi#source_dir_path'] = vim.env.HOME .. '/Repositories/github.com/ursm/dotfiles'
    end
  },
  'andreshazard/vim-freemarker',
  'andymass/vim-matchup',
  'dhruvasagar/vim-table-mode',
  'editorconfig/editorconfig-vim',
  {
    'folke/trouble.nvim',
    dependencies = 'kyazdani42/nvim-web-devicons',
    opts = {}
  },
  'github/copilot.vim',
  {
    'iamcco/markdown-preview.nvim',
    build = function()
      vim.fn['mkdp#util#install']()
    end
  },
  {
    'greggh/claude-code.nvim',
    dependencies = 'nvim-lua/plenary.nvim',
    opts = {}
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
    'kevinhwang91/nvim-hlslens',
    opts = {}
  },
  {
    'kiyoon/treesitter-indent-object.nvim',
    keys = {
      {
        'ai',
        function() require'treesitter_indent_object.textobj'.select_indent_outer() end,
        mode = {'x', 'o'},
        desc = 'Select context-aware indent (outer)'
      },
      {
        'aI',
        function() require'treesitter_indent_object.textobj'.select_indent_outer(true) end,
        mode = {'x', 'o'},
        desc = 'Select context-aware indent (outer, line-wise)'
      },
      {
        'ii',
        function() require'treesitter_indent_object.textobj'.select_indent_inner() end,
        mode = {'x', 'o'},
        desc = 'Select context-aware indent (inner, partial range)'
      },
      {
        'iI',
        function() require'treesitter_indent_object.textobj'.select_indent_inner(true, 'V') end,
        mode = {'x', 'o'},
        desc = 'Select context-aware indent (inner, entire range) in line-wise visual mode'
      }
    }
  },
  {
    'kylechui/nvim-surround',
    opts = {}
  },
  -- {
  --   'lukas-reineke/indent-blankline.nvim',
  --   main = 'ibl',
  --   opts = {}
  -- },
  'machakann/vim-swap',
  {
    'morhetz/gruvbox',
    config = function()
      vim.cmd 'colorscheme gruvbox'
    end
  },
  'mizlan/iswap.nvim',
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
  'rhysd/conflict-marker.vim',
  'rhysd/git-messenger.vim',
  {
    'stevearc/oil.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    opts = {}
  },
  'rlue/vim-barbaric',
  'slim-template/vim-slim',
  'thinca/vim-ambicmd',
  'thinca/vim-qfreplace',
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
