return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "ahmedkhalf/project.nvim",
      "nvim-telescope/telescope-frecency.nvim",
    },
    cmds = { "Telescope" },
    config = function ()
      local wk = require("which-key")

      --- @param opts table?
      local function cloth_switch_theme(opts)
        local pickers = require("telescope.pickers")
        local finders = require("telescope.finders")
        local conf = require("telescope.config").values
        local actions = require("telescope.actions")
        local actions_state = require("telescope.actions.state")
        opts = opts or {}

        pickers.new(opts, {
          prompt_title = "Cloth theme picker",
          finder = finders.new_table {
            results = vim.fn.getcompletion("", "color")
          },
          sorter = conf.generic_sorter(opts),
          attach_mappings = function(bufnr, maps)
            actions.select_default:replace(function ()
              actions.close(bufnr)
              local datafile = require("config.colorscheme").datafile
              local switched = actions_state.get_selected_entry()[1]
              vim.fn.writefile({ vim.fn.json_encode(switched) }, datafile)
              vim.cmd("colorscheme " .. switched)
            end)

            return true
          end
        }):find()
      end

      require("telescope").load_extension("projects")
      require("telescope").load_extension("frecency")

      wk.add {
        { "<leader>th", function () cloth_switch_theme() end, desc = "Switch theme" }
      }
    end,
    keys = {
      { "<leader>fd", function () require("telescope.builtin").fd() end, desc = "Find file" },
      { "<leader>ff", function () require("telescope.builtin").find_files() end, desc = "Find file" },
      { "<leader>fs", function () require("telescope.builtin").builtin() end, desc = "Use builtin finder" },
      { "<leader>fp", function () require("telescope").extensions.projects.projects {} end, desc = "Use builtin finder" },
      { "<leader>fr", "<cmd>Telescope frecency<CR>", desc = "Find recent entries" },
      { "<leader>th" }
    },
  }
}
