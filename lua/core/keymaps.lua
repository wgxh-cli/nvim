local noptions = { noremap = true, silent = true }

function nmap(a, b)
  vim.api.nvim_set_keymap('n', a, b, noptions)
end

nmap('<Space>', '<NOP>')
nmap('<Leader>w', ':wa<CR>')
nmap('<Leader>q', ':qa<CR>')
nmap(']b', ':bn<CR>')
nmap('[b', ':bp<CR>')
nmap('-b', ':bd<CR>')
nmap('<C-h>', '<C-w><C-h>')
nmap('<C-j>', '<C-w><C-j>')
nmap('<C-k>', '<C-w><C-k>')
nmap('<C-l>', '<C-w><C-l>')
