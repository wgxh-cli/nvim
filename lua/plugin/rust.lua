return {
  {
    "mrcjkb/rustaceanvim",
    version = "^4",
    lazy = false,
    config = function ()
      local wk = require("which-key")
    end
  },
  {
    "saecki/crates.nvim",
    config = function ()
      require("crates").setup {
        lsp = {
          enabled = true,
          actions = true,
          completion = true,
          hover = true,
        },
        completion = {
          cmp = {
            enabled = true,
          },
        },
      }
    end
  }
}
