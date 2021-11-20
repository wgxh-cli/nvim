local cmp = require'cmp'

cmp.setup {
	mapping = {
		['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item({
			behavior = cmp.SelectBehavior.Insert,
		})),
		['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item({
			behavior = cmp.SelectBehavior.Insert,
		})),
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<CR>'] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Replace,
			select = true,
		}),
	},
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'buffer' },
		{ name = 'path' },
		{ name = 'cmp_tabnine' }
	}),
}
