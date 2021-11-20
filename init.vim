call plug#begin('$HOME/.config/nvim/plugged/')
Plug 'editorconfig/editorconfig-vim'
Plug 'windwp/nvim-autopairs'

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
Plug 'kyazdani42/nvim-tree.lua'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'

Plug 'akinsho/bufferline.nvim'

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/lsp-status.nvim'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }

Plug 'mhinz/vim-startify'

Plug 'ggandor/lightspeed.nvim'
call plug#end()
