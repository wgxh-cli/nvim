local M = {}

M.datafile = vim.fn.stdpath('data') .. '/cloth.json'

if vim.fn.filereadable(M.datafile) == 0 then
  -- local res = vim.api.nvim_exec2("colorscheme", { output = true })
  -- INFO: I decided to use catppuccin latte as default theme
  vim.fn.writefile({ vim.fn.json_encode("catppuccin-latte") }, M.datafile)
end

local current_theme = vim.fn.json_decode(vim.fn.readfile(M.datafile))
vim.cmd("colorscheme " .. current_theme)

return M
