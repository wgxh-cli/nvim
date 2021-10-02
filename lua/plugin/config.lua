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
  },
  autotag = {
    enable = true,
  },
  indent = {
    enable = true,
  },
}

--- vscode.nvim
vim.g.vscode_style = "dark"

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
    ['<C-z>'] = cmp.mapping.close(),
    ['<C-y>'] = cmp.mapping.confirm()
  },
  sources = {
    { name = 'buffer' },
    { name = "nvim_lsp" },
    { name = 'orgmode' },
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

--- minimap.vim
vim.g.minimap_auto_start = 0
vim.g.minimap_auto_start_win_enter = 1

--- indent-blankline.nvim
vim.opt.listchars = {
  space = "⋅",
  eol = "↴",
}

require("indent_blankline").setup {
  show_end_of_line = true,
}

--- lsp_signature.nvim
require'lsp_signature'.setup{
  bind = true,
}

--- toggleterm.nvim
require'toggleterm'.setup{
  open_mapping = [[<C-\>]],
  direction = 'horizontal',
  close_on_exit = true,
}
function _G.set_terminal_keymaps()
  vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], nopts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], nopts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], nopts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], nopts)
end
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

--- orgmode.nvim
require'orgmode'.setup{
  org_agenda_files = { '~/Documents/**/*' },
  org_default_notes_file = '~/Documents/index.org',
}

--- circles.nvim
require"circles".setup{
  icons = {
    empty = "",
    filled = "",
    lsp_prefix = ""
  },
  lsp = true
}


vim.api.nvim_command('colors gruvbox-flat')
