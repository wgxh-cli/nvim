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
	}
}
