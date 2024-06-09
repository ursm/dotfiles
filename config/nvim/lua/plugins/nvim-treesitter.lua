return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',

  dependencies = {
    'JoosepAlviste/nvim-ts-context-commentstring',
    'RRethy/nvim-treesitter-endwise',
    'andymass/vim-matchup',
    -- 'nvim-treesitter/nvim-treesitter-context',
    'nvim-treesitter/nvim-treesitter-refactor',
    'nvim-treesitter/nvim-treesitter-textobjects',
    'windwp/nvim-ts-autotag',
  },

  config = function()
    require('nvim-treesitter.configs').setup {
      ensure_installed = {
        'bash',
        'c',
        'cpp',
        'css',
        'csv',
        'diff',
        'dockerfile',
        'git_config',
        'git_rebase',
        'gitattributes',
        'gitcommit',
        'gitignore',
        'glimmer',
        'go',
        'gomod',
        'gpg',
        'graphql',
        'html',
        'javascript',
        'jq',
        'jsdoc',
        'json',
        'json5',
        'jsonc',
        'lua',
        'make',
        'markdown',
        'markdown_inline',
        'mermaid',
        'proto',
        'python',
        'rbs',
        'ruby',
        'rust',
        'scss',
        'sparql',
        'sql',
        'toml',
        'tsv',
        'tsx',
        'turtle',
        'typescript',
        'vim',
        'xml',
        'yaml',
      },

      sync_install = true,

      autotag = {
        enable = true
      },

      endwise = {
        enable = true
      },

      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
      },

      incremental_selection = {
        enable = true,

        keymaps = {
          init_selection = 'gnn',
          node_incremental = 'grn',
          scope_incremental = 'grc',
          node_decremental = 'grm'
        }
      },

      indent = {
        enable = false
      },

      matchup = {
        enable = true
      },

      refactor = {
        highlight_definitions = {
          enable = true
        },

        highlight_current_scope = {
          enable = false
        },

        smart_rename = {
          enable = true,

          keymaps = {
            smart_rename = 'grr'
          }
        },

        navigation = {
          enable = true,

          keymaps = {
            goto_definition = 'gnd',
            list_definitions = 'gnD',
            list_definitions_toc = 'gO',
            goto_next_usage = '<a-*>',
            goto_previous_usage = '<a-#>'
          }
        }
      }
    }
  end
}
