local nest = require("nest")
local telescope = require("telescope")

telescope.setup({
  pickers = {
    find_files = {
      theme = "ivy",
    },
    git_files = {
      theme = "ivy",
    },
  },
})

nest.applyKeymaps({
  { "<leader>", {
    { "f", {
      { "f", "<cmd>Telescope find_files<cr>" },
      { "g", "<cmd>Telescope git_files<cr>" },
    }},
  }},
})
