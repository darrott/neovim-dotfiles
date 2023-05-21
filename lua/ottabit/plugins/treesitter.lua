require "nvim-treesitter.configs".setup{
  ensure_installed = {
    "lua",
    "javascript",
    "php",
  },

  sync_install = false,

  highlight = {
    enable = true,
    disable = {},
  },

  indent = {
    enable = false,
    disable = {},
  }
}
