return {
  'williamboman/mason-lspconfig.nvim',

  dependencies = {
    {
      'williamboman/mason.nvim',
      opts = {}
    }
  },

  config = function()
    local lspconfig = require('lspconfig')

    vim.lsp.config('ruby_lsp', {
      init_options = {
        addonSettings = {
          ['Ruby LSP Rails'] = {
            enablePendingMigrationsPrompt = false
          }
        }
      }
    })

    vim.lsp.config('denols', {
      root_dir = lspconfig.util.root_pattern('deno.json', 'deno.jsonc')
    })

    vim.lsp.config('tsserver', {
      root_dir            = lspconfig.util.root_pattern('package.json'),
      single_file_support = false
    })

    vim.lsp.config('lua_ls', {
      settings = {
        Lua = {
          diagnostics = {
            globals = {'vim'}
          }
        }
      }
    })

    require('mason-lspconfig').setup {
      ensure_installed = {
        'ansiblels',
        'bashls',
        'clangd',
        'css_variables',
        'cssls',
        'denols',
        'docker_compose_language_service',
        'dockerls',
        'ember',
        'eslint',
        'glint',
        'gopls',
        'graphql',
        'html',
        'jdtls',
        'jsonls',
        'lemminx',
        'lua_ls',
        'marksman',
        'pylsp',
        'rubocop',
        'ruby_lsp',
        'rust_analyzer',
        'sqlls',
        'stimulus_ls',
        'taplo',
        'terraformls',
        'ts_ls',
        'vimls',
        'yamlls',
      }
    }

    require('mason-lspconfig').setup()
  end
}
