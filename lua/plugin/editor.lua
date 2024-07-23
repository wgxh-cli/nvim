return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "lua" },
      auto_install = true,
      highlight = {
        enable = true,
        addtional_vim_regex_highlighting = false,
      },
    },
    config = function (_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
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
  },
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    cmds = { "ToggleTerm", "TermExec" },
    config = function ()
      local wk = require("which-key")

      require("toggleterm").setup {
        winbar = {
          enabled = true,
        }
      }

      local Terminal = require("toggleterm.terminal").Terminal
      local lazygit = Terminal:new({
        cmd = "lazygit",
        direction = "float",
        hidden = true,
        display_name = "Lazygit",
        on_open = function (term)
          vim.cmd("startinsert!")
          vim.api.nvim_buf_set_keymap(term.bufnr, "i", "q", "<cmd>close<CR>", { noremap = true, silent = true })
        end
      })
      local function open_lazygit()
        lazygit:toggle()
      end

      local bash = Terminal:new({
        cmd = "bash",
        hidden = true,
        direction = "float",
        display_name = "bash",
        on_open = function(term)
          vim.cmd("startinsert!")
        end
      })
      local function open_bash()
        bash:toggle()
      end

      wk.add({
        { "<leader>tg", open_lazygit, desc = "Open lazygit" },
        { "<leader>tc", open_bash, desc = "Open a new floating terminal with `bash` as its shell" },
      })
    end,
    keys = {
      { "<esc>", [[<C-\><C-n>]], mode = "t" },
      { "<leader>tg", desc = "Open lazygit" },
      { "<leader>tc", desc = "Open a new floating terminal with `bash` as its shell" }
    },
  },
}
