return {
  'williamboman/mason-lspconfig.nvim',
  dependencies = {
    'williamboman/mason.nvim',
    opts = {}
  },
  opts = {
    ensure_installed = {
      'ansiblels',
      'bashls',
      'csharp_ls',
      'cssls',
      'denols',
      'dockerls',
      'docker_compose_language_service',
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
      'ruby_ls',
      'rust_analyzer',
      'sqlls',
      'svelte',
      'stimulus_ls',
      'taplo',
      'terraformls',
      'tsserver',
      'vimls',
      'vuels',
      'yamlls',
    }
  },
  config = function()
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
