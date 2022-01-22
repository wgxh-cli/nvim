local tsc = require("nvim-treesitter.configs")

tsc.setup({
  ensure_installed = { "lua", "rust", "c", "cpp", "vim" },
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
})
