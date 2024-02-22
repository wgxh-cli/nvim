return {
  {
    "folke/neodev.nvim",
    opts = {},
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "folke/neodev.nvim",
      {
        "mrcjkb/rustaceanvim",
        version = "^4",
        ft = { "rust" },
      },
    },
    config = function()
      local lsp = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local on_attach = function ()
        local wk = require("which-key")

        wk.register({
          ['<localleader>'] = {},
        })
      end

      lsp.zls.setup {
        capabilities = capabilities,
        on_attach = on_attach,
      }
      lsp.lua_ls.setup {
        capabilities = capabilities,
        on_attach = on_attach
      }
      lsp.nil_ls.setup {
        capabilities = capabilities,
        on_attach = on_attach,
      }
      lsp.clangd.setup {}
    end,
  },
  {
    "williamboman/mason.nvim",
    config = function ()
      require("mason").setup()
    end,
  },
  {
    "stevearc/aerial.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    config = function ()
      require("aerial").setup {
        on_attach = function ()
        end
      }
    end
  },
}
