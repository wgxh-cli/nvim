return {
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    lazy = false,
    version = "*",
    opts = {
      load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {},
        ["core.dirman"] = {
          config = {
            workspaces = {
              notes = "~/notes",
            },
            default_workspace = "notes",
          }
        },
        ["core.neorgcmd"] = {},
        ["core.autocommands"] = {},
        ["core.keybinds"] = {
          config = {
            default_keybinds = true,
          }
        },
        ["core.latex.renderer"] = {
          config = {
            render_on_enter = true,
          }
        }
      },
    },
    config = function (_, opts)
      require("neorg").setup(opts)

      vim.wo.conceallevel = 2
      vim.wo.foldlevel = 99
    end,
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-treesitter/nvim-treesitter" },
      { "3rd/image.nvim" },
    },
  }
}
