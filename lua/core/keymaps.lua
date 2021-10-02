local noptions = { noremap = true, silent = true }

function nmap(a, b)
  vim.api.nvim_set_keymap('n', a, b, noptions)
end

nmap('<Space>', '<NOP>')
nmap('<Leader>w', ':wa<CR>')
nmap('<Leader>q', ':qa<CR>')
nmap('<Leader>r', ':so %<CR>')
nmap(']b', ':bn<CR>')
nmap('[b', ':bp<CR>')
nmap('-b', ':bd<CR>')
nmap('<C-h>', '<C-w><C-h>')
nmap('<C-j>', '<C-w><C-j>')
nmap('<C-k>', '<C-w><C-k>')
nmap('<C-l>', '<C-w><C-l>')
nmap('J', '}')
nmap('K', '{')
nmap('H', '$')
nmap('L', '^')
vim.api.nvim_set_keymap('i', '<Tab>', [[pumvisible() ? '<C-n>' : '<Tab>']] , {expr = true, noremap = true})
vim.api.nvim_set_keymap('i', '<S-Tab>', [[pumvisible() ? '<C-p>' : '<S-Tab>']] , {expr = true, noremap = true})

