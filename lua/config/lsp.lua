local lsp = require("lspconfig")
local wk = require("which-key")
local default_diagnostic_handler = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    update_in_insert = true,
  }
)
local handlers = {
  ["textDocument/publishDiagnostics"] = function(err, method, result, client_id, bufnr, config)
    default_diagnostic_handler(err, method, result, cilent_id, bufnr, config)
    vim.diagnostic.setqflist({
      open = false,
    })
  end,
  ["textDocument/references"] = vim.lsp.with(
    vim.lsp.handlers["textDocument/references"], {
      loclist = false,
    }
  )
}
local on_attach = function()
  vim.g.maplocalleader = ","
  local buf = vim.lsp.buf
  wk.register({
    ca = { buf.code_action, "Code Actions" },
    g = {
      d = {
        c = { buf.declaration, "Go to declarations" },
        f = { buf.definetion, "Go to definitions" }
      },
      i = { buf.implementation, "Go to implementaions" },
      r = { buf.reference, "Go to references" },
    },
    r = { buf.rename, "Rename symbol" }
  }, { prefix = "<LocalLeader>" })
  require("lsp_signature").on_attach({})
end

local add_server = function(name)
  lsp[name].setup({
    on_attach = on_attach,
    handlers = handlers,
  })
end

lsp.rust_analyzer.setup({
  on_attach = on_attach,
  handlers = handlers,
  settings = {
    ["rust-analyzer"] = {
      assist = {
        importGranularity = "module",
        importPrefix = "self",
      },
      cargo = {
        loadOutDirsFromCheck = true,
      },
      procMacro = {
        enable = true,
      },
      checkOnSave = {
        command = "clippy",
      },
    },
  },
})
add_server("clangd")
add_server("jsonls")
add_server("tsserver")
add_server("hls")

return {
  on_attach = on_attach,
}
