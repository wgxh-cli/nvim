return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "ahmedkhalf/project.nvim",
    },
    cmds = { "Telescope" },
    config = function ()
      require("telescope").load_extension("projects")
    end,
    keys = {
      { "<leader>fd", require("telescope.builtin").fd, desc = "Find file" },
      { "<leader>ff", require("telescope.builtin").find_files, desc = "Find file" },
      { "<leader>fs", require("telescope.builtin").builtin, desc = "Use builtin finder" },
      { "<leader>fp", function () require("telescope").extensions.projects.projects {} end, desc = "Use builtin finder" },
    },
  }
}
