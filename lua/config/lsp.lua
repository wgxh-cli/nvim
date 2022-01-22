local lsp = require("lspconfig")
local add_server = function(name)
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
  lsp[name].setup({
    capabilities = capabilities,
    on_attach = function()
    end,
  })
end

add_server("rust_analyzer")
add_server("clangd")
