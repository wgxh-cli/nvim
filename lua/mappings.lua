local wk = require("which-key")
vim.g.mapleader = " "

wk.register({
  ["<leader>"] = {
    q = { "<cmd>q<cr>", "Quit file" },
    s = { "<cmd>w<cr>", "Save file" },
    b = {
      name = "Buffers",
      j = { "<cmd>bnext<cr>", "Next buffer" },
      k = { "<cmd>bprev<cr>", "Previous buffer" },
      d = { "<cmd>bdelete<cr>", "Delete buffer" },
    },
    w = {
      name = "Windows",
      h = { "<C-w><C-h>", "Left window" },
      j = { "<C-w><C-j>", "Bottom window" },
      k = { "<C-w><C-k>", "Top window" },
      l = { "<C-w><C-l>", "Right window" },
    }
  },
})
