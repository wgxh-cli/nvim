return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    -- init = function ()
    --   vim.cmd [[ colorscheme catppuccin ]]
    -- end,
    opts = {
      flavour = "latte"
    }
  },
  {
    "folke/noice.nvim",
    lazy = false,
    opts = {
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
        },
      },
      presets = {
        bottom_search = true,
        command_palette = true,
        long_message_to_split = true,
        inc_rename = false,
        lsp_doc_border = false,
      },
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function ()
      require("dashboard").setup {
        theme = "hyper",
      }
    end,
    dependencies = {
      { "nvim-tree/nvim-web-devicons" }
    },
  }
}
