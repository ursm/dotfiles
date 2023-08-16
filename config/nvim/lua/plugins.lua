require('packer').startup(function(use)
  use {'AckslD/nvim-trevJ.lua'}
  use {'AndrewRadev/linediff.vim'}
  use {'EdenEast/nightfox.nvim'}
  use {'RRethy/nvim-treesitter-endwise'}
  use {'RRethy/nvim-treesitter-textsubjects'}
  use {'andymass/vim-matchup'}
  use {'chentoast/marks.nvim', config = function()
    require('marks').setup {
      builtin_marks = {'.', '<', '>', '^'}
    }
  end}
  use {'dhruvasagar/vim-table-mode'}
  use {'dmix/elvish.vim'}
  use {'editorconfig/editorconfig-vim'}
  use {'famiu/bufdelete.nvim'}
  use {'folke/trouble.nvim', requires = 'kyazdani42/nvim-web-devicons', config = function()
    require('trouble').setup {}
  end}
  use {'gabrielpoca/replacer.nvim'}
  use {'iamcco/markdown-preview.nvim', ft = {'markdown'}, run = function()
    vim.fn['mkdp#util#install']()
  end}
  use {'inkarkat/vim-AdvancedSorters', requires = 'inkarkat/vim-ingo-library'}
  use {'jghauser/mkdir.nvim'}
  use {'junegunn/vim-easy-align'}
  use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons', config = function()
    require('nvim-tree').setup {}
  end}
  use {'kylechui/nvim-surround', tag = '*', config = function()
    require('nvim-surround').setup {}
  end}
  use {'lukas-reineke/indent-blankline.nvim', config = function()
    require('indent_blankline').setup {
      show_current_context = true
    }
  end}
  use {'machakann/vim-swap'}
  use {'michaeljsmith/vim-indent-object'}
  use {'nvim-telescope/telescope-frecency.nvim', requires = 'kkharji/sqlite.lua', config = function()
    require('telescope').load_extension('frecency')
  end}
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build', config = function()
    require('telescope').load_extension('fzf')
  end}
  use {'nvim-telescope/telescope-live-grep-args.nvim', config = function()
    require('telescope').load_extension('live_grep_args')
  end}
  use {'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim'}
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', config = function()
    require('nvim-treesitter.configs').setup {
      ensure_installed = {
        'bash',
        'c_sharp',
        'css',
        'dockerfile',
        'gitattributes',
        'gitignore',
        'glimmer',
        'graphql',
        'html',
        'javascript',
        'json',
        'lua',
        'make',
        'markdown',
        'markdown_inline',
        'proto',
        'python',
        'regex',
        'ruby',
        'rust',
        'scss',
        'sparql',
        'sql',
        'svelte',
        'toml',
        'turtle',
        'typescript',
        'vim',
        'vue',
        -- 'yaml',
      },

      highlight = {
        enable = true
      },

      textsubjects = {
        enable         = true,
        prev_selection = ',',

        keymaps = {
          ['.']  = 'textsubjects-smart',
          [';']  = 'textsubjects-container-outer',
          ['i;'] = 'textsubjects-container-inner',
        }
      },

      indent = {
        enable = true
      },

      textobjects = {
        select = {
          enable    = true,
          lookahead = true,

          keymaps = {
            ['al'] = '@block.outer',
            ['il'] = '@block.inner',
            ['ac'] = '@class.outer',
            ['ic'] = '@class.inner',
            ['af'] = '@function.outer',
            ['if'] = '@function.inner',
          },

          selection_modes = {
            ['@parameter.outer'] = 'v',
            ['@function.outer']  = 'V',
            ['@class.outer']     = '<C-v>',
          }
        },

        swap = {
          enable = true,

          swap_next = {
            ['<Leader>a'] = '@parameter.inner',
          },

          swap_previous = {
            ['<Leader>A'] = '@parameter.inner',
          }
        },

        move = {
          enable = true,

          goto_next_start = {
            [']m'] = '@function.outer',
            [']]'] = '@class.outer',
          },

          goto_next_end = {
            [']M'] = '@function.outer',
            [']['] = '@class.outer',
          },

          goto_previous_start = {
            ['[m'] = '@function.outer',
            ['[['] = '@class.outer',
          },

          goto_previous_end = {
            ['[M'] = '@function.outer',
            ['[]'] = '@class.outer',
          },
        },

        lsp_interop = {
          enable = true,

          peek_definition_code = {
            ['<Leader>df'] = '@function.outer',
            ['<Leader>dF'] = '@class.outer',
          },
        }
      },

      matchup = {
        enable = true
      },

      endwise = {
        enable = true
      },

      autotag = {
        enable = true
      }
    }
  end}
  use {'nvim-treesitter/nvim-treesitter-textobjects'}
  use {'pocke/rbs.vim'}
  -- use {'rhysd/committia.vim'}
  use {'rhysd/conflict-marker.vim'}
  use {'rhysd/git-messenger.vim'}
  use {'slim-template/vim-slim'}
  use {'smjonas/inc-rename.nvim', config = function()
    require('inc_rename').setup {}
  end}
  use {'stevearc/aerial.nvim', config = function()
    require('aerial').setup {}
  end}
  use {'tpope/vim-commentary'}
  use {'tpope/vim-eunuch'}
  use {'tpope/vim-fugitive'}
  use {'tpope/vim-rails'}
  use {'tpope/vim-sleuth'}
  use {'tpope/vim-unimpaired'}
  use {'vim-ruby/vim-ruby'}
  use {'wbthomason/packer.nvim'}
  use {'williamboman/mason.nvim', 'williamboman/mason-lspconfig.nvim', 'neovim/nvim-lspconfig'}
  use {'windwp/nvim-autopairs', config = function()
    require('nvim-autopairs').setup {
      check_ts = true
    }
  end}
  use {'windwp/nvim-ts-autotag'}
  use {'wsdjeg/vim-fetch'}
