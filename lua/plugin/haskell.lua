return {
  {
    "mrcjkb/haskell-tools.nvim",
    version = "^3",
    lazy = false,
    config = function ()
      vim.g.haskell_tools = {
        hls = {
          on_attach = require("plugin.lsp").on_attach
        }
      }
    end
  }
}
