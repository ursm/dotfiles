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
      'yaml',
    },

    sync_install = false,

    highlight = {
      enable = true
    },

    indent = {
      enable = false
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
