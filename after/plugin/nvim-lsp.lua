local servers = {
	"angularls",
	"clangd",
	"cssls",
	"dockerls",
	"diagnosticls",
	"eslint",
	"tsserver",
	"gopls",
	"html",
	"jsonls",
	"vimls",
	"tailwindcss",
	"rust_analyzer"
}

for index, ls in pairs(servers) do
	require'lspconfig'[ls].setup{}
end
