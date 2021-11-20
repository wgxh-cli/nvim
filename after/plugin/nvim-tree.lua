vim.g.nvim_tree_respect_buf_cwd = 1

require'nvim-tree'.setup {
	ignore_ft_on_setup = {
		'.git',
	},
	diagnostics = {
		enable = true
	},
	filters = {
		dotfiles = true,
		custom = {
			'.git',
			'node_modules'
		}
	},
	view = {
		side = 'right',
		width = 40,
		auto_resize = true
	},
	update_cwd = true,
	update_focused_file = {
		enable = true,
		update_cwd = true,
	}
}
