local servers = {
	"angularls",
	"clangd",
	"cssls",
	"dockerls",
	"diagnosticls",
	"tsserver",
	"gopls",
	"html",
	"jsonls",
	"vimls",
	"rust_analyzer"
}

local capabilities = require'cmp_nvim_lsp'.update_capabilities(vim.lsp.protocol.make_client_capabilities())

for index, ls in pairs(servers) do
	require'lspconfig'[ls].setup{
		on_attach = function(client, bufnr)
			require'lsp_signature'.on_attach{
				bind = true,
				handler_opt = {
					border = 'single'
				}
			}
		end,
		capabilities = capabilities,
	}
end
