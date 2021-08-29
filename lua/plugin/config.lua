--- Some useful functions.
local nopts = { noremap = true, silent = true }
function nmap(a, b)
  vim.api.nvim_set_keymap('n', a, b, nopts)
end

--- packer.nvim
nmap('<Leader>pi', ':PackerInstall<CR>')
nmap('<Leader>pu', ':PackerUpdate<CR>')

--- nvim-treesitter
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  highlight = {
    enable = true,
  }
}

--- vscode.nvim
vim.g.vscode_style = "dark"
vim.cmd'colorscheme vscode'

--- nvim-tree.lua
nmap('<Leader>e', ':NvimTreeToggle<CR>')

--- which-key.nvim
require("which-key").setup {}

--- nvim-cmp
local cmp = require'cmp'
cmp.setup {
  snippet = {
    expand = function(args)
      vim.fn['vsnip#anonymous'](args.body)
    end
  },
  mapping = {
    -- ['<Tab>'] = cmp.mapping.next_item(),
    -- ['<S-Tab>'] = cmp.mapping.prev_item(),
    -- ['<C-d>'] = cmp.mapping.scroll(-4),
    -- ['<C-f>'] = cmp.mapping.scroll(4),
    -- ['<C-p>'] = cmp.mapping.complete(),
    ['<C-z>'] = cmp.mapping.close(),
    ['<C-y>'] = cmp.mapping.confirm()
  },
  sources = {
    { name = 'buffer' },
    { name = "nvim_lsp" },
  },
  completion = {
    completeopt = 'menu,menuone,noinsert',
  },
  formatting = {
    format = function(entry, vim_item)
      vim_item.menu = ({
        nvim_lsp = '',
        buffer   = '',
      })[entry.source.name]
      vim_item.kind = ({
        Text          = '',
        Method        = '',
        Function      = '',
        Constructor   = '',
        Field         = '',
        Variable      = '',
        Class         = '',
        Interface     = 'ﰮ',
        Module        = '',
        Property      = '',
        Unit          = '',
        Value         = '',
        Enum          = '',
        Keyword       = '',
        Snippet       = '﬌',
        Color         = '',
        File          = '',
        Reference     = '',
        Folder        = '',
        EnumMember    = '',
        Constant      = '',
        Struct        = '',
        Event         = '',
        Operator      = 'ﬦ',
        TypeParameter = '',
      })[vim_item.kind]
      return vim_item
    end
  },
}

--- fzf & fzf.vim
nmap('<C-p>', ':Files<CR>')

--- bufferline.nvim
require("bufferline").setup {}

--- nvim-autopairs
require'nvim-autopairs'.setup {}
require("nvim-autopairs.completion.cmp").setup{
  map_cr = true,
  map_complete = true,
  auto_select = true
}

--- vista.vim
nmap('<Leader>tt', ':Vista<CR>')
