local lsp = require("lspconfig")
local wk = require("which-key")
local default_diagnostic_handler = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    update_in_insert = true,
  }
)

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
local add_server = function(name, options)
  lsp[name].setup({
    on_attach = function()
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
    end,
    handlers = {
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
    },
    settings = options,
  })
end

add_server("rust_analyzer", {
  ["rust_analyzer"] = {
    checkOnSave = {
      command = "clippy",
    },
  },
})
add_server("clangd")
add_server("jsonls")
add_server("tsserver")

return {
  on_attach = on_attach,
}
