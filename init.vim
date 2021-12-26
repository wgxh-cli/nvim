call plug#begin('$HOME/.config/nvim/plugged/')
Plug 'editorconfig/editorconfig-vim'
Plug 'windwp/nvim-autopairs'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'RRethy/vim-illuminate'

Plug 'eddyekofo94/gruvbox-flat.nvim'
Plug 'Th3Whit3Wolf/space-nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'Mofiqul/vscode.nvim'
Plug 'olimorris/onedarkpro.nvim'
Plug 'NTBBloodbath/doom-one.nvim'

Plug 'nvim-treesitter/nvim-treesitter'
Plug 'p00f/nvim-ts-rainbow'
Plug 'windwp/nvim-ts-autotag'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'folke/which-key.nvim'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'projekt0n/circles.nvim'
Plug 'onsails/lspkind-nvim'
Plug 'kyazdani42/nvim-tree.lua'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'akinsho/bufferline.nvim'

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/lsp-status.nvim'
Plug 'folke/trouble.nvim'
Plug 'williamboman/nvim-lsp-installer'
Plug 'rinx/lspsaga.nvim'

Plug 'ms-jpq/coq_nvim'
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
"Plug 'hrsh7th/cmp-nvim-lsp'
"Plug 'hrsh7th/cmp-buffer'
"Plug 'hrsh7th/cmp-path'
"Plug 'hrsh7th/cmp-cmdline'
"Plug 'hrsh7th/nvim-cmp'
"Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }
Plug 'ray-x/lsp_signature.nvim'
"Plug 'dcampos/cmp-snippy'
"Plug 'dcampos/nvim-snippy'
"Plug 'honza/vim-snippets'

Plug 'mhinz/vim-startify'

Plug 'ggandor/lightspeed.nvim'
Plug 'ahmedkhalf/project.nvim'
Plug 'voldikss/vim-floaterm'
Plug 'kevinhwang91/nvim-bqf'
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
call plug#end()
