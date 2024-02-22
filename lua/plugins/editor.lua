return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {},
  },
  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require("nvim-treesitter.configs").setup {
        modules = {},
        sync_install = false,
        ignore_install = {},
        auto_install = false,
        ensure_installed = { "lua" },
        highlight = { enable = true },
        indent = { enable = true },
      }
    end
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("neo-tree").setup {
        winbar = false,
        statusline = false,
      }
    end
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
    end
  },
  {
    "windwp/nvim-autopairs",
    config = function ()
      local utils = require("nvim-treesitter.ts_utils")
      local parsers = require("nvim-treesitter.parsers")
      local npairs = require("nvim-autopairs")
      local Rule = require("nvim-autopairs.rule")

      require("nvim-autopairs").setup {}

      local cmp_autopairs = require('nvim-autopairs.completion.cmp')
      local cmp = require('cmp')
      cmp.event:on(
        'confirm_done',
        cmp_autopairs.on_confirm_done()
      )

      npairs.add_rules({
        Rule("{", "},", { "lua" })
          :with_pair(function ()
            parsers.get_parser():parse()

            local node = utils.get_node_at_cursor()
            if node ~= nil and node:type() == 'table_constructor' then
              return true
            else
              return false
            end
          end)
      })
    end,
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function ()
      require("ibl").setup()
    end
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {
      label = {
        rainbow = {
          enabled = true,
        },
      },
      highlight = {
        backdrop = true,
        matches = true,
      },
    },
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function ()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {},
          ["core.concealer"] = {},
          ["core.dirman"] = {
            config = {
              workspaces = {
                notes = "~/documents/notes",
                demos = "~/documents/demos",
              },
            },
          },
          ["core.completion"] = {
            config = {
              engine = "nvim-cmp"
            },
          },
          ["core.mode"] = {},
          ["core.presenter"] = {
            config = {
              zen_mode = "zen-mode",
            },
          },
        },
      }
    end
  },
  {
    "folke/zen-mode.nvim",
    config = function ()
      require("zen-mode").setup {
      }
    end,
  },
}

