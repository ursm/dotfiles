return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-nvim-lsp-signature-help',
  },
  config = function()
    local cmp = require('cmp')

    cmp.setup {
      sources = {
        { name = 'nvim_lsp' },
        { name = 'nvim_lsp_signature_help' },
      },

      mapping = cmp.mapping.preset.insert {
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-l>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>']  = cmp.mapping.confirm { select = true }
      },

      experimental = {
        ghost_text = true
      }
    }
  end
}
