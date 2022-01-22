local nest = require("nest")

require("nvim-tree").setup({
  diagnostics = {
    enable = true,
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  filters = {
    dotfiles = true,
  },
  view = {
    width = 30,
    auto_resize = true,
    number = true,
    relativenumber = true,
    signcolumn = "number",
  },
})

nest.applyKeymaps({
  { "<leader>", {
    { "e", {
      { "o", "<cmd>NvimTreeOpen<cr>" },
      { "c", "<cmd>NvimTreeClose<cr>" },
      { "f", "<cmd>NvimTreeFocus<cr>" },
    }},
  }},
})
