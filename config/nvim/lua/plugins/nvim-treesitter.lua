return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  opts = {
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

    sync_install = false,

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
      enable = false
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
}
