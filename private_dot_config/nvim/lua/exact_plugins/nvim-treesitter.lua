return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'main',
  build = ':TSUpdate',

  config = function()
    require('nvim-treesitter').setup {}

    local ensure_installed = {
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
      'kdl',
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
      'tera',
      'toml',
      'tsv',
      'tsx',
      'turtle',
      'typescript',
      'vim',
      'xml',
      'yaml',
    }

    local installed = require('nvim-treesitter').get_installed()

    local to_install = vim.iter(ensure_installed)
      :filter(function(p) return not vim.tbl_contains(installed, p) end)
      :totable()

    if #to_install > 0 then
      require('nvim-treesitter').install(to_install)
    end

    vim.api.nvim_create_autocmd('FileType', {
      callback = function(args)
        local lang = vim.treesitter.language.get_lang(args.match)

        if lang and pcall(vim.treesitter.start, args.buf, lang) then
          vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
          vim.wo[0][0].foldmethod = 'expr'
        end
      end,
    })
  end
}
