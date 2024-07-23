return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "lua" },
      highlight = {
        enable = true,
      }
    },
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {
      label = {
        style = "inline",
      },
      rainbow = {
        enabled = true,
      },
      modes = {
        treesitter = {
          highlight = {
            backdrop = true,
            matches = true,
          },
        },
      },
    },
    keys = {
      { "s", mode = { "n", "v", "o" }, function() require("flash").jump() end, desc = "Flash jump" },
      { "S", mode = { "n", "v", "o" }, function() require("flash").treesitter() end, desc = "Flash jump" },
    },
  },
  {
    "folke/todo-comments.nvim",
    opts = {},
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function ()
      local cmp_autopairs = require('nvim-autopairs.completion.cmp')
      local cmp = require('cmp')
      cmp.event:on(
        'confirm_done',
        cmp_autopairs.on_confirm_done()
      )
      require("nvim-autopairs").setup {
        check_ts = true,
      }
    end
  },
  {
    'echasnovski/mini.files',
    version = '*',
    keys = {
      { "<leader>ea", function () MiniFiles.open() end, desc = "File exploring via mini.files" }
    },
    opts = {
    },
  },
  {
    "ahmedkhalf/project.nvim",
    config = function ()
      require("project_nvim").setup {
        exclude_dirs = { "~/.local", "~/.cargo", "~/Downloads" },
      }
    end
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {},
  }
}
