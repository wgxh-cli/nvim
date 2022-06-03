local cmp = require("cmp")
local lspkind = require("lspkind")

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end
  },
  mapping = {
    ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<C-y>'] = cmp.config.disable,
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), 
    ['<Tab>'] = cmp.mapping(function (callback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        callback()
      end
    end),
    ['<S-Tab>'] = cmp.mapping(function (callback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        callback()
      end
    end)
  },
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "nvim_lua" },
    { name = "vsnip" },
    { name = "path" },
    { name = "buffer" },
    { name = "rg" }
  }),
  experimental = {
    ghost_text = true,
  },
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol_text',
    }),
  },
  cmp.setup.cmdline("/", {
    sources = {
      { name = "buffer" },
    },
  }),
})
