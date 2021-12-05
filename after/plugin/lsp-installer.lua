local installer = require'nvim-lsp-installer'
local capabilities = require'cmp_nvim_lsp'.update_capabilities(vim.lsp.protocol.make_client_capabilities())

installer.on_server_ready(function(server)
	local opts = {
		on_attach = function()
			require'lsp_signature'.on_attach{
				bind = true,
				handler_opt = {
					border = 'single'
				}
			}
			require'illuminate'.on_attach(client)
			vim.api.nvim_command [[ hi def link LspReferenceText CursorLine ]]
			vim.api.nvim_command [[ hi def link LspReferenceWrite CursorLine ]]
			vim.api.nvim_command [[ hi def link LspReferenceRead CursorLine ]]
		end,
		capabilities = capabilities,
	}
	server:setup(opts)
end)