local cmp = require'cmp'
local lspkind = require'lspkind'

cmp.setup {
	snippet = {
		expand = function(args)
			require'snippy'.expand_snippet(args.body)
		end
	},
	mapping = {
		['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item({
			behavior = cmp.SelectBehavior.Insert,
		})),
		['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item({
			behavior = cmp.SelectBehavior.Insert,
		})),
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<CR>'] = cmp.mapping.confirm({ select = false }),
	},
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'buffer' },
		{ name = 'path' },
		{ name = 'cmp_tabnine' },
		{ name = 'snippy' },
	}),
  formatting = {
    format = lspkind.cmp_format({with_text = false, maxwidth = 50})
  },
  cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
  }),
  cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  }),
}