end)

require('mason').setup {}

require('mason-lspconfig').setup {
  ensure_installed = {
    'ansiblels',
    'bashls',
    'csharp_ls',
    'cssls',
    'cucumber_language_server',
    'dockerls',
    'ember',
    'eslint',
    'gopls',
    'graphql',
    'html',
    'jdtls',
    'jsonls',
    'lemminx',
    'lua_ls',
    'marksman',
    'pylsp',
    'ruby_ls',
    'rust_analyzer',
    'sqlls',
    'svelte',
    'taplo',
    'terraformls',
    'tsserver',
    'vimls',
    'volar',
    'yamlls',
  }
}

local lspconfig = require('lspconfig')

lspconfig.ansiblels.setup {}
lspconfig.bashls.setup {}
lspconfig.csharp_ls.setup {}
lspconfig.cssls.setup {}
lspconfig.cucumber_language_server.setup {}
lspconfig.dockerls.setup {}
lspconfig.ember.setup {}
lspconfig.eslint.setup {}
lspconfig.gopls.setup {}
lspconfig.graphql.setup {}
lspconfig.html.setup {}
lspconfig.java_language_server.setup {}
lspconfig.jsonls.setup {}
lspconfig.lemminx.setup {}
lspconfig.marksman.setup {}
lspconfig.pylsp.setup {}
lspconfig.ruby_ls.setup {}
lspconfig.rust_analyzer.setup {}
lspconfig.sqlls.setup {}
lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = {'vim'}
      }
    }
  }
}
lspconfig.svelte.setup {}
lspconfig.syntax_tree.setup {}
lspconfig.taplo.setup {}
lspconfig.terraformls.setup {}
lspconfig.tsserver.setup {}
lspconfig.vimls.setup {}
lspconfig.volar.setup {}
lspconfig.yamlls.setup {}
