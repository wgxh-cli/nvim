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
      require("telescope").load_extension("projects")
      require("telescope").load_extension("frecency")
    end,
    keys = {
      { "<leader>fd", function () require("telescope.builtin").fd() end, desc = "Find file" },
      { "<leader>ff", function () require("telescope.builtin").find_files() end, desc = "Find file" },
      { "<leader>fs", function () require("telescope.builtin").builtin() end, desc = "Use builtin finder" },
      { "<leader>fp", function () require("telescope").extensions.projects.projects {} end, desc = "Use builtin finder" },
      { "<leader>fr", "<cmd>Telescope frecency<CR>", desc = "Find recent entries" }
    },
  }
}
