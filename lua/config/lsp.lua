local lsp = require("lspconfig")
local wk = require("which-key")
local add_server = function(name)
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
    end,
    handlers = {
      ["textDocument/publishDiagnostics"] = vim.lsp.with(
        vim.lsp.diagnostic.on_publish_diagnostics, {
          update_in_insert = true,
        }
      ),
      ["textDocument/references"] = vim.lsp.with(
        vim.lsp.handlers["textDocument/references"], {
          loclist = false,
        }
      )
    }
  })
end

add_server("rust_analyzer")
add_server("clangd")
