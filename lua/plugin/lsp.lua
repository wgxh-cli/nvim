return {
  {
    "williamboman/mason.nvim",
    opts = {},
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "lua_ls" },
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup {
        capabilities = capabilities,
      }
    end
  },
  {
    "folke/lazydev.nvim",
    dependencies = {
      { "hrsh7th/nvim-cmp" },
      { "neovim/nvim-lspconfig" },
    },
    ft = "lua",
    opts = {
      library = {
        "lazy.nvim",
      },
    },
  }
}
