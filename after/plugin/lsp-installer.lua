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
		end,
		capabilities = capabilities,
	}
	server:setup(opts)
end)
