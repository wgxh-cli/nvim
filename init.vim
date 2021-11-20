call plug#begin('$HOME/.config/nvim/plugged/')
Plug 'editorconfig/editorconfig-vim'
Plug 'windwp/nvim-autopairs'
Plug 'lukas-reineke/indent-blankline.nvim'

Plug 'theniceboy/nvim-deus'
Plug 'eddyekofo94/gruvbox-flat.nvim'

Plug 'nvim-treesitter/nvim-treesitter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'folke/which-key.nvim'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'projekt0n/circles.nvim'
Plug 'onsails/lspkind-nvim'
Plug 'kyazdani42/nvim-tree.lua'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'

Plug 'akinsho/bufferline.nvim'

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/lsp-status.nvim'
Plug 'folke/trouble.nvim'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }
Plug 'ray-x/lsp_signature.nvim'
Plug 'glepnir/lspsaga.nvim'
Plug 'dcampos/cmp-snippy'
Plug 'dcampos/nvim-snippy'
Plug 'honza/vim-snippets'

Plug 'mhinz/vim-startify'

Plug 'ggandor/lightspeed.nvim'
Plug 'ahmedkhalf/project.nvim'
call plug#end()
