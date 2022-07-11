local wk = require("which-key")

wk.register({
  j = {
    name = "Jump anywhere",
    i = { "<cmd>Pounce<CR>", "Jump by one characater" },
    r = { "<cmd>PounceRepeat<CR>", "Jump by two characters" },
  },
}, { prefix = '<Leader>' })
