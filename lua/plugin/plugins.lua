local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  execute'packadd packer.nvim'
end

return require('packer').startup({
  function()
    -- Self management.
    use 'wbthomason/packer.nvim'

    -- completion.
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'ray-x/lsp_signature.nvim'
    use 'folke/trouble.nvim'
    use 'gfanto/fzf-lsp.nvim'
    use 'liuchengxu/vista.vim'

    -- tools
    use 'tpope/vim-surround'
    use 'tpope/vim-commentary'
    use 'kyazdani42/nvim-web-devicons'
    use { 'iamcco/markdown-preview.nvim', run = 'cd app && yarn install' }
    use { 'junegunn/fzf', run = './install'  }
    use 'junegunn/fzf.vim'
    use 'kyazdani42/nvim-tree.lua'
    use 'folke/which-key.nvim'
    use 'ggandor/lightspeed.nvim'

    -- syntax
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'windwp/nvim-autopairs'
    use 'gpanders/editorconfig.nvim'

    -- beautify
    use 'Mofiqul/vscode.nvim'
    use 'akinsho/bufferline.nvim'
    use 'folke/lsp-colors.nvim'
    use 'theniceboy/eleline.vim'
    use 'ojroques/vim-scrollstatus'
  end, config = {
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'single' })
      end
    }
  }
})
