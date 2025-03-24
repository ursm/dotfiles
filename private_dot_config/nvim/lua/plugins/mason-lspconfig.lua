return {
  'williamboman/mason-lspconfig.nvim',

  dependencies = {
    {
      'williamboman/mason.nvim',
      opts = {}
    },
    'hrsh7th/cmp-nvim-lsp',
  },

  config = function()
    require('mason-lspconfig').setup {
      ensure_installed = {
        'ansiblels',
        'autotools_ls',
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

    local opt = {
      capabilities = require('cmp_nvim_lsp').default_capabilities(
        vim.lsp.protocol.make_client_capabilities()
      )
    }

    local lspconfig = require('lspconfig')

    require('mason-lspconfig').setup_handlers {
      function(server)
        if server == 'denols' then
          lspconfig.denols.setup(vim.tbl_extend('force', opt, {
            root_dir = lspconfig.util.root_pattern('deno.json', 'deno.jsonc')
          }))
        elseif server == 'lua_ls' then
          lspconfig.lua_ls.setup(vim.tbl_extend('force', opt, {
            settings = {
              Lua = {
                diagnostics = {
                  globals = {'vim'}
                }
              }
            }
          }))
        elseif server == 'tsserver' then
          lspconfig.tsserver.setup(vim.tbl_extend('force', opt, {
            root_dir = lspconfig.util.root_pattern('package.json'),
            single_file_support = false
          }))
        else
          lspconfig[server].setup(opt)
        end
      end
    }
  end
}
