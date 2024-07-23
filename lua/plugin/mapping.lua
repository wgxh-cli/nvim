return {
  {
    "folke/which-key.nvim",
    lazy = false,
    keys = {
      { "<leader>s", ":w<CR>", silent = true },
      { "<leader>q", ":q<CR>", silent = true },
      { "<leader>wh", "<C-w>h", silent = true },
      { "<leader>wj", "<C-w>j", silent = true },
      { "<leader>wk", "<C-w>k", silent = true },
      { "<leader>wl", "<C-w>l", silent = true },
      { "<leader><tab>h", ":bprev<CR>", silent = true },
      { "<leader><tab>l", ":bnext<CR>", silent = true },
      { "<leader><tab>d", ":bdelete<CR>", silent = true },
      { "<esc>", ":noh<CR>", silent = true },
    },
  },
}
