nmap <silent><leader>ca :Lspsaga code_action<CR>
vmap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>
nmap <silent>K :Lspsaga hover_doc<CR>
nmap <silent><C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
nmap <silent><C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>
nmap <silent>gr :Lspsaga rename<CR>
nmap <silent>gd :Lspsaga preview_definition<CR>
nmap <silent><leader>cd <cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>
nmap <silent><leader>cd :Lspsaga show_line_diagnostics<CR>
nmap <silent><leader>cc <cmd>lua require'lspsaga.diagnostic'.show_cursor_diagnostics()<CR>
nmap <silent>[e :Lspsaga diagnostic_jump_next<CR>
nmap <silent>]e :Lspsaga diagnostic_jump_prev<CR>
nmap <silent><C-\> :Lspsaga open_floaterm<CR>
tmap <silent><C-\> <C-\><C-n>:Lspsaga close_floaterm<CR>
