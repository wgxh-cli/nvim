local nl = require("null-ls")
local builtins = nl.builtins
local formatters = builtins.formatting
local cas = builtins.code_actions
local diagnostics = builtins.diagnostics

nl.setup({
  sources = {
    formatters.rustfmt,
  },
})
