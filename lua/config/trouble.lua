local wk = require("which-key")

require("trouble").setup {
  auto_open = true,
  auto_close = true,
}

wk.register({
  o = { "<cmd>Trouble<CR>", "Open Diagnostic List" },
  t = { "<cmd>TroubleToggle<CR>", "Toggle Diagnostic List" },
  c = { "<cmd>TroubleClose<CR>", "Close Diagnostic List" },
}, { prefix = "<Leader>t" })
