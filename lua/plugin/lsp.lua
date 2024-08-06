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
      local on_attach = function ()
        local wk = require("which-key")
        wk.add {
          { "J", function () vim.diagnostic.open_float() end, desc = "Open float menu" }
        }
      end

      --- @param name string
      --- @param opts table?
      local function setup_custom_ls(name, opts)
        local lsp_opts = {
          capabilities = capabilities,
          on_attach = on_attach,
        }
        local fopts = vim.tbl_deep_extend('force', opts or {}, lsp_opts);
        lspconfig[name].setup(fopts)
      end

      setup_custom_ls("lua_ls")
      setup_custom_ls("tsserver")
      setup_custom_ls("unocss")
      setup_custom_ls("volar")
      setup_custom_ls("clangd")
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
  },
  {
    "nvimdev/lspsaga.nvim",
    config = function ()
      require("lspsaga").setup {
      }
    end,
    event = "LspAttach",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    keys = {
      { "<leader>ca", ":Lspsaga code_action<CR>", desc = "Code actions", silent = true },
      { "gdd", ":Lspsaga peek_definition<CR>", desc = "Find definitions", silent = true },
      { "gsu", ":Lspsaga finder ref<CR>", desc = "Find usages", silent = true },
    },
  },
  {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
    keys = {
      { "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>", desc = "Toggle diagnostics" },
      { "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", desc = "Toggle diagnostics in this buffer" },
      { "<leader>cs", "<cmd>Trouble symbols toggle focus=false<CR>", desc = "Check symbols outline" },
      { "<leader>cl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", desc = "Lsp Refs / Defs" },
    },
  }
}
