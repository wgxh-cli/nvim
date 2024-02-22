local mapping = require("utils")

local telescope_opt = require("telescope.themes").get_ivy({})
function with_telescope(picker)
  return function()
    require("telescope.builtin")[picker](telescope_opt)
  end
end

mapping({
  ["<Escape>"] = { "<cmd>noh<CR>", "Clear search highlight" },

  ["<leader>"] = {
    s = { "<cmd>w<CR>", "Save file" },
    q = { "<cmd>q<CR>", "Quit file" },

    -- For the most comfortable keymap, the three classes of map uses the most common-used keys as prefix
    w = {
      name = "Operate windows",
      h = { "<C-w>h", "Window left" },
      j = { "<C-w>j", "Window down" },
      k = { "<C-w>k", "Window up" },
      l = { "<C-w>l", "Window right" },
    },

    ["<Tab>"] = {
      name = "Operate buffers",
      l = { "<cmd>bn<CR>", "Next buffer" },
      h = { "<cmd>bp<CR>", "Prev buffer" },
      d = { "<cmd>bd<CR>", "Delete buffer" },
    },

    e = {
      name = "File explorer(neo-tree)",
      f = { "<cmd>Neotree filesystem<CR>", "Open file tree in current dir" },
    },

    f = {
      name = "Search with telescope",
      f = { with_telescope("find_files"), "Find files" },
    },
  },
})
